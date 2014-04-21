package multiplexonline

import java.awt.FlowLayout;
import java.util.Map;

import multiplexonline.PublishData

class PublishController {

    def index() { 
		redirect(action: "publishVideo")
	}
	
//	PublishData getPublistDateFromParams(Map params) {
//		PublishData pd = new PublishData();
//		return pd.initializeWithParams(params)
//	}
	
	def publishVideoFlow = {
		
			initialize {
				action {
					flow.movieInstance = new Movie()
					flow.songInstance = new Song()
					flow.movieClipInstance = new MovieClip()
					flow.moviePromotionInstance = new MoviePromotion()
					flow.mediaRight = new MediaRight()
					flow.video = new Video()
				 }
				 on("success").to "selectMovie"
			}
			
			selectMovie {
				on("Continue").to "validateSelectMovie"
			}
			
			validateSelectMovie {
				
				action {
					println("validateSelectMovie")
					println(params)
					String videoType = params.videoType
					Movie movie = Movie.findByTitle(params.media)
					flow.movieInstance = movie
					flow.videoType = videoType
					if (!(movie.title == null) && !("".equals(movie.title))) {
						if (videoType.equals("Movie")) Movie()
						else if (videoType.equals("Song")) Song()
						else if (videoType.equals("Movie Clip")) MovieClip()
						else if (videoType.equals("Movie Promotion")) MoviePromotion()
						else Movie()
					}
					else Back()
				}
				on("Movie") {
					flow.mediaInstance = flow.movieInstance
				}.to "configureVideo"
				on("Song") {
					flow.mediaInstance = flow.songInstance
				}.to "mediaDetails"
				on("MovieClip"){
					flow.mediaInstance = flow.movieClipInstance
				}.to "mediaDetails"
				on("MoviePromotion"){
					flow.mediaInstance = flow.moviePromotionInstance
				}.to "mediaDetails"
				on("Back").to "selectMovie"
			}
			
			configureVideo {
				on("Save").to "saveVideo"
				on("Back").to "selectMovie"
			}
			
			mediaDetails {
				on("Select").to "mediaSelect"
				on("Create").to "mediaSave"
				on("Back").to "selectMovie"
			}
			
			mediaSave {
				action {
					String videoType = params.videoType
					if ("Song".equals(videoType)) {
						Song song = new Song(params)
						Song found = Song.findByTitle(song.title)
						if (found != null) {
							song = found
						} else {
							Movie movie = flow.movieInstance;
							song.movie = movie
							song.language = movie.language
							song.validate()
							movie.addToSongs(song)
							song.save(failOnError:true)
							movie.save flush:true
							flow.movieInstance = movie
						}
						flow.mediaInstance = song
					} else if ("Movie Clip".equals(videoType)) {
						MovieClip mClip = new MovieClip(params)
						MovieClip found = MovieClip.findByTitle(mClip.title)
						if (found != null) {
							mClip = found
						} else {
							Movie movie = flow.movieInstance;
							mClip.movie = movie
							mClip.language = movie.language
							mClip.validate()
							mClip.save(failOnError:true)
							movie.addToMovieClips(mClip)
							movie.save flush:true
							flow.movieInstance = movie
							flow.mediaClip = mClip
						}
						flow.mediaInstance = mClip
						
					} else if ("Movie Promotion".equals(videoType)) {
						MoviePromotion mPromo = new MoviePromotion(params)
						MoviePromotion found = MoviePromotion.findByTitle(mPromo.title)
						if (found != null) {
							mPromo = found
						} else {
							Movie movie = flow.movieInstance;
							mPromo.movie = movie
							mPromo.language = movie.language
							mPromo.validate()
							mPromo.save(failOnError:true)
							movie.addToMoviePromotions(mPromo)
							movie.save flush:true
							flow.movieInstance = movie
							flow.moviePromotionInstance = mPromo
						}
						flow.mediaInstance = mPromo
					}
				}
				on("error").to "mediaDetails"
				on(Exception).to "mediaDetails"
				on("success").to "configureVideo"
			}
			
			mediaSelect {
				action {
					println("Select media is : " + params.mediaSelect)
					if (params.mediaSelect != null) {
						flow.mediaInstance =  Media.get(new Integer(params.mediaSelect).intValue())
					}
				}
				on("success").to "configureVideo"
			}
			
			videoDetails {
				on("Save").to "saveVideo"
				on("Back").to "selectMovie"
			}
			
			saveVideo {
				action {
					PublishData publishData = flow.publishData
					Movie movie = flow.movieInstance
					MediaRight mediaRight = new MediaRight(params)
					Video video = new Video(params)
					Media media = flow.mediaInstance
					mediaRight.media = media
					mediaRight.video = video
					video.mediaRight = mediaRight
					video.validate()
					mediaRight.validate()
					media.save()
					flow.mediaRihgt = mediaRight
					flow.video = video
					if (video.getErrors().hasErrors() || mediaRight.getErrors().hasErrors() ) error()
					mediaRight.save flush:true
				}
				on("error").to "configureVideo"
				on(Exception).to "configureVideo"
				on("success").to "successful"
			}
			
			successful()
	}
	
	
	
}

package org.schema

import java.awt.FlowLayout;
import java.util.Map;

import multiplexonline.PublishData

class MOPublishController {

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
					flow.SOMovieInstance = new SOMovie()
					flow.MOSongInstance = new MOSong()
					flow.MOMovieClipInstance = new MOMovieClip()
					flow.MOMoviePromotionInstance = new MOMoviePromotion()
					flow.videoObjectInstance = new VideoObject()
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
					SOMovie movie = SOMovie.findByName(params.movie)
					flow.SOMovieInstance = movie
					flow.videoType = videoType
					flow.videoObjectInstance.creativeWork = movie
					if (!(movie.name == null) && !("".equals(movie.name))) {
						if (videoType.equals("Movie")) Movie()
						else if (videoType.equals("Song")) Song()
						else if (videoType.equals("Movie Clip")) MovieClip()
						else if (videoType.equals("Movie Promotion")) MoviePromotion()
						else Movie()
					}
					else Back()
				}
				on("Movie") {
					flow.mediaInstance = flow.SOMovieInstance
				}.to "configureVideo"
				on("Song") {
					flow.mediaInstance = flow.MOSongInstance
					flow.MOSongInstance.movie = flow.SOMovieInstance
				}.to "mediaDetails"
				on("MovieClip"){
					flow.mediaInstance = flow.MOMovieClipInstance
					flow.MOMovieClipInstance.movie = flow.SOMovieInstance
				}.to "mediaDetails"
				on("MoviePromotion"){
					flow.mediaInstance = flow.MOMoviePromotionlipInstance
					flow.MOMoviePromotionInstance.movie = flow.SOMovieInstance
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
					SOMovie movie = flow.SOMovieInstance;
					if ("Song".equals(videoType)) {
						flow.MOSongInstance.properties = params
						flow.MOSongInstance.timeRequiredText = params.timeRequiredText
						MOSong found = MOSong.findByNameAndMovie(flow.MOSongInstance.name, movie)
						if (found != null) {
							flow.MOSongInstance = found
						} else {
							flow.MOSongInstance.movie = movie
							flow.MOSongInstance.inLanguage = movie.inLanguage
							movie.addToSongs(flow.MOSongInstance)
							flow.MOSongInstance.validate()
							flow.MOSongInstance.save(failOnError:true)
							movie.save flush:true
							//flow.movieInstance = movie
						}
						flow.mediaInstance = flow.MOSongInstance
						flow.videoObjectInstance.creativeWork = flow.MOSongInstance
					} else if ("Movie Clip".equals(videoType)) {
						flow.MOMovieClipInstance.properties = params
						MOMovieClip found = MOMovieClip.findByNameAndMovie(flow.MOMovieClipInstance.name, movie)
						if (found != null) {
							flow.MOMovieClipInstance = found
						} else {
							flow.MOMovieClipInstance.movie = movie
							flow.MOMovieClipInstance.inLanguage = movie.inLanguage
							movie.addToMovieClips(flow.MOMovieClipInstance)
							flow.MOMovieClipInstance.validate()
							flow.MOMovieClipInstance.save(failOnError:true)
							movie.save flush:true
							//flow.movieInstance = movie
						}
						flow.mediaInstance = flow.MOMovieClipInstance
						flow.videoObjectInstance.creativeWork = flow.MOMovieClipInstance
					} else if ("Movie Promotion".equals(videoType)) {
						flow.MOMoviePromotionInstance.properties = params
						MOMoviePromotion found = MOMoviePromotion.findByNameAndMovie(flow.MOMoviePromotionInstance.name, movie)
						if (found != null) {
							flow.MOMoviePromotionInstance = found
						} else {
							flow.MOMoviePromotionInstance.movie = movie
							flow.MOMoviePromotionInstance.inLanguage = movie.inLanguage
							movie.addToPromotions(flow.MOMoviePromotionInstance)
							flow.MOMoviePromotionInstance.validate()
							flow.MOMoviePromotionInstance.save(failOnError:true)
							movie.save flush:true
							//flow.movieInstance = movie
						}
						flow.mediaInstance = flow.MOMoviePromotionInstance
						flow.videoObjectInstance.creativeWork = flow.MOMoviePromotionInstance
					} else error()
				}
				on("error").to "mediaDetails"
				on(Exception).to "mediaDetails"
				on("success").to "configureVideo"
			}
			
			mediaSelect {
				action {
					println("Select media is : " + params.mediaSelect)
					if (params.mediaSelect != null) {
						flow.mediaInstance =  CreativeWork.get(new Integer(params.mediaSelect).intValue())
						flow.videoObjectInstance.creativeWork = flow.mediaInstance
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
					SOMovie movie = flow.SOMovieInstance
					flow.videoObjectInstance.properties = params
					flow.videoObjectInstance.validate()
					flow.videoObjectInstance.save(failOnError:true) 
					flush:true
				}
				on("error").to "configureVideo"
				on(Exception).to "configureVideo"
				on("success").to "successful"
			}
			
			successful()
	}
	
	
	
}

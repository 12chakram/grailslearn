import multiplexonline.Company
import multiplexonline.Genre
import multiplexonline.MediaRole
import multiplexonline.MediaType
import multiplexonline.Movie
import multiplexonline.MovieData
import multiplexonline.MovieDataLoader
import multiplexonline.MpoRole
import multiplexonline.MpoUser
import multiplexonline.MpoUserRole
import multiplexonline.Person
import multiplexonline.User

class BootStrap {
	
	def springSecurityService

    def init = { servletContext ->
		// Load movies from IMDB database.
		int movieCount;
		if (Movie.count() == 0) {
			ArrayList<MovieData> movies = MovieDataLoader.loadMovieData("")
			/*
			 * Create lookup objects like MediaType
			 */
			MediaType mtMovie = MediaType.findByType('Movie');
			if (mtMovie== null) mtMovie = new MediaType(type: 'Movie').save(failOnError: true)
			
			MediaType mtSong = MediaType.findByType('Song');
			if (mtSong== null) mtSong = new MediaType(type: 'Song').save(failOnError: true)
			
			MediaType mtMovieClip = MediaType.findByType('MovieClip');
			if (mtMovieClip== null) mtMovieClip = new MediaType(type: 'MovieClip').save(failOnError: true)
	
			for( m in movies){
				println String.format("%4s %s", movieCount++, m.title)
				Movie movie = new Movie(title: m.title, 
										releaseDate: m.indiaReleaseDate, 
										releaseYear: m.releaseYear,
										tagLine: m.tagLine,
										language: m.language,
										mediaKind: "Movie", // TODO: Add this to Movie Class with an Override
										mediaType: mtMovie,
										runningTime: m.runningTime
										).save(failOnError:true)
				// Set the genres
				for(g in m.genres) {
					Genre genre = Genre.findByGenre(g)
					if (genre == null) genre = new Genre(genre:g).save(failOnError: true)
					movie.addToGenres(genre)
				}
				movie.save(failOnError:true)
				//Set the Director
				if (m.director != null) {
//					println("Director: " + m.director)
					Person p = Person.findByImdbName(m.director)
					if (p == null) p = new Person(imdbName:m.director).save(failOnError:true)
					MediaRole role = MediaRole.findByRoleAndPerson("Director", p)
					if (role == null) role = new MediaRole(role:"Director", person:p).save(failOnError: true)
					movie.addToMediaRoles(role).save(failOnError:true)
				}
				// Set Actors
				for (ac in m.actors) {
//					println("Actor: " + ac)
					Person p = Person.findByImdbName(ac)
					if (p == null) p = new Person(imdbName:ac).save(failOnError:true)
					MediaRole role = MediaRole.findByRoleAndPerson("Actor", p)
					if (role == null) role = new MediaRole(role:"Actor", person:p).save(failOnError: true)
					movie.addToMediaRoles(role).save(failOnError:true)
				}
				
				// Set Actresses
				for (ac in m.actresses) {
//					println("Actor: " + ac)
					Person p = Person.findByImdbName(ac)
					if (p == null) p = new Person(imdbName:ac).save(failOnError:true)
					MediaRole role = MediaRole.findByRoleAndPerson("Actress", p)
					if (role == null) role = new MediaRole(role:"Actress", person:p).save(failOnError: true)
					movie.addToMediaRoles(role).save(failOnError:true)
				}
				
				// Set Producers
				for (prod in m.producers) {
//					println("Producer: " + prod)
					Person p = Person.findByImdbName(prod)
					if (p == null) p = new Person(imdbName:prod).save(failOnError:true)
					MediaRole role = MediaRole.findByRoleAndPerson("Producer", p)
					if (role == null) role = new MediaRole(role:"Producer", person:p).save(failOnError: true)
					movie.addToMediaRoles(role).save(failOnError:true)
				}
				
				// Set the Production Companies.
				for (pc in m.productionCompanies) {
					Company c = Company.findByCompanyName(pc)
					if (c == null) c = new Company(companyName:pc).save(failOnError:true)
					MediaRole role = MediaRole.findByRoleAndCompany("Production", c)
					if (role == null) role = new MediaRole(role:"Production", company:c).save(failOnError: true)
					movie.addToMediaRoles(role).save(failOnError:true)
				}
			}
		}
		
		// create MpoRoles into Db
		
		def adminRole  = MpoRole.findByAuthority("ROLE_ADMIN")?: new MpoRole(authority:"ROLE_ADMIN").save()
		def publisherAdminRole  = MpoRole.findByAuthority("ROLE_PUBLISHER_ADMIN")?: new MpoRole(authority:"ROLE_PUBLISHER_ADMIN").save()
		def publisheruserRole  = MpoRole.findByAuthority("ROLE_PUBLISHER_USER")?: new MpoRole(authority:"ROLE_PUBLISHER_USER").save()
		def enduserRole  = MpoRole.findByAuthority("ROLE_END_USER")?: new MpoRole(authority:"ROLE_END_USER").save()
		//def facebookuserRole  = MpoRole.findByAuthority("ROLE_FACEBOOK")?: new MpoRole(authority:"ROLE_FACEBOOK").save()
		
		
	
		def users = MpoUser.list()?:[]
		if(!users){

			def mpoAdminUser = User.findByUsername('mpoadmin') ?: new User(
					username: 'mpoadmin',
					password: 'mpoadmin',
					fullName : 'mpoadmin',
					email : 'kumarvayyala@outlook.com',
					mobile:'9849889255',
					gender :'male',
					dob : new Date(),
					enabled: true,
					fbid:0).save(failOnError: true)

			def mpoPublisherAdminUser = User.findByUsername('mpopublisheradmin') ?: new User(
					username: 'mpopublisheradmin',
					password: 'mpopublisheradmin',  //pw encoded by security plugin
					fullName : 'mpopublisheradmin',
					email : 'kumarvayyala@outlook.com',
					mobile:'9849889255',
					gender :'male',
					dob : new Date(),
					enabled: true,
					fbid:1).save(failOnError: true)

			def mpoPublisherUser = User.findByUsername('mpopublisheruser') ?: new User(
					username: 'mpopublisheruser',
					password: 'mpopublisheruser',
					fullName : 'mpopublisheruser',
					email : 'kumarvayyala@outlook.com',
					mobile:'9849889255',
					gender :'male',
					dob : new Date(),
					enabled: true,
					fbid:2).save(failOnError: true)

			def mpoEndUser = User.findByUsername('mpoenduser') ?: new User(
					username: 'mpoenduser',
					password: 'mpoenduser',
					fullName : 'mpoenduser',
					email : 'kumarvayyala@outlook.com',
					mobile:'9849889255',
					gender :'male',
					dob : new Date(),
					enabled: true,
					fbid:3).save(failOnError: true)


			if (!mpoAdminUser.authorities.contains(adminRole)) {
				MpoUserRole.create mpoAdminUser, adminRole
			}
			if (!mpoPublisherAdminUser.authorities.contains(publisherAdminRole)) {
				MpoUserRole.create mpoPublisherAdminUser, publisherAdminRole
			}

			if (!mpoPublisherUser.authorities.contains(publisheruserRole)) {
				MpoUserRole.create mpoPublisherUser, publisheruserRole
			}

			if (!mpoEndUser.authorities.contains(enduserRole)) {
				MpoUserRole.create mpoEndUser, enduserRole
			}

		}
		
	}
    def destroy = {
    }
}

class UrlMappings {

	static mappings = {
		
//		"/portal/$controller/$action?/$id?(.$format)?"{
//			constraints {
//				// apply constraints here
//			}
//		}
		"/$controller/$action?/$id?(.$format)?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
		
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
	}
	
//	static mappings = {
//		
//        "/portal/$controller/$action?/$id?(.$format)?"{
//            constraints {
//                // apply constraints here
//            }
//        }
//		
//		"/portal/movie/show?/$id?(.$format)?"(controller:'movie', action:'show')
//		"/$controller/$sanitizedTitle"(action:'show')
//
//        "/"(view:"/index")
//        "500"(view:'/error')
//		
//		"/login/$action?"(controller: "login")
//		"/logout/$action?"(controller: "logout")
//	}
	
//	static mappings = {
//		
//		
//		"/home	"(controller: "home", action: "index")
//		"/portal/$controller/$action?/$id?(.$format)?"{
//			constraints {
//				// apply constraints here
//			}
//		}
//		
//		"/portal/movie/show?/$id?(.$format)?"(controller:'movie', action:'show')
//		"/$controller/$sanitizedTitle"(action:'showDetail')
//
//		"/"(view:"/index")
//		"500"(view:'/error')
//		
//		"/login/$action?"(controller: "login")
//		"/logout/$action?"(controller: "logout")
//	}
}

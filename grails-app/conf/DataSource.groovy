dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
	//username = "mylearn"
    //password = "mylearn"
	
	username = "grailslearn"
	password = "grailslearn"
	
	
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = 'update' // one of 'create', 'create-drop', 'update', 'validate', ''
            //url = "jdbc:mysql://localhost/learn"
			url = "jdbc:mysql://ec2-23-21-211-172.compute-1.amazonaws.com/easyEmp"
        }
    }
    test {
        dataSource {
            dbCreate = ''
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            dbCreate = ''
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}

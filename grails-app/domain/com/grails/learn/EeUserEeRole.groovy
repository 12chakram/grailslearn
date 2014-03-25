package com.grails.learn

import org.apache.commons.lang.builder.HashCodeBuilder

class EeUserEeRole implements Serializable {

	private static final long serialVersionUID = 1

	EeUser eeUser
	EeRole eeRole

	boolean equals(other) {
		if (!(other instanceof EeUserEeRole)) {
			return false
		}

		other.eeUser?.id == eeUser?.id &&
			other.eeRole?.id == eeRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (eeUser) builder.append(eeUser.id)
		if (eeRole) builder.append(eeRole.id)
		builder.toHashCode()
	}

	static EeUserEeRole get(long eeUserId, long eeRoleId) {
		EeUserEeRole.where {
			eeUser == EeUser.load(eeUserId) &&
			eeRole == EeRole.load(eeRoleId)
		}.get()
	}

	static EeUserEeRole create(EeUser eeUser, EeRole eeRole, boolean flush = false) {
		new EeUserEeRole(eeUser: eeUser, eeRole: eeRole).save(flush: flush, insert: true)
	}

	static boolean remove(EeUser u, EeRole r, boolean flush = false) {

		int rowCount = EeUserEeRole.where {
			eeUser == EeUser.load(u.id) &&
			eeRole == EeRole.load(r.id)
		}.deleteAll()

		rowCount > 0
	}

	static void removeAll(EeUser u) {
		EeUserEeRole.where {
			eeUser == EeUser.load(u.id)
		}.deleteAll()
	}

	static void removeAll(EeRole r) {
		EeUserEeRole.where {
			eeRole == EeRole.load(r.id)
		}.deleteAll()
	}

	static mapping = {
		id composite: ['eeRole', 'eeUser']
		version false
	}
}

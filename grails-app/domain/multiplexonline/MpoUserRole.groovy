package multiplexonline

import org.apache.commons.lang.builder.HashCodeBuilder

class MpoUserRole implements Serializable {

	private static final long serialVersionUID = 1

	MpoUser mpoUser
	MpoRole mpoRole

	boolean equals(other) {
		if (!(other instanceof MpoUserRole)) {
			return false
		}

		other.mpoUser?.id == mpoUser?.id &&
			other.mpoRole?.id == mpoRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (mpoUser) builder.append(mpoUser.id)
		if (mpoRole) builder.append(mpoRole.id)
		builder.toHashCode()
	}

	static MpoUserRole get(long mpoUserId, long mpoRoleId) {
		MpoUserRole.where {
			mpoUser == MpoUser.load(mpoUserId) &&
			mpoRole == MpoRole.load(mpoRoleId)
		}.get()
	}

	static MpoUserRole create(MpoUser mpoUser, MpoRole mpoRole, boolean flush = false) {
		new MpoUserRole(mpoUser: mpoUser, mpoRole: mpoRole).save(flush: flush, insert: true)
	}

	static boolean remove(MpoUser u, MpoRole r, boolean flush = false) {

		int rowCount = MpoUserRole.where {
			mpoUser == MpoUser.load(u.id) &&
			mpoRole == MpoRole.load(r.id)
		}.deleteAll()

		rowCount > 0
	}

	static void removeAll(MpoUser u) {
		MpoUserRole.where {
			mpoUser == MpoUser.load(u.id)
		}.deleteAll()
	}

	static void removeAll(MpoRole r) {
		MpoUserRole.where {
			mpoRole == MpoRole.load(r.id)
		}.deleteAll()
	}

	static mapping = {
		id composite: ['mpoRole', 'mpoUser']
		version false
	}
}

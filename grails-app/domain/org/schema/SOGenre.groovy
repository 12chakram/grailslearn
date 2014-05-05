package org.schema

class SOGenre implements Serializable {
	
	String genre

	static constraints = {
		genre unique: true
	}

	@Override
	public String toString() {
		return  genre;
	}
}

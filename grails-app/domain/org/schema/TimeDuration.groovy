package org.schema


// http://en.wikipedia.org/wiki/ISO_8601#Durations
//P3Y6M4DT12H30M5S
class TimeDuration {

	int hrs
	int mins
	int secs
	
    static constraints = {
    }
	
	@Override 
	public String toString()  {
		StringBuffer buffer = new StringBuffer();
		if (hrs+mins+secs > 0) buffer.append("T")
		if (!hrs) {
			buffer.append("H"+hrs)
		}
		if (!mins) {
			buffer.append("M"+mins)
		}
		if (!secs) {
			buffer.append("S"+secs)
		}
		return buffer.toString()
	}
}

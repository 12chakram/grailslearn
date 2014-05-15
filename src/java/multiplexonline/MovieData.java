package multiplexonline;


import java.util.ArrayList;
import java.util.Date;

public class MovieData {
	
	public String title = "";
	public int releaseYear = 1900;
	public String language = "";
	public String series = "";
	public Date usReleaseDate = null;
	public Date indiaReleaseDate = null;
	public int runningTime = 0;
	public String tagLine = "";
	public ArrayList<String> productionCompanies = new ArrayList<String>();
	public ArrayList<String> genres = new ArrayList<String>();
	public String director;
	public ArrayList<String> producers = new ArrayList<String>();
	public ArrayList<String> actors = new ArrayList<String>();
	public ArrayList<String> actresses = new ArrayList<String>();
	
	public String toString() {
		return String.format("title====%s::releaseYear====%s::language====%s::director====%s",title, releaseYear, language, director) + "::" + "series===="+series + "::" + String.format("releaseDate====%s::runningTime====%d::tagline====%s::prodcutionCompanies====%s::genres====%s::producers====%s::actors====%s::actresses====%s", indiaReleaseDate, runningTime, tagLine, productionCompanies,genres,producers, actors, actresses);
	}

}

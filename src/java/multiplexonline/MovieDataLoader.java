package multiplexonline;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
public class MovieDataLoader {
		
	public static HashMap<String, MovieData> moviesTelugu = new HashMap<String, MovieData>();
	public static HashMap<String, MovieData> moviesHindi = new HashMap<String, MovieData>();
	public static HashMap<String, MovieData> moviesTamil = new HashMap<String, MovieData>();
	public static HashMap<String, MovieData> moviesKannada = new HashMap<String, MovieData>();
	public static HashMap<String, MovieData> moviesMalayalam = new HashMap<String, MovieData>();
	public static HashMap<String, MovieData> moviesAll = new HashMap<String, MovieData>();
	
	public static ArrayList<MovieData> movies = new ArrayList<MovieData>();
	
	public static SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
	
	public static void main(String [] args) throws Exception {
		System.out.println("Hello");
//		extractLanguageData("Telugu", moviesTelugu);
////		extractLanguageData("Hindi", moviesHindi);
//		extractLanguageData("Tamil", moviesTamil);
////		extractLanguageData("Kannada", moviesKannada);
////		extractLanguageData("Malayalam", moviesMalayalam);
//		System.out.print("All Movie Count " + moviesAll.size());
//		extractReleaseDates();
//		extractRunTime();
//		extractTagline();
//		extractProdutionCompanies();
//		extractGanres();
//		extractDirector();
//		extractProducers();
//		extractActors();
//		extractActresses();
		
		//extractMovieData();
		FileOutputStream fos = new FileOutputStream(new File("C:/Users/kumar.vayyala/git/learngrails-28_04/grailslearn/MovieDetails.list"));
		Iterator<Entry<String, MovieData>> iterator = moviesAll.entrySet().iterator();
		while(iterator.hasNext()) {
		   fos.write((iterator.next().getValue().toString() + "\n").getBytes());
		}
		fos.close();
	   
		loadMovieData("");
	}
	
	public static ArrayList<MovieData> loadMovieData(String fileName) throws Exception {
		System.out.println("Loading movie Data");
		ArrayList<MovieData> list = new ArrayList<MovieData>();
		File file = new File("C:/Users/kumar.vayyala/git/learngrails-28_04/grailslearn/MovieDetails.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		while ((line = br.readLine()) != null) {
			MovieData movie = new MovieData();
			String[] tokens = line.split("::");
			for (int i=0; i<tokens.length; i++) {
				String[] itok = tokens[i].split("====");
				String field = itok[0]; 
				String value = "";
				if (itok.length == 2) value = itok[1];
				if ("title".equals(field)) {
					movie.title = getFieldValue(value);
				} else if ("releaseYear".equals(field)) {
					movie.releaseYear = Integer.parseInt(value);
				} else if ("language".equals(field)) {
					movie.language = getFieldValue(value);
				} else if ("director".equals(field)) {
					movie.director = getNameValue(value);
				} else if ("series".equals(field)) {
					movie.series = getFieldValue(value);
				} else if ("releaseDate".equals(field)) {
					movie.indiaReleaseDate = getDateFromString(value);
				} else if ("tagline".equals(field)) {
					movie.tagLine = getFieldValue(value);
				} else if ("prodcutionCompanies".equals(field)) {
					movie.productionCompanies = extractList(value); 
				} else if ("genres".equals(field)) {
					movie.genres = extractList(value); 
				} else if ("producers".equals(field)) {
					movie.producers = extractNameList(value); 
				} else if ("actors".equals(field)) {
					movie.actors = extractNameList(value); 
				} else if ("actresses".equals(field)) {
					movie.actresses = extractNameList(value); 
				}
			}
			list.add(movie);
		}

		br.close();
		System.out.println("Loaded Movie Date : " + list.size());
		return list;
		
	}
	
	static String getFieldValue(String value) {
		if (null==value || "".equals(value) || "null".equals(value)) return null;
		else return value.trim();
	}
	
	static String getNameValue(String value) {
		if (null==value || "".equals(value) || "null".equals(value)) return null;
		String val = getFieldValue(value);
		if (!val.contains(":")) return val.replaceAll("[ ]*[\\.]+$","").trim();
		String[] tokens = val.split(":");
		return (tokens[1] + " " + tokens[0].replaceAll("[ ]*[\\.]*$","").trim()).replaceAll("[ ]*[\\.]*$","").trim();
	}
	
	static ArrayList<String> extractList(String value) {
		if (null==value || "".equals(value) || "null".equals(value) || "[]".equals(value)) return new ArrayList<String>();
		String v = value.substring(1, value.length() -1);
		return new ArrayList<String>(Arrays.asList(v.split(", ")));
	}
	
	static ArrayList<String> extractNameList(String value) {
		if (null==value || "".equals(value) || "null".equals(value) || "[]".equals(value)) return new ArrayList<String>();
		String v = value.substring(1, value.length() -1);
		 
		ArrayList<String> list = new ArrayList<String>(Arrays.asList(v.split(",")));
		ArrayList<String> result = new ArrayList<String>();
		Iterator<String> it = list.iterator();
		while (it.hasNext()) {
			result.add(getNameValue(it.next()));
		}
		return result;
	}
	
	static SimpleDateFormat format = new SimpleDateFormat("EEE MMM d HH:mm:ss z yyyy");
	//Sun Jan 01 00:00:00 GMT+05:30 2006
	static private Date getDateFromString(String dateString) {
		Date result = null;
		if ("null".equals(dateString) || "".equals(dateString) || dateString == null) return null;
		try {
			result = format.parse(dateString);
		} catch (ParseException e) {
			System.out.println("Could not parse Date: " + dateString);
		}
		return result;
	}
	

/*	public static HashMap<String, MovieData>extractMovieData() throws Exception {
		extractLanguageData("Telugu", moviesTelugu);
//		extractLanguageData("Hindi", moviesHindi);
		extractLanguageData("Tamil", moviesTamil);
//		extractLanguageData("Kannada", moviesKannada);
//		extractLanguageData("Malayalam", moviesMalayalam);
//		System.out.print("All Movie Count " + moviesAll.size());
		extractReleaseDates();
		extractRunTime();
		extractTagline();
		extractProdutionCompanies();
		extractGanres();
		extractDirector();
		extractProducers();
		extractActors();
		extractActresses();
		return moviesAll;
	}

	static private void extractLanguageData(String language, HashMap<String, MovieData> movies) throws Exception {
		File file = new File("/Users/sai/software/imdb/language.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		
		while ((line = br.readLine()) != null) {
		   if (line.contains(language)) {
			   String[] tokens = line.replace("\"", "").split("[\\t]+");
			   if (!Character.isDigit(tokens[1].charAt(0))) tokens[1] = "1900";
			   MovieData movie = new MovieData();
			   movie.title = tokens[0].trim();
			   String[] yearTokens = movie.title.split("[()]");
			   if (yearTokens.length == 2) {
				   try {
					   String year = yearTokens[1].replace("????", "1900");
					   movie.releaseYear = Integer.parseInt(String.format("%4s",year.split("[/]")[0]));
				   } catch (Exception e) {
					   System.out.println("Release Year Format: " + line);
				   }
			   }
			   movie.language = language;
			   movies.put(movie.title, movie);
			   moviesAll.put(movie.title, movie);
		   }
		}
		System.out.println(language + " Movie Count " + movies.size());
		br.close();
		return;
	}


	static private HashMap<String, MovieData> extractReleaseDates() throws Exception {
		File file = new File("/Users/sai/software/imdb/release-dates.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		while ((line = br.readLine()) != null) {

		   if (line.length() > 0 
				   && line.contains("India:")) {

			   line = line.replace("\"", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length > 1) {
				   tokens[0] = tokens[0].trim();
				   MovieData movie = null;
				   String date = null;
				   if ((movie = moviesAll.get(tokens[0])) != null) {
					   date = "";
					   if (tokens[1].contains("India:")) {
						   foundCount++;
						   String[] dateTokens = tokens[1].split("India:")[1].split(" ");
						   if (dateTokens.length >=3) {
							   date = dateTokens[0] + " " + dateTokens[1] + " " + dateTokens[2];
						   } else if (dateTokens.length == 2) {
							   date = "01 " + dateTokens[0] + " " + dateTokens[1];
						   } else if (dateTokens.length == 1) {
							   date = "01 January " + dateTokens[0];
						   }
					   }
					   try {
						   movie.indiaReleaseDate = formatter.parse(date);
					   } catch (Exception e) {
						   System.out.println("Release Date Not Complete: " + date + " : " + line );
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount );
		return moviesAll;
	}
	
	static private HashMap<String, MovieData> extractRunTime() throws Exception {
		File file = new File("/Users/sai/software/imdb/running-times.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0) {
			   // System.out.println(line);
			   line = line.replace("\"", "").replace("India:", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length > 1) {
				   MovieData movie = null;
				   if ((movie = moviesAll.get(tokens[0].trim())) != null) {
					   if (tokens[1].contains(":")) {
						   tokens[1] = tokens[1].trim().split(":")[1];				   
					   } else {
						   tokens[1] = tokens[1].trim();
					   }
					   foundCount++;
					   String runningTime = tokens[1];
					   if (runningTime.trim() != "" && runningTime.matches("[0-9]+")) {
						   try {
							   movie.runningTime = new Integer(tokens[1]);
						   } catch (Exception e) {
							   System.out.println("Improper running time: " + line);
						   }
					   } else {
						   System.out.println("Runnign time does not match: " + line);
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount );
		return moviesAll;
	}
	
	private static void extractTagline() throws Exception{
		File file = new File("/Users/sai/software/imdb/taglines.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0 && line.startsWith("#")) {
			   line = line.replace("\"", "").replace("#", "").trim();
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length == 1) {
				   MovieData movie = null;
				   if ((movie = moviesAll.get(tokens[0].trim())) != null) {
					   foundCount++;
					   movie.tagLine =  br.readLine().trim();
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount );
		return;	
	}
	
	private static void extractProdutionCompanies() throws Exception {
		System.out.println("PRODUCTION COMPANIES START");
		File file = new File("/Users/sai/software/imdb/production-companies.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0 && line.contains("[in]")) {
			   line = line.replace("\"", "").replace("[in]", "").replace("(TV)", "").replace("(V)", "").replace("{{SUSPENDED}}", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length == 2) {
				   MovieData movie = null;
				   if ((movie = moviesAll.get(tokens[0].trim())) != null) {
					   if (movie.productionCompanies.size() == 0) foundCount++;
					   String company = tokens[1].trim();
					   if (!"".equals(company) && !movie.productionCompanies.contains(company)) {
						   movie.productionCompanies.add(company);
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount );
		System.out.println("PRODUCTION COMPANIES END");
		return;	
	}
	
	private static void extractGanres() throws Exception {
		System.out.println("GENRE START");
		File file = new File("/Users/sai/software/imdb/genres.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0) {
			   line = line.replace("\"", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length == 2) {
				   MovieData movie = null;
				   if ((movie = moviesAll.get(tokens[0].trim())) != null) {
					   if (movie.genres.size() == 0) foundCount++;
					   String genre = tokens[1].trim();
					   if (genre.length() > 0 && !movie.genres.contains(genre)) {
						   movie.genres.add(tokens[1].trim());
					   }
				   }
			   } else {
				   System.out.println("imporper genre: " + line);
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount );
		System.out.println("GENRE END");
		return;	
	}
	
	private static void extractDirector() throws Exception {
		System.out.println("DIRECTORS START");
		File file = new File("/Users/sai/software/imdb/directors.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		String director = "";
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0) {
			   line = line.replace("\"", "").trim();
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length > 1) {
				   if (!"".equals(tokens[0])) {
					   director = tokens[0].trim().replace(',', ':');
				   }
				   for(int i= 1; i < tokens.length; i++) {
					   if ("".equals(tokens[i])) continue;
					   String title = tokens[i].trim();
					   MovieData movie = null;
					   if ((movie = moviesAll.get(title)) != null) {
						   movie.director = director;
						   foundCount++;
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount + " " + moviesAll.size() );
		System.out.println("DIRECTORS END");
		return;	
	}

	private static void extractProducers() throws Exception {
		System.out.println("PRODUCERS START");
		File file = new File("/Users/sai/software/imdb/producers.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		String producer = "";
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0) {
			   line = line.replace("\"", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length > 1) {
				   if (!"".equals(tokens[0])) {
					   producer = tokens[0].trim().replace(',', ':');
				   }
				   for(int i= 1; i < tokens.length; i++) {
					   if ("".equals(tokens[i])) continue;
					   String title = tokens[i].trim().split("[ ]+\\([a-z ]+\\)")[0];
					   MovieData movie = null;
					   if ((movie = moviesAll.get(title)) != null) {
						   if (!movie.producers.contains(producer)) {
							   movie.producers.add(producer);
							   foundCount++;
						   }
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount + " " + moviesAll.size() );
		System.out.println("PRODUCERS END");
		return;	
	}
	
	private static void extractActors() throws Exception {
		System.out.println("ACTORS START");
		File file = new File("/Users/sai/software/imdb/actors.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		String actor = "";
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0) {
			   line = line.replace("\"", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length > 1) {
				   if (!"".equals(tokens[0])) {
					   actor = tokens[0].trim().replace(',', ':').replace("\'", "");
				   }
				   for(int i= 1; i < tokens.length; i++) {
					   if ("".equals(tokens[i])) continue;
					   String title = tokens[i].split("[)]")[0].trim()+")";
					   MovieData movie = null;
					   if ((movie = moviesAll.get(title)) != null) {
						   if (!movie.actors.contains(actor)) { 
							   movie.actors.add(actor);
							   foundCount++;
						   }
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount + " " + moviesAll.size() );
		System.out.println("ACTORS START");
		return;	
	}
	
	private static void extractActresses() throws Exception {
		System.out.println("ACTRESSES START");
		File file = new File("/Users/sai/software/imdb/actresses.list");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String line;
		int foundCount = 0;
		
		String actress = "";
		while ((line = br.readLine()) != null) {
		   if (line.length() > 0) {
			   line = line.replace("\"", "");
			   String[] tokens = line.split("[\\t]+");
			   if (tokens.length > 1) {
				   if (!"".equals(tokens[0])) {
					   actress = tokens[0].trim().replace(',', ':');
				   }
				   for(int i= 1; i < tokens.length; i++) {
					   if ("".equals(tokens[i])) continue;
					   String title = tokens[i].split("[)]")[0].trim()+")";
					   MovieData movie = null;
					   if ((movie = moviesAll.get(title)) != null) {
						   if (!movie.actresses.contains(actress)) {
							   movie.actresses.add(actress);
							   foundCount++;
						   }
					   }
				   }
			   }
		   }
		}
		br.close();
		System.out.println("No of Movies found = " + foundCount + " " + moviesAll.size() );
		System.out.println("ACTRESSES END");
		return;	
	}*/
}




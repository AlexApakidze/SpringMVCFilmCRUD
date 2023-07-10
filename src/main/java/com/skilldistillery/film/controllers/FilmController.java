package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;

	@RequestMapping(path = { "/", "home.do" })
	public ModelAndView goHome() {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
		return mv;
	}

	@RequestMapping(path = "showFilmById.do")
	public ModelAndView showFilmById(Integer filmId) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
		Film film = filmDao.findFilmById(filmId);

		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "showFilmsBySearchTerm.do")
	public ModelAndView showFilmBySearchTerm(@RequestParam(name = "keyword") String searchTerm) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/displayFilm.jsp");
		List<Film> film = filmDao.findFilmsByKeyword(searchTerm);

//		for (Film film : films) {
//			System.out.println(film);
//		}
		mv.addObject("film", film);
		return mv;

	}

	@RequestMapping(path = "createFilm.do")
	public ModelAndView createFilm(@RequestParam(name = "title") String title,
			@RequestParam(name = "description") String desc) throws SQLException {

		ModelAndView mv = new ModelAndView("WEB-INF/addFilmSuccess.jsp");
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(desc);
		
		try {
			filmDao.createFilm(film);
		} catch (Exception e) {
			System.err.println("*************** Failed to add film");
		}
		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "displayFilm.do")
	public ModelAndView displayFilm(@RequestParam(name = "filmId") int filmId) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/film.jsp");
		Film film = filmDao.findFilmById(filmId);
		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "editFilm.do")
	public ModelAndView editFilm(@RequestParam(name = "filmId") int filmId, 
			@RequestParam(name = "title") String title,
			@RequestParam(name = "description") String description,
			@RequestParam(name = "releaseYear") short releaseYear,
			@RequestParam(name = "languageId") int languageId,
			@RequestParam(name = "rentalDuration") int rentalDuration,
			@RequestParam(name = "rentalRate") double rentalRate, 
			@RequestParam(name = "length") int length,
			@RequestParam(name = "replacementCost") double replacementCost, 
			@RequestParam(name = "rating") String Rating,
			@RequestParam(name = "specialFeatures") String specialFeatures) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
		Film editedFilm = filmDao.findFilmById(filmId);
		editedFilm.setTitle(title);
		editedFilm.setDescription(description);
		editedFilm.setReleaseYear(releaseYear);
		editedFilm.setLanguageId(languageId);
		editedFilm.setRentalDuration(rentalDuration);
		editedFilm.setRentalRate(rentalRate);;
		editedFilm.setLength(length);
		editedFilm.setReplacementCost(replacementCost);
		editedFilm.setRating(Rating);
		editedFilm.setSpecialFeatures(specialFeatures);		
		mv.addObject("film", editedFilm);
		
		return mv;
	}
	@RequestMapping(path = "deleteFilm.do")
	public ModelAndView deleteFilm(@RequestParam(name = "filmId") int filmId) throws SQLException {

		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
	
		try {
			filmDao.deleteFilm(filmId);
			System.out.println("film id in controller "+filmId);
		} catch (Exception e) {
			System.err.println("*************** Failed to add film");
		}
		
		return mv;
	}


}
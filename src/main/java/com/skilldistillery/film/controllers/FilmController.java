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
	public ModelAndView showFilm(Integer filmId) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
		Film film = filmDao.findFilmById(filmId);

		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "showFilmsBySearchTerm.do")
	public ModelAndView showFilm(@RequestParam(name = "keyword") String searchTerm) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/displayFilm.jsp");
		List<Film> film = filmDao.findFilmsByKeyword(searchTerm);

//		for (Film film : films) {
//			System.out.println(film);
//		}
		mv.addObject("film", film);
		return mv;

	}

	@RequestMapping(path = "addFilm.do")
	public ModelAndView addFilm(@RequestParam(name = "title") String title,
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
		ModelAndView mv = new ModelAndView("film.jsp");
		Film film = filmDao.findFilmById(filmId);
		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do")
	public ModelAndView deleteFilm(@RequestParam(name = "filmId") int filmId) throws SQLException {
		ModelAndView mv = new ModelAndView("film.jsp");
		filmDao.deleteFilm(filmDao.findFilmById(filmId));
		return mv;
	}

	@RequestMapping(path = "editFilm.do")
	public ModelAndView editFilm(@RequestParam(name = "filmId") int filmId, @RequestParam(name = "title") String title,
			@RequestParam(name = "description") String description, @RequestParam(name = "releaseYear") int releaseYear,
			@RequestParam(name = "languageId") int languageId,
			@RequestParam(name = "rentalDuration") int rentalDuration,
			@RequestParam(name = "rentalRate") int rentalRate, @RequestParam(name = "length") int length,
			@RequestParam(name = "replacementCost") int replacementCost, @RequestParam(name = "rating") String Rating,
			@RequestParam(name = "specialFeatures") String specialFeatures) throws SQLException {
		ModelAndView mv = new ModelAndView("film.jsp");
		filmDao.deleteFilm(filmDao.findFilmById(filmId));
		return mv;
	}

}

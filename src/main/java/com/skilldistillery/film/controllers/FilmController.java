package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping(path = "showFilm.do")
	public ModelAndView showFilm(Integer filmId) throws SQLException {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
		System.out.println("+++++++++++++ FilmId: " + filmId);
		Film film = filmDao.findFilmById(filmId);
		System.out.println("+++++++++++++ Film: " + film);

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

		// some comment here
	}
}

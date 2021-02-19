package com.orange.myanimelist.controller;


import com.orange.myanimelist.domain.Anime;
import com.orange.myanimelist.service.AnimeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ListController {

    private final AnimeService animeService;

    public ListController(AnimeService animeService) {
        this.animeService = animeService;
    }


    @RequestMapping("/")
    public String listarAnime(Model model) {
        List<Anime> destacados = animeService.buscarDestacados();
        model.addAttribute("animes", destacados);
        return "listado";
    }

    @RequestMapping("/productoras")
    public String listarProductoras(Long productoraId, Model model) {
        List<Anime> animes = animeService.buscarPorProductora(productoraId);
        model.addAttribute("animes", animes);
        return "listado";
    }

    @RequestMapping("/buscar")
    public String buscar(@RequestParam("q") String consulta, Model model) {
        List<Anime> animes = animeService.buscar(consulta);
        model.addAttribute("animes", animes);
        return "listado";
    }

}

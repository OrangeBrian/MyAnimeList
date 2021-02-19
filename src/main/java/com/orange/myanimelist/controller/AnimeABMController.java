package com.orange.myanimelist.controller;


import com.orange.myanimelist.domain.Anime;
import com.orange.myanimelist.service.AnimeService;
import com.orange.myanimelist.service.ProductoraService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnimeABMController {

    private final ProductoraService productoraService;
    private final AnimeService animeService;

    public AnimeABMController(ProductoraService productoraService, AnimeService animeService) {
        this.productoraService = productoraService;
        this.animeService = animeService;
    }


    @RequestMapping("/anime/crear")
    public String mostrarFormAlta(Model model) {
        model.addAttribute("productora", productoraService.buscarTodos());
        model.addAttribute("anime", new Anime());
        return "formABM";
    }

    @PostMapping("/anime/guardar")
    public String guardar(Anime anime) {
        animeService.guardar(anime);
        System.out.println(anime);
        return "redirect:/";
    }
}

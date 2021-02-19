package com.orange.myanimelist.service;

import com.orange.myanimelist.domain.Anime;
import com.orange.myanimelist.repository.AnimeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimeService {

    private final AnimeRepository animeRepository;

    public AnimeService(AnimeRepository animeRepository) {
        this.animeRepository = animeRepository;
    }

    public List<Anime> buscarDestacados() {

        return animeRepository.buscarTodo();
    }

    public List<Anime> buscarPorProductora(Long productoraId) {
        return animeRepository.buscarPorProductora(productoraId);
    }

    public List<Anime> buscar(String consulta) {
        return animeRepository.findByNombreContaining(consulta);
    }

    public Anime guardar(Anime anime) {
        return animeRepository.save(anime);
    }
}

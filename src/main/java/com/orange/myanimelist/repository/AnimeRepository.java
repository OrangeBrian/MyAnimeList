package com.orange.myanimelist.repository;

import com.orange.myanimelist.domain.Anime;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AnimeRepository extends JpaRepository<Anime, Long> {

    @Query("from Anime v order by v.nombre")
    List<Anime> buscarTodo();

    @Query("from Anime v where v.productora.id = ?1 order by v.nombre")
    List<Anime> buscarPorProductora(Long productoraId);

    List<Anime> findByNombreContaining(String consulta);


}

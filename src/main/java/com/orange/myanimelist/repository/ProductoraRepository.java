package com.orange.myanimelist.repository;

import com.orange.myanimelist.domain.Productora;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductoraRepository extends JpaRepository<Productora, Long> {
    @Query("from Productora v order by v.nombre")
    List<Productora> buscarTodo();


}
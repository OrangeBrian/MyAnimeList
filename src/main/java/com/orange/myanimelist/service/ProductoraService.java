package com.orange.myanimelist.service;

import com.orange.myanimelist.domain.Productora;
import com.orange.myanimelist.repository.ProductoraRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductoraService {
    private final ProductoraRepository productoraRepository;


    public ProductoraService(ProductoraRepository productoraRepository) {
        this.productoraRepository = productoraRepository;
    }

    public List<Productora> buscarTodos() {
        return productoraRepository.buscarTodo();
    }
}

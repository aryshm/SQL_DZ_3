package com.example.sql_dz_3.service;

import com.example.sql_dz_3.repository.Repo;

import java.util.List;

@org.springframework.stereotype.Service
public class Service {
    Repo repository;

    public Service(Repo repository) {
        this.repository = repository;
    }

    public List<String> getProducts(String name) {
        return repository.getProductName(name);
    }
}

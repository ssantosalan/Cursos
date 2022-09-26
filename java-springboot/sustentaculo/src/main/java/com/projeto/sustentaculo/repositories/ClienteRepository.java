package com.projeto.sustentaculo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projeto.sustentaculo.domain.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Integer> {

}

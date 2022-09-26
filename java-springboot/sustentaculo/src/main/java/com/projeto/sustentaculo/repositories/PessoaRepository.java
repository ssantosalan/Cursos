package com.projeto.sustentaculo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projeto.sustentaculo.domain.Pessoa;

public interface PessoaRepository extends JpaRepository<Pessoa, Integer> {

}

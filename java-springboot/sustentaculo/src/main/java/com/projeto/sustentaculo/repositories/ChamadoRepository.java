package com.projeto.sustentaculo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.projeto.sustentaculo.domain.Chamado;

public interface ChamadoRepository extends JpaRepository<Chamado, Integer> {

}

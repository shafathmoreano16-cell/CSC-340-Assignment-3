package com.csc340.characterapi;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    // Find characters by role, like Hero, Villain, or Supporting
    List<Character> findByRoleIgnoreCase(String role);

    // Find characters whose name contains a word
    List<Character> findByNameContainingIgnoreCase(String name);
}

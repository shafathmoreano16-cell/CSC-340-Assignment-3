package com.csc340.characterapi;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Character getCharacterById(long characterId) {
        return characterRepository.findById(characterId).orElse(null);
    }

    public Character addCharacter(Character character) {
        return characterRepository.save(character);
    }

    public Character updateCharacter(long characterId, Character characterDetails) {
        Character existingCharacter = characterRepository.findById(characterId).orElse(null);

        if (existingCharacter == null) {
            return null;
        }

        existingCharacter.setName(characterDetails.getName());
        existingCharacter.setDescription(characterDetails.getDescription());
        existingCharacter.setRole(characterDetails.getRole());
        existingCharacter.setUniverse(characterDetails.getUniverse());
        existingCharacter.setImageUrl(characterDetails.getImageUrl());

        return characterRepository.save(existingCharacter);
    }

    public void deleteCharacter(long characterId) {
        characterRepository.deleteById(characterId);
    }

    public List<Character> getCharactersByRole(String role) {
        return characterRepository.findByRoleIgnoreCase(role);
    }

    public List<Character> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }
}

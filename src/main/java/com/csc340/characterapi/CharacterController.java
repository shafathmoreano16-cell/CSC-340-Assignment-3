package com.csc340.characterapi;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
@CrossOrigin
public class CharacterController {

    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // Get all characters
    @GetMapping
    public List<Character> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    // Get one character by ID
    @GetMapping("/{characterId}")
    public Character getCharacterById(@PathVariable long characterId) {
        return characterService.getCharacterById(characterId);
    }

    // Add a new character
    @PostMapping
    public Character addCharacter(@RequestBody Character character) {
        return characterService.addCharacter(character);
    }

    // Update an existing character
    @PutMapping("/{characterId}")
    public Character updateCharacter(@PathVariable long characterId, @RequestBody Character character) {
        return characterService.updateCharacter(characterId, character);
    }

    // Delete an existing character
    @DeleteMapping("/{characterId}")
    public String deleteCharacter(@PathVariable long characterId) {
        characterService.deleteCharacter(characterId);
        return "Character deleted successfully.";
    }

    // Get characters by role
    @GetMapping("/role/{role}")
    public List<Character> getCharactersByRole(@PathVariable String role) {
        return characterService.getCharactersByRole(role);
    }

    // Search characters by name
    @GetMapping("/search")
    public List<Character> searchCharactersByName(@RequestParam String name) {
        return characterService.searchCharactersByName(name);
    }
}
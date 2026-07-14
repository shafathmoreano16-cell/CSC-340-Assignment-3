package com.csc340.characterapi;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CharacterUiController {

    private final CharacterService characterService;

    public CharacterUiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // Shows the about page
    @GetMapping("/about")
    public String about() {
        return "about";
    }

    // Shows the list/gallery of all characters
    @GetMapping("/characters")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "index";
    }

    // Shows one character by ID
    @GetMapping("/characters/{id}")
    public String getCharacterById(@PathVariable long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "details";
    }

    // Shows the create character form
    @GetMapping("/characters/create")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new Character());
        return "new-character-form";
    }

    // Saves a new character from the form
    @PostMapping("/characters/create")
    public String createCharacter(Character character) {
        Character savedCharacter = characterService.addCharacter(character);
        return "redirect:/characters/" + savedCharacter.getCharacterId();
    }

    // Shows the update character form
    @GetMapping("/characters/update/{id}")
    public String showUpdateForm(@PathVariable long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "character-update";
    }

    // Saves the updated character
    @PostMapping("/characters/update/{id}")
    public String updateCharacter(@PathVariable long id, Character character) {
        characterService.updateCharacter(id, character);
        return "redirect:/characters/" + id;
    }

    // Deletes a character and returns to the list page
    @GetMapping("/characters/delete/{id}")
    public String deleteCharacter(@PathVariable long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }
}
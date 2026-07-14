<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spider-Man Movie Character Gallery</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

   <header>
    <h1>Spider-Man Movie Character Gallery</h1>
    <p>A simple gallery of heroes, villains, and important characters from the Spider-Man movies.</p>
</header>

    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
        <a href="/characters/create">Add a Character</a>
    </nav>

    <main>
    <h2>Character Gallery</h2>

    <input type="text" placeholder="Search by character name, role, or power...">

   <section class="gallery">


<#list characterList as character>
    <div class="hero-card">
        <#if character.imageUrl?? && character.imageUrl?has_content>
            <img src="/images/${character.imageUrl}" alt="${character.name}">
        </#if>

        <h3>${character.name}</h3>
        <p><strong>Role:</strong> ${character.role}</p>
        <p><strong>Universe:</strong> ${character.universe}</p>
        <p><strong>Description:</strong> ${character.description}</p>

        <a href="/characters/${character.characterId}">View Details</a>
    </div>
</#list>

</section>
</main>

</body>
</html>
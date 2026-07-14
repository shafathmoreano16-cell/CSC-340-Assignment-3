<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spider-Man Character Details</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

    <header>
        <h1>Spider-Man Character Details</h1>
        <p>More information about Peter Parker from the Spider-Man movies.</p>
    </header>

    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
        <a href="/characters/create">Add a Character</a>
    </nav>

    <main>
        <section class="detail-box">

           <#if character.imageUrl?? && character.imageUrl?has_content>

    <img src="/images/${character.imageUrl}" alt="${character.name}">
</#if>

<div>
    <h2>${character.name}</h2>

    <p><strong>Role:</strong> ${character.role}</p>
    <p><strong>Universe:</strong> ${character.universe}</p>
    <p><strong>Description:</strong> ${character.description}</p>

    <a class="button-link" href="/characters">Back to Gallery</a>
    <a class="button-link" href="/characters/update/${character.characterId}">Update Character</a>
    <a class="button-link" href="/characters/delete/${character.characterId}">Delete Character</a>
</div>

        </section>
    </main>

</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Character</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

    <header>
        <h1>Update Character</h1>
        <p>Edit the selected Spider-Man movie character.</p>
    </header>

    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
        <a href="/characters/create">Add a Character</a>
    </nav>

    <main>
        <section class="form-box">

            <h2>Update Character Form</h2>

            <form action="/characters/update/${character.characterId}" method="post">
                <label for="name">Character Name:</label>
                <input type="text" id="name" name="name" value="${character.name}">

                <label for="role">Role:</label>
                <input type="text" id="role" name="role" value="${character.role}">

                <label for="universe">Universe:</label>
                <input type="text" id="universe" name="universe" value="${character.universe}">

                <label for="imageUrl">Image File Name:</label>
                <input type="text" id="imageUrl" name="imageUrl" value="${character.imageUrl!''}">

                <label for="description">Short Description:</label>
                <textarea id="description" name="description">${character.description}</textarea>

                <button type="submit">Update Character</button>
            </form>

            <br>

            <a class="button-link" href="/characters/${character.characterId}">Cancel</a>

        </section>
    </main>

</body>
</html>
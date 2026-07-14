<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add a Character</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

    <header>
        <h1>Add a New Character</h1>
        <p>Use this form to add a new Spider-Man movie character to the gallery.</p>
    </header>

    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
        <a href="/characters/create">Add a Character</a>
    </nav>

    <main>
        <section class="form-box">

            <h2>Character Form</h2>

            <form action="/characters/create" method="post">
                <label for="name">Character Name:</label>
                <input type="text" id="name" name="name" placeholder="Example: Harry Osborn">

                <label for="role">Role:</label>
                <input type="text" id="role" name="role" placeholder="Example: Friend, villain, hero">

                <label for="universe">Universe:</label>
                <input type="text" id="universe" name="universe" placeholder="Example: Spider-Man">

                <label for="imageUrl">Image File Name:</label>
                <input type="text" id="imageUrl" name="imageUrl" placeholder="Example: spiderman.jpg">

                <label for="description">Short Description:</label>
                <textarea id="description" name="description" placeholder="Write a short character description"></textarea>

                <button type="submit">Add Character</button>
            </form>

            <p class="note">
                This form is only for display. It does not save information because this website has no backend.
            </p>

        </section>
    </main>

</body>
</html>
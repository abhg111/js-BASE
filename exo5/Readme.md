# **README BaseJS exo 5**
 
## **base-JS Exercise 5**
## **Introduction**
 
This exercise is made to show quotes on the screen, with a favoured system using JS.
## **Main function of the project**

This function is made for creating the HTML elements using Javascript
 

```quotes.forEach(quote => {
    const card = document.createElement("div");    
    card.classList.add("card");
    quotes2.appendChild(card);

    const citations = document.createElement("span"); 
    citations.classList.add("quote");
    citations.innerHTML = `"${quote["quote"]}"`;
    card.appendChild(citations);


    const br = document.createElement("br");
    card.appendChild(br);


    const author = document.createElement("span"); 
    author.classList.add("auteur");
    author.innerHTML = quote["auteur"];
    card.appendChild(author);

    const fav = document.createElement("i"); 
    fav.classList.toggle("fa-regular");
    fav.classList.toggle("fa-heart");
    card.appendChild(fav);
    
    fav.addEventListener("click", function() {
        const author = quote["auteur"]; // Récupérer l'auteur
        const citations = `"${quote["quote"]}"`; // Récupérer citation

        const isFavorite = fav.classList.contains("fas"); // Vérifie si l'élément est en favoris

    if (isFavorite) {
        // Si déjà en favoris, on supprime
        localStorage.removeItem(author); // Supprime seulement cet auteur
        localStorage.removeItem(citations); // Supprime seulement cet auteur
        fav.classList.add("fa-heart");
        fav.classList.toggle("fas");
        fav.classList.add("fav");
    } else {
        // Sinon, on ajoute en favoris
        localStorage.setItem(author, "auteur"); // Ajoute l'auteur au localStorage
        localStorage.setItem(citations, "quote"); // Ajoute ciation au localStorage
        fav.classList.toggle("fas");
        fav.classList.remove("fav");
    }

    });
 
```

 
## **if you have question about the project you can contact me on my [linkedIn]()**
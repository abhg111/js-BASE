import {quotes} from './quotes.js'

const quotes2 = document.querySelector(".quotes2");


quotes.forEach(quote => {
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
    console.log(localStorage)
    console.log(localStorage)
    
    console.log(localStorage)
    console.log(localStorage)
    
    // // Create a "Favorite" button
    // const favButton = document.createElement("button");
    // favButton.classList.add("fav-btn");
    // favButton.innerText = "Add to Favorites";
    // card.appendChild(favButton);

    // // Add event listener to toggle favorite status
    // favButton.addEventListener("click", function() {
    //     if (favButton.innerText === "Add to Favorites") {
    //         favButton.innerText = "Remove from Favorites";
    //         favButton.classList.add("fav"); // Add "fav" class for styling
    //     } else {
    //         favButton.innerText = "Add to Favorites";
    //         favButton.classList.remove("fav"); // Remove "fav" class for styling
    //     }
    // });




});


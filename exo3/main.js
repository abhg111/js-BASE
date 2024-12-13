const carres = document.querySelectorAll(".carre");

carres.forEach(carre=>{
    carre.addEventListener("click", function(){


    carre.classList.toggle("carreN");
        
       
    })
});


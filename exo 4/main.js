const carres = document.querySelectorAll(".carre");
const float = document.querySelector(".float");


function updateTextBasedOnCarre(carre) {


    // Determine which carre was clicked and update text accordingly
    if (carre.classList.contains("blue")) {
        socialName.innerHTML = "Facebook";  
    } else if (carre.classList.contains("blueciel")) {
        socialName1.innerHTML = "Twitter";   
    } else if (carre.classList.contains("purple")) {
        socialName2.innerHTML = "Instagram"; 
    }

 }



carres.forEach(carre=>{
    carre.addEventListener("click", function (){

        const carresStyle = window.getComputedStyle(carre);
        const carresBackground = carresStyle.getPropertyValue("background-color");

        carre.classList.toggle("carreN");
       
        float.style.backgroundColor = carresBackground;
        
        

        if (carre.classList.contains("carreN")) {
            float.style.backgroundColor = carresBackground;

        }
     else {
        // If 'carreN' is removed, reset background color
        float.style.backgroundColor = "";
    }
        if (carre.classList.contains("carreN")) {
            socialName.innerHTML = "Facebook";

        }
     else {
     
        socialName.innerHTML = "";
    }
        if (carre.classList.contains("carreN")) {
            socialName1.innerHTML = "Twitter";

        }
     else {
        
        socialName1.innerHTML = "";
    }
        if (carre.classList.contains("carreN")) {
            socialName2.innerHTML = "Instagram";

        }
     else {
        
        socialName2.innerHTML = "";
    }

    

    // updateTextBasedOnCarre(carre);


    
        
    })
});
# **README BaseJS exo 1**
 
## **base-JS Exercise 1**
## **Introduction**
 
This exercise is here to how to use addEventListener and QuerySelectorin JS
 
## **Main function of the project**

This function makes and alert on the user's screen, showing all the CSS info of a button.
 
 

```function alertMessage()  {
const carre = document.querySelector(".carre").className; // get class name
const background = document.getElementsByClassName("carre").style='red'; // get background color by class name
const color = window.getComputedStyle(document.querySelector('.texte'), null).getPropertyValue("color"); // get color 
const height = window.getComputedStyle(document.querySelector('.carre'), null).getPropertyValue("height"); // get height
const width = window.getComputedStyle(document.querySelector('.carre'), null).getPropertyValue("width"); // get width 
const display = window.getComputedStyle(document.querySelector('.carre'), null).getPropertyValue("display"); // get display
const font = window.getComputedStyle(document.querySelector('.texte'), null).getPropertyValue("font-family"); // get font family


    alert("Class "+carre+"  \n\tcouleur: "+ color+

    "\n\tbackground-color: "+background+
    "\n\theight: "+height+
    "\n\twidth: "+width+
    "\n\tdisplay: "+display+
    "\n\tfont: "+font
         );
}
 
```

 
## **if you have question about the project you can contact me on my [linkedIn]()**
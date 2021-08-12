let btnNav = document.getElementById('icon');
// console.log(btn);
let nav = document.querySelector('nav');
let shadow = document.querySelector('#shadow');

let open = false;
// function
let openNav = ()=>{
    if (open === false){
        //recuperer dans une variable js l'elemt nav
        //modifier la proporiété style de nav à 200px
        nav.style.width = "200px";
        // recuperer dans une variable js l'element #shadow
        // modifier la propriété display à block
        shadow.style.display = "block";
        open = true;
    }else{
        //remettre width 0px sur la balise nav
        nav.style.width = "0";
        //remettre un display none sur l'elmt #shadow
        shadow.style.display = "none";
        open = false;
    }
    
    }


//events
btnNav.addEventListener('click',openNav);
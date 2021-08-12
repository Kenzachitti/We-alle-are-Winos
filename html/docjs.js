let btnNav = document.querySelector('icon');
let nav = document.querySelector('nav');
let shadow = document.querySelector('#shadow');

let open = false;
// function
let openNav = ()=>{
    if (open === false){
   
        nav.style.width = "200px";
   
        shadow.style.display = "block";
        open = true;
    }else{
        
        nav.style.width = "0";
        
        shadow.style.display = "none";
        open = false;
    }
    
    }


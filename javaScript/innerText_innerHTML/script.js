let elementoH1 = document.querySelector("#titulo");
let elementoUl = document.querySelector("ul");
let elementoA = document.querySelector("a");
let elementoOl = document.querySelector("#lista-ordenada");

elementoH1.innerText = "Proz"
elementoA.innerText = "Proz educação"

elementoUl.innerHTML = `
<li>Item 01</li>
<li>Item 02</li>
<li>Item 03</li>
`
elementoOl.innerHTML = `
<li><a href="https://www.google.com.br/">Google</a></li>
<li><a href="https://www.youtube.com/">Youtube</a></li>
<li><a href="https://www.w3schools.com/">W3schools</a></li>
`
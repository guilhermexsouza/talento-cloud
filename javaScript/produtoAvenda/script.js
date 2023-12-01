let elementoTitulo = document.createElement("h1");
let elementoBody = document.querySelector("body");

elementoTitulo.innerText = "Produto a venda";
elementoTitulo.id = "titulo";

elementoBody.appendChild(elementoTitulo);

let elementoProduto = document.createElement("div");
elementoProduto.innerHTML = `
<img style="width: 30%; height: 30%;" src="./img/macBook.jpg" alt="MacBook">
<h2>MacBook Pro 16 polegadas</h2>
<p>
    Chip M3 Max da Apple com CPU de 16 núcleos, GPU de 40 núcleos e Neural Engine de 16 núcleos<br>
    Memória unificada de 48 GB<br>
    SSD de 1 TB<br>
    Tela Liquid Retina XDR de 16 polegadas²<br>
    Adaptador de energia USB-C de 140W<br>
    Três portas Thunderbolt 4, porta HDMI, slot para cartão SDXC, entrada para fones de ouvido, porta MagSafe 3<br>
    Magic Keyboard retroiluminado com Touch ID - Inglês (EUA)<br>
</p>
<p>Preço: 43.999,00</p>
`

elementoBody.appendChild(elementoProduto);
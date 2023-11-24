let numerosDaSorte = [37, 14, 26, 5, 94, 87];

for (i=0; i < numerosDaSorte.length; i++){
 
  if (numerosDaSorte[i] < 50 && numerosDaSorte[i] % 2 == 0 ){
    console.log(`${numerosDaSorte[i]} é par e menor que 50`);
  }else if (numerosDaSorte[i] < 50){
    console.log(`${numerosDaSorte[i]} é menor que 50`);
  }else{
    console.log(`${numerosDaSorte[i]} é maior que 50`);
  }
  
}
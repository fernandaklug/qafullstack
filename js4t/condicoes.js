var idade = prompt("Qual a sua idade");

if (idade >= 18){
console.log('posso ir')
}else if (idade >= 12){
    console.log('posso ir acompanhado')
} else {
    console.log('não posso ir')
}

var ingresso = prompt("Qual ingresso");
switch(ingresso){
    case 'vip':
        console.log('camap=rote')
        break;
    default:
        console.log('inválifo')
        break;
}
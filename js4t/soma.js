function somavalores(){
    var n1 = document.getElementById("n1").value;
    var n2 = document.getElementById("n2").value;

    var result = parseInt(n1) + parseInt(n2);

    var divResultado = document.getElementById("resultado");
    divResultado.append("O resultado é: " + result);
    console.log(result);
}
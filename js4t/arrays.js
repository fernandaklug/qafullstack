var avengers = ['ironman', 'spiderman', 'thor']
console.log(avengers)

avengers.push('hulk')
console.log(avengers)

avengers.push('homem')
//avengers.pop();//remove o ultimo
//avengers.shift();//remove o primeiro

var indice = avengers.indexOf('homem')
avengers.splice(indice)
console.log(avengers)

var newavengers = ['homem', 'capitão', 'miss']

var result = avengers.concat(newavengers)
console.log(result)
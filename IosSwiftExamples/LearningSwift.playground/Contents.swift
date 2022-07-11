//: Playground - noun: a place where people can play

//----- Hello world
print("Hello, world")

//----- Declaração de variáveis
var variavelComum = 50
let CONSTANTE = 50

//------ Declaração de variáveis sem e com tipos pré-definidos.
let variavelSemTipoDefinido = 6.56
let variavelComTipoDefinido:Double = 2.75

//------ Imprimindo variáveis de tipos diferentes
let numero = 8
let string = "Teste"
print(string + String(numero))

//----- Interpolação de strings
let interp = 58
let interpString = "Colocando o número \(interp) dentro da string."
let interp2 = 58.56
let interpString2 = "Calculando ponto flutuante \(interp2 * 3) dentro da string"

//----- arrays e dicionarios
var terror = ["Panico", "O Chamado", "O Exorcista", "Sexta feira 13"]
var acao = ["Identidade Bourne", "O Atirador"]
var filmes = [
    "Terror": terror,
    "Acao": acao
]

let arrayVazio = [String]()
let dicionarioVazio = [String: Int]()

//----- if-else || for-in || for || while || repeat-while
let qtd = [4, 5, 2, 7, 9]
var pontuacao = 0
for q in qtd {
    if q < 5 {
        pontuacao += 2
    } else {
        pontuacao += 4
    }
}
print("Pontuação final \(pontuacao)")

//----- Variaveis opcionais
let variavelOpcional: String? = "Teste"
print(variavelOpcional == nil)

//----- declarações dentro de condições
var variavelDec1: String? = "teste"
if let decDentroDoIf = variavelDec1 {
    print("123, \(decDentroDoIf)")
}

var variavelDec2: String? = nil
if let devDentroDoIf = variavelDec2 {
    print("123, \(devDentroDoIf)")
} else {
    print("Variavel falsa!")
}

//----- valores default
var valorDefault1: String? = nil
var valorDefault2: String? = "Teste 2"
var valorDefaultFinal = "Oi, \(valorDefault1 ?? valorDefault2)"

//----- switches
var valorSwitch = "opa"
switch valorSwitch {
case let valorSwitch2 where valorSwitch.hasSuffix("opa"):
    print("Que loucura é essa!")
case "ops":
    print("Era uma string")
default:
    print("O que era então?")
}

//----- iteração de dicionarios
var itDicionario = [
    1: "Primeiro - 1º",
    2: "Segundo - 2º",
    3: "Terceiro - 3º"
]

for (chave, valor) in itDicionario {
    print("Para a chave \(chave) o valor é: \(itDicionario[chave])")
}

//----- while e repeat
var nWhile = 2
while nWhile < 17 {
    nWhile *= nWhile
}
print("O valor de nWhile é \(nWhile)")

var nRepeat = 3
repeat {
    nRepeat += 2
} while nRepeat < 16
print("O valor de nRepeat é \(nRepeat)")

var nPoints = 0
for cPoints in 0..<4 {
    nPoints += cPoints
}
print(nPoints)

var nRangePoints = 0
for cRangePoints in 0...4 {
    nRangePoints += cRangePoints
}
print(nRangePoints)

//----- funcoes e closures
func bomDia(nome: String, dia: String) -> String {
    return "Bom dia, \(nome) e hoje é \(dia)"
}
print(bomDia("Alexandre", dia: "Sexta-feira"))

func mahOe(nome: String) -> (a1: Int, a2: Int, a3: Int) {
    print("O \(nome) jogou avioezinhos de")
    let a1 = 100
    let a2 = 200
    let a3 = 300
    return (a1, a2, a3)
}
var funcRetornoMultiplo = mahOe("Silvio Santos")
print(" avião 1: \(funcRetornoMultiplo.a1), avião 2: \(funcRetornoMultiplo.a2) e avião 3: \(funcRetornoMultiplo.a3)")

func recebArrayComoParametro(numeors: Int...) -> Int {
    var numRetorno = 0;
    for n in numeors {
        numRetorno += n
    }
    return numRetorno
}
print(recebArrayComoParametro(2, 54, 13, 55))
print(recebArrayComoParametro())

func funcDentroDeFunc() -> Int {
    var numDent = 0;
    func funcDeDentro() {
        numDent += 55
    }
    funcDeDentro()
    return numDent
}
print(funcDentroDeFunc())

func funcChamandoFuncDeDentroNoRetorno() -> ((Int) -> Int) {
    func funcChamandoFuncDeDentroNoRetorno2(number: Int) -> Int {
        return 1 + number
    }
    return funcChamandoFuncDeDentroNoRetorno2
}
var funcChamandoFuncDeDentroNoRetornoVar = funcChamandoFuncDeDentroNoRetorno()
print(funcChamandoFuncDeDentroNoRetornoVar(4))




























































//
//  main.swift
//  RPGFlorestaDoConhecimento
//
//  Created by MARCOS PAULO SANTOS BOE on 14/11/25.
//

import Foundation

var vida = 100
var experiencia = 0
var continuarJogo = true


// pergunta 1 (variáveis)

func fazerPergunta1() -> Bool {
    print("\n--- Pergunta 1 ---")
    print("Qual palavra-chave usamos para declarar uma CONSTANTE que NÃO pode ser alterada?")
    print("A) var")
    print("B) let")
    print("C) const")
    print("Sua resposta (A, B, ou C):", terminator: " ")

    let resposta = readLine() ?? ""
    
    // usanso método .uppercased() caso o usuário digite a resposta em minúsculo
    if resposta.uppercased() == "B" {
        return true
    } else {
        return false
    }
}


 // pergunta 2 (optionals)
 
func fazerPergunta2() -> Bool {
    print("\n--- Pergunta 2 ---")
    print("Qual operador usamos para 'coalescência nula', fornecendo um valor padrão para um opcional?")
    print("A) !")
    print("B) %")
    print("C) ??")
    print("Sua resposta (A, B, ou C):", terminator: " ")
    
    let resposta = readLine() ?? ""
    
    if resposta.uppercased() == "C" {
        return true
    } else {
        return false
    }
}


// pergunta 3 (estrutura de controle)

func fazerPergunta3() -> Bool {
    print("\n--- Pergunta 3 ---")
    print("Qual estrutura de controle é usada para verificar múltiplos casos e requer um 'default' se nenhum dos casos acontecer?")
    print("A) if-else")
    print("B) switch")
    print("C) for-in")
    print("Sua resposta (A, B, ou C):", terminator: " ")
    
    let resposta = readLine() ?? ""
    
    if resposta.uppercased() == "B" {
        return true
    } else {
        return false
    }
}


// pergunta 4 (collections)
func fazerPergunta4() -> Bool {
    print("\n--- Pergunta 4 ---")
    print("Qual tipo de estrurura collection NÃO permite itens duplicados?")
    print("A) Array")
    print("B) Dictionary")
    print("C) Set")
    print("Sua resposta (A, B, ou C):", terminator: " ")
    
    let resposta = readLine() ?? ""
    
    if resposta.uppercased() == "C" {
        return true
    } else {
        return false
    }
}


// pergunta 4 (tratamento de erros)

func fazerPergunta5() -> Bool {
    print("\n--- Pergunta 5 ---")
    print("Como marcamos uma função que pode 'lançar' um erro?")
    print("A) Usando a palavra-chave 'throws' na assinatura da função.")
    print("B) Usando a palavra-chave 'catch' na assinatura da função.")
    print("C) Usando a palavra-chave 'try' na assinatura da função.")
    print("Sua resposta (A, B, ou C):", terminator: " ")
    
    let resposta = readLine() ?? ""
    if resposta.uppercased() == "A" {
        return true
    } else {
        return false
    }
}

// pergunta 6 (truples)

func fazerPergunta6() -> Bool {
    print("\n--- Pergunta 6 ---")
    print("Se uma função retorna uma Tupla (firstName: \"PrimeiroNome\", lastName: \"UltimoNome\"), o que `let (firstName, _)` faz?")
    print("A) Cria uma nova função.")
    print("B) Ignora o segundo valor (lastName) da Tupla.")
    print("C) Causa um erro, pois o _ não é válido.")
    print("Sua resposta (A, B, ou C):", terminator: " ")
    
    let resposta = readLine() ?? ""
    
    if resposta.uppercased() == "B" {
        return true
    } else {
        return false
    }
}

// ============================== funções principais do jogo ==============================

// função para mostrar o status do aprendiz
func mostrarStatus() {
    print("\n================================")
    print("🌳 FLORESTA DO CONHECIMENTO 🌳")
    print("❤️ Vida: \(vida)")
    print("✨ Experiência: \(experiencia)")
    print("================================")
}

// processamento de acerto ou erro
func processarResposta(correta: Bool) {
    if correta {
        experiencia += 30
        print("Correto! Você ganhou 30 de experiência.")
    } else {
        vida -= 30
        print("Errado! Você levou 30 de dano.")
    }
    
    // verifica se o aprendiz morreu
    if vida <= 0 {
        continuarJogo = false
    }
}

// verificação de vitória
func verificarStatusFinal() {
    if vida > 0 && experiencia > 90 {
        print("\n🏅 PARABÉNS! 🏅\n")
        print("Você venceu a Floresta do Conhecimento!")
        print("Vida Final: \(vida), Experiência Final: \(experiencia)")
    } else if vida <= 0 {
        print("\n💀 VOCÊ FOI DERROTADO 💀")
        print("Sua vida zerou e a floresta te consumiu.")
    } else {
        print("\n🤔 QUASE LÁ... 🤔")
        print("Você sobreviveu, mas não adquiriu experiência suficiente para vencer.")
        print("Tente novamente!")
    }
}

// função para iniciar o jogo
func iniciarJogo() {
    vida = 100
    experiencia = 0
    continuarJogo = true
    
    print("\n=============================================================\n")
    print("Bem-vindo, Aprendiz! Responda as 6 perguntas para sobreviver...")
    
    // pergunta 1
    mostrarStatus()
    processarResposta(correta: fazerPergunta1())
    if continuarJogo == false {
        verificarStatusFinal()
        return
    }

    // pergunta 2
    mostrarStatus()
    processarResposta(correta: fazerPergunta2())
    if continuarJogo == false {
        verificarStatusFinal()
        return
    }

    // pergunta 3
    mostrarStatus()
    processarResposta(correta: fazerPergunta3())
    if continuarJogo == false {
        verificarStatusFinal()
        return
    }
    
    // pergunta 4
    mostrarStatus()
    processarResposta(correta: fazerPergunta4())
    if continuarJogo == false {
        verificarStatusFinal()
        return
    }
    
    // pergunta 5
    mostrarStatus()
    processarResposta(correta: fazerPergunta5())
    if continuarJogo == false {
        verificarStatusFinal()
        return
    }
    
    // pergunta 6
    mostrarStatus()
    processarResposta(correta: fazerPergunta6())
    if continuarJogo == false {
        verificarStatusFinal()
        return
    }

    // mostra o fim do jogo se o aprendiz ainda estiver vivo
    mostrarStatus()
    verificarStatusFinal()
}


// menu
var executarMenu = true

while executarMenu {
    print("\n-------- 🌳 BEM-VINDO A FLORESTA DO CONHECIMENTO 🌳 --------")
    print("--- Olá Aprendiz, o que busca na floresta do conhecimento? ---\n")
    print("1. Testar meus conhecimentos")
    print("2. Sair")
    print("Escolha uma opção:", terminator: " ")

    if let escolha = readLine() {
        
        switch escolha {
        case "1":
            iniciarJogo()
        case "2":
            print("\nAté logo, aprendiz!")
            executarMenu = false // encerra o loop while
        default:
            print("\nOpção inválida! Digite 1 ou 2.")
        }
    }
}


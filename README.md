# 🌳 Floresta do Conhecimento - RPG de Swift

Um jogo de RPG em Swift focado em testar o conhecimento de um aprendiz sobre a linguagem, baseado nos conceitos das aulas de Foundation.

## 🎮 Sobre o Jogo

Você é um aprendiz entrando na perigosa "Floresta do Conhecimento". Para sobreviver e provar seu valor, você deve responder corretamente a uma série de 6 perguntas sobre a linguagem Swift. Cada acerto te dá experiência, mas cada erro drena sua vida.

## 🎯 Como Jogar
O jogo é baseado em turnos de perguntas e respostas.

Status do Personagem:
❤️ Vida: Começa em 100. Se chegar a 0, você perde.

## ✨ Experiência: Começa em 0. É necessária para vencer.

Ações Disponíveis (Menu):
Iniciar Jogo: Começa a jornada pela floresta.

Sair: Desiste da aventura.

## 🎲 Mecânicas do Jogo
O jogo consiste em 6 perguntas de múltipla escolha.

Acertar a Resposta:

Vida: (sem alteração)

Experiência: +30

Errar a Resposta:

Vida: -30

Experiência: (sem alteração)

## 🏆 Condições de Vitória/Derrota
Vitória: Ao final das 6 perguntas, sua Vida deve ser > 0 e sua Experiência deve ser >= 120.

Derrota (Vida): Sua Vida chega a 0 (ou menos) a qualquer momento.

Derrota (Experiência): Você sobrevive, mas sua Experiência é < 120.

## 📁 Estrutura do Código
O código é estruturado de forma funcional, com a lógica principal separada em funções específicas.

```
🌳 Floresta do Conhecimento/
├── Variáveis Globais (vida, experiencia, continuarJogo, etc.)
├── Funções de Pergunta:
│   ├── fazerPergunta1() -> Bool
│   ├── fazerPergunta2() -> Bool
│   ├── ...
│   └── fazerPergunta6() -> Bool
├── Funções Principais do Jogo:
│   ├── mostrarStatus()
│   ├── processarResposta(correta: Bool)
│   ├── verificarStatusFinal()
│   └── iniciarJogo()
└── Loop Principal do Jogo (Menu)
```

## 🎪 Exemplo de Jogabilidade

--- MENU PRINCIPAL ---
1. Iniciar Jogo
2. Sair
Escolha uma opção (1-2): 1

Bem-vindo, Aprendiz! Responda as 6 perguntas para sobreviver...

```
🌳 FLORESTA DO CONHECIMENTO 🌳
❤️ Vida: 100
✨ Experiência: 0
```

--- Pergunta 1 ---

Qual palavra-chave usamos para declarar uma CONSTANTE que NÃO pode ser alterada?

A) var

B) let

C) const

Sua resposta (A, B, ou C): B

Correto! Você ganhou 30 de experiência.

```
🌳 FLORESTA DO CONHECIMENTO 🌳
❤️ Vida: 100
✨ Experiência: 30
```

--- Pergunta 2 ---

Qual operador usamos para 'coalescência nula', fornecendo um valor padrão para um opcional?

A) !

B) %

C) ??

Sua resposta (A, B, ou C): A

Errado! Você levou 30 de dano.

```
🌳 FLORESTA DO CONHECIMENTO 🌳�
❤️ Vida: 70
✨ Experiência: 30
```

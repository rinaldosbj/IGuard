//
//  Model+Populate.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 27/11/22.
//

import Foundation

class Populate {
    
    //MARK: - Atividades
    static func getActivities() -> [Activity] {
        return [
            
            Activity(name: .hiking,
                     imageString: "figure.hiking",
                     workoutType: .hiking),
            
            Activity(name: .walking,
                     imageString: "figure.walk",
                     workoutType: .walking),
            
            Activity(name: .runnig,
                     imageString: "figure.run",
                     workoutType: .running),
            
            Activity(name: .cicling,
                     imageString: "figure.outdoor.cycle",
                     workoutType: .cycling),
            
            Activity(name: .climbing,
                     imageString: "figure.climbing",
                     workoutType: .climbing),
            
            Activity(name: .play,
                     imageString: "figure.rugby",
                     workoutType: .play),
            
            Activity(name: .skate,
                     imageString: "figure.rugby",
                     workoutType: .skatingSports),
            
            Activity(name: .sailing,
                     imageString: "figure.sailing",
                     workoutType: .sailing),
            
            Activity(name: .swiming,
                     imageString: "figure.pool.swim",
                     workoutType: .swimming),
            
            Activity(name: .surf,
                     imageString: "figure.surfing",
                     workoutType: .surfingSports),
            
            Activity(name: .paddleSportrs,
                     imageString: "oar.2.crossed",
                     workoutType: .paddleSports)
        
            
        ]
    }
    
    //MARK: - Perrengues
    static func getPerrengues () -> [Perrengue] {
        
        return [
            
            //MARK: - PICADA
            
            Perrengue(name: "Picada",
                      imageURL: "Snake",
                      instructions: [
                        "Não comprima o membro acometido e não tente “chupar o veneno”.",
                        "Retire acessórios que possam estar no membro acometido.",
                        "Realize compressas de água do mar gelada ou gelo.",
                        "Fique em repouso com o membro acometido mais elevado.",
                        "Lave o local da ferida."
                      ]),
            
            //MARK: - QUEIMADURA
            
            Perrengue(name: "Queimadura",
                      imageURL: "Fire",
                      instructions: [
                        "Coloque a área da queimadura debaixo de água corrente.",
                        "Não remova nada que esteja colado à queimadura, evitando piorar a lesão.",
                        "Seque e cubra-a lesão com uma gaze molhada."
                      ]),
            
            //MARK: - FRATURA
            
            Perrengue(name: "Fratura",
                      imageURL: "Broken Bone",
                      instructions: [
                        "Caso a fratura seja exposta, tente lavar a área para evitar infecções.",
                        "Imobilize o membro com o objeto encontrado.",
                        "Eleve o membro o máximo possível, para limitar o inchaço.",
                        "Aplique gelo para controlar a dor e o inchaço.",
                        "Encontre algum objeto ou material que sirva como uma tala ou tipóia."
                      ]),
            
            //MARK: - INSOLAÇÃO
            
            Perrengue(name: "Insolação",
                      imageURL: "Taiwan, China Emblem",
                      instructions: [
                        "Tome um banho frio ou envolta-se em panos ou roupas encharcadas.",
                        "Coloque água fria na testa, pescoço, axilas e virilhas.",
                        "Fique em repouso e recostado, com a cabeça elevada.",
                        "Remova o máximo de peças de roupa.",
                        "Beba bastante água fria ou gelada ou qualquer líquido não alcoólico.",
                        "Vá para um local fresco, à sombra e ventilado."
                      ]),
            
            //MARK: - HIPOTERMIA
            
            Perrengue(name: "Hipotermia",
                      imageURL: "Thermometer Down",
                      instructions: [
                        "Procure um ambiente aquecido.",
                        "Aqueça seu corpo com bebidas quentes ou cobertas.",
                        "Tenha um cuidado especial com as extremidades.",
                        "Aqueça seu organismo com diferentes formas de calor."
                      ]),
            
            //MARK: - HEMORRAGIA
            
            Perrengue(name: "Hemorragia",
                      imageURL: "Wound",
                      instructions: [
                        "Aplique pressão sobre a hemorragia com um pano ou tecido limpo.",
                        "Caso o ferimento tenha atingindo um membro, braço ou perna, você pode utilizar um cinto ou corda.",
                        "Aperte o cinto próximo ao ferimento com o intuito de restringir o fluxo sanguíneo no membro.",
                        "Mantenha a pressão aplicada até conseguir ajuda especializada."
                      ]),
            
            //MARK: - PERDA DE CONSCIÊNCIA
            
            Perrengue(name: "Perda de Consciência",
                      imageURL: "Dizzy Person",
                      instructions: [
                        "Primeiramente, observe se a pessoa está respirando observando a movimentação do tórax.",
                        "Caso não esteja respirando, ligue imediatamente para o SAMU.",
                        "Enquanto a ajuda não chega, realize compressões torácicas:",
                        "1. Coloque a base de uma mão no centro do peito e base da da outra por cima da primeira.",
                        "2. Empurre firmemente para baixo, comprimindo o peito, aliviando em seguida.",
                        "3. Mantenha a frequência de ao menos 100 compressões por minuto até que ajude chegue.",
                        "Caso a pessoa esteja respirando, coloque-a deitada de lado.",
                        "Certifique-se que ela esteja com as vias respiratórias desobstruídas até que ajuda chegue."
                      ]),
            
            //MARK: - ENGASGO
            
            Perrengue(name: "Engasgo",
                      imageURL: "Bully",
                      instructions: [
                        "Em caso de engasgo leve, tussa 5 vezes com força.",
                        "Bata 5 vezes no meio das costas com a mão aberta.",
                        "Em caso de engasgo grave, peça para alguém fazer a manobra de Heimlich:",
                        "1. Passe os braços em volta do tronco da pessoa.",
                        "2. Cerre o punho em volta da boca do estômago da vítima.",
                        "3. Coloque a outra mão em cima do punho cerrado.",
                        "4. Faça pressão com as mãos, para dentro e para cima, no movimento de uma vírgula."
                      ]),
            
            //MARK: - DISTENSÃO
            
            Perrengue(name: "Distensão",
                      imageURL: "Sick",
                      instructions: [
                        "Eleve o membro o máximo possível.",
                        "Aplique um saco de gelo na lesão, para reduzir o inchaço e dor.",
                        "Estabilize a área lesionada na posição em que foi encontrada.",
                        "Evite se movimentar, tente alinhar a área lesionada."
                      ]),
            
            //MARK: - ANSIEDADE
            
            Perrengue(name: "Ansiedade",
                      imageURL: "Depression",
                      instructions: [
                        "Use a respiração a seu favor, respirando devagar e relaxando os músculos.",
                        "Foque no tempo presente, voltando a atenção e a consciência para o momento atual.",
                        "Caso outra pessoa esteja passando por uma crise de ansiedade:",
                        "1.  Mostre que está ouvindo e pergunte calmamente como pode ajudar;",
                        "2. Seja atencioso e mostre que se preocupe e que está disposto a ajudar."
                      ])
        ]
    }
}

//
//  0_FizzBuzz.swift
//  Katas
//
//  Created by Luis David Goyes on 13/09/22.
//

import Foundation

/*
 * Reto #0
 * Fecha publicación enunciado: 27/12/21
 * Fecha publicación resolución: 03/01/22
 * Dificultad: FÁCIL
 * Enunciado: Escribe un programa que muestre por consola (con un print) los números de 1 a 100 (ambos incluidos y con un salto de línea entre cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 *
 */

protocol LineProcessor {
    func canProcess(line: Int) -> Bool
    func process(line: Int) -> String
}

struct FizzLineProcessor: LineProcessor {
    func canProcess(line: Int) -> Bool {
        return line % 3 == 0
    }
    func process(line: Int) -> String {
        return "fizz"
    }
}

struct BuzzLineProcessor: LineProcessor {
    func canProcess(line: Int) -> Bool {
        return line % 5 == 0
    }
    func process(line: Int) -> String {
        return "buzz"
    }
}

struct FizzBuzzLineProcessor: LineProcessor {
    func canProcess(line: Int) -> Bool {
        return line % 3 == 0 && line % 5 == 0
    }
    func process(line: Int) -> String {
        return "fizzbuzz"
    }
}

struct AnyLineProcessor: LineProcessor {
    func canProcess(line: Int) -> Bool {
        return true
    }
    func process(line: Int) -> String {
        return "\(line)"
    }
}

struct FizzBuzz {
    let processors: [LineProcessor]
    func getMessage(forLine line: Int) -> String {
        let processor = processors.first { $0.canProcess(line: line) }!
        return processor.process(line: line)
    }
}

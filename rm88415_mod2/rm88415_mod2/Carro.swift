import Foundation

class Carro {
    var marca: String
    var modelo: String
    var anoFabricacao: Int
    var possuiAirbag: Bool
    
    // Defina um inicializador conveniente para facilitar a criação de instâncias
    init(marca: String = "", modelo: String = "", anoFabricacao: Int = 0, possuiAirbag: Bool = false) {
        self.marca = marca
        self.modelo = modelo
        self.anoFabricacao = anoFabricacao
        self.possuiAirbag = possuiAirbag
    }
    
    func exibirDetalhes() -> String {
        return "Marca: \(marca), Modelo: \(modelo), Ano de Fabricação: \(anoFabricacao), Possui Airbag: \(possuiAirbag ? "Sim" : "Não")"
    }
    
    func definirDetalhes(marca: String, modelo: String, anoFabricacao: Int, possuiAirbag: Bool) {
        self.marca = marca
        self.modelo = modelo
        self.anoFabricacao = anoFabricacao
        self.possuiAirbag = possuiAirbag
    }
}

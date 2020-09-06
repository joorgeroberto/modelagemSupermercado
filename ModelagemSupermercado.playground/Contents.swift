import UIKit

//Classe pai
class Produto {
    private var nome: String
    private var fornecedor: String
    private var quantidade: Double
    private var preco: Float
    private var dataDeFabricacao: Date
    private var descricao: String
    
    init(nome: String, fornecedor: String, quantidade: Double, preco: Float, dataDeFabricacao: Date, descricao: String) {
        self.nome = nome
        self.fornecedor = fornecedor
        self.quantidade = quantidade
        self.preco = preco
        self.dataDeFabricacao = dataDeFabricacao
        self.descricao = descricao
    }
    
    func getNome() -> String {
        return self.nome;
    }
    
    func getFornecedor() -> String {
        return self.fornecedor;
    }
    
    func getDescricao() -> String {
        return self.descricao;
    }
    
    func getDataDeFabricacao() -> Date {
        self.dataDeFabricacao;
    }
    
    func getQuantidade() -> Double {
        return self.quantidade;
    }
    func getPreco() -> Float {
        return self.preco;
    }
    
    func setNome(_ nome: String) {
        return self.nome = nome;
    }
    
    func setFornecedor(_ fornecedor: String) {
        return self.fornecedor = fornecedor;
    }
    
    func setDescricao(_ descricao: String) {
        return self.descricao = descricao;
    }
    
    func setDataDeFabricacao(_ dataDeFabricacao: Date) {
        self.dataDeFabricacao = dataDeFabricacao;
    }
    
    func setQuantidade(_ quantidade: Double) {
        return self.quantidade = quantidade;
    }
    func setPreco(_ preco: Float) {
        return self.preco = preco;
    }
    
    func getInfo() -> String {
        return ("Nome: \(nome) \nFornecedor: \(fornecedor) \nData de Fabricação: \(dataDeFabricacao) \nQuantidade: \(quantidade) \nPreço: \(preco) \nDescrição: \(descricao)\n")
    }
    
    func comprar(_ numeroDeUnidadesCompradas: Double) {
        if(self.quantidade >= numeroDeUnidadesCompradas) {
            self.quantidade = quantidade - numeroDeUnidadesCompradas;
            print("O cliente comprou \(numeroDeUnidadesCompradas) unidades de \(self.nome). \(self.quantidade) unidades disponíveis no estoque.")
        }
        else {
            print("\(numeroDeUnidadesCompradas) unidades de \(self.nome) não disponível no estoque. Atualmente existem \(self.quantidade) unidades disponíveis.")
        }
    }
}

class Bebida: Produto {
    private var fabricante: String
    private var tipo: String
    private var volumeDaUnidade: String
    private var id: Double
    private var dataDeVencimento: Date
    private var gelada: Bool
    
    init(nome: String, fornecedor: String, quantidade: Double, preco: Float, dataDeFabricacao: Date, descricao: String, fabricante: String, tipo: String, volumeDaUnidade: String, id: Double, dataDeVencimento: Date, gelada: Bool) {
        self.fabricante = fabricante
        self.tipo = tipo
        self.volumeDaUnidade = volumeDaUnidade
        self.id = id
        self.dataDeVencimento = dataDeVencimento
        self.gelada = gelada
        
        super.init(nome: nome, fornecedor: fornecedor, quantidade: quantidade, preco: preco, dataDeFabricacao: dataDeFabricacao, descricao: descricao)
    }
    
    func getFabricante() -> String {
        return self.fabricante;
    }
    
    func getTipo() -> String {
        return self.tipo;
    }
    
    func getVolumeDaUnidade() -> String {
        return self.volumeDaUnidade;
    }
    
    func getId() -> Double {
        self.id;
    }
    
    func getDataDeVencimento() -> Date {
        return self.dataDeVencimento;
    }
    func getGelada() -> Bool {
        return self.gelada;
    }
    
    func setFabricante(fabricante: String) {
        return self.fabricante = fabricante;
    }
    
    func setTipo (_ tipo: String) {
        return self.tipo = tipo;
    }
    
    func setVolumeDaUnidade(_ volumeDaUnidade:String) {
        return self.volumeDaUnidade = volumeDaUnidade;
    }
    
    func setId(_ id: Double) {
        self.id = id;
    }
    
    func setDataDeVencimento(_ dataDeVencimento: Date) {
        return self.dataDeVencimento = dataDeVencimento;
    }
    func setGelada(_ gelada: Bool) {
        return self.gelada = gelada;
    }
    
    override func getInfo() -> String {
        return (super.getInfo() + "Fabricante: \(fabricante) \nTipo: \(tipo) \nVolume da Unidade: \(volumeDaUnidade)\nId: \(id) \nData de Vencimento: \(dataDeVencimento) \nGelada: \(gelada)");
    }
}

class Comida: Produto {
    private var fabricante: String
    private var tipo: String
    private var tipoDeUnidade: String
    private var id: Double
    private var dataDeVencimento: Date
    private var congelada: Bool
    
    init(nome: String, fornecedor: String, quantidade: Double, preco: Float, dataDeFabricacao: Date, descricao: String, fabricante: String, tipo: String, tipoDeUnidade: String, id: Double, dataDeVencimento: Date, congelada: Bool) {
        self.fabricante = fabricante
        self.tipo = tipo
        self.tipoDeUnidade = tipoDeUnidade
        self.id = id
        self.dataDeVencimento = dataDeVencimento
        self.congelada = congelada
        
        super.init(nome: nome, fornecedor: fornecedor, quantidade: quantidade, preco: preco, dataDeFabricacao: dataDeFabricacao, descricao: descricao)
    }
    
    func getFabricante() -> String {
        return self.fabricante;
    }
    
    func getTipo() -> String {
        return self.tipo;
    }
    
    func getTipoDeUnidade() -> String {
        return self.tipoDeUnidade;
    }
    
    func getId() -> Double {
        self.id;
    }
    
    func getDataDeVencimento() -> Date {
        return self.dataDeVencimento;
    }
    func getCongelada() -> Bool {
        return self.congelada;
    }
    
    func setFabricante(fabricante: String) {
        return self.fabricante = fabricante;
    }
    
    func setTipo (tipo: String) {
        return self.tipo = tipo;
    }
    
    func setTipoDeUnidade(tipoDeUnidade: String) {
        return self.tipoDeUnidade = tipoDeUnidade;
    }
    
    func setId(id: Double) {
        self.id = id;
    }
    
    func setDataDeVencimento(dataDeVencimento: Date) {
        return self.dataDeVencimento = dataDeVencimento;
    }
    func setCongelada(congelada: Bool) {
        return self.congelada = congelada;
    }
    
    override func getInfo() -> String {
        return (super.getInfo() + "Fabricante: \(fabricante) \nTipo: \(tipo) \nTipo de Unidade: \(tipoDeUnidade) \nId: \(id) \nData de Vencimento: \(dataDeVencimento) \nCongelada: \(congelada)")
    }
}

let primeiroProduto = Produto(nome: "Produto 1", fornecedor: "Fornecedor 1", quantidade: 001, preco: 1.888, dataDeFabricacao: Date(), descricao: "Este é um ótimo produto");

let segundoProduto = Bebida(nome: "Produto 2", fornecedor: "Fornecedor 2", quantidade: 002, preco: 18.88, dataDeFabricacao: Date(), descricao: "Este é um ótimo produto", fabricante: "fabricante 1", tipo: "refrigerante", volumeDaUnidade: "ml", id: 123, dataDeVencimento: Date(), gelada: true);

let terceiroProduto = Comida(nome: "Produto 3", fornecedor: "Fornecedor 3", quantidade: 002, preco: 10, dataDeFabricacao: Date(), descricao: "Este é um ótimo produto", fabricante: "Fabricante 2", tipo: "Carne", tipoDeUnidade: "kg", id: 123, dataDeVencimento: Date(), congelada: true);

print("\(primeiroProduto.getInfo())\n")
print("\(segundoProduto.getInfo())\n")
print("\(terceiroProduto.getInfo())\n")

primeiroProduto.comprar(10)

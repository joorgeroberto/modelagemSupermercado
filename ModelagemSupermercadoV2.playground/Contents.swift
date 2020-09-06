import UIKit

//Classe pai
class Produto {
    //Atributos originais
    private var nome: String
    private var fornecedor: String
    private var quantidade: Double
    private var preco: Float
    private var dataDeFabricacao: Date
    private var descricao: String
    
    //Atributos dos filhos trazidos para o pai
    private var fabricante: String
    private var tipo: String
    private var id: Double
    private var dataDeVencimento: Date
    
    init(nome: String, fornecedor: String, quantidade: Double, preco: Float, dataDeFabricacao: Date, descricao: String, fabricante: String, tipo: String, id: Double, dataDeVencimento: Date) {
        self.nome = nome
        self.fornecedor = fornecedor
        self.quantidade = quantidade
        self.preco = preco
        self.dataDeFabricacao = dataDeFabricacao
        self.descricao = descricao
        
        self.fabricante = fabricante
        self.tipo = tipo
        self.id = id
        self.dataDeVencimento = dataDeVencimento
    }
    
    //Métodos iniciais
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
        return ("Nome: \(nome) \nFornecedor: \(fornecedor) \nData de Fabricação: \(dataDeFabricacao) \nQuantidade: \(quantidade) \nPreço: \(preco) \nDescrição: \(descricao)\n Fabricante: \(fabricante)\n Tipo: \(tipo)\n Id: \(id)\n Data de Vencimento: \(dataDeVencimento)")
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
    
    //Métodos dos filhos:
    func getFabricante() -> String {
        return self.fabricante;
    }
    
    func getTipo() -> String {
        return self.tipo;
    }
    
    func getId() -> Double {
        self.id;
    }
    
    func getDataDeVencimento() -> Date {
        return self.dataDeVencimento;
    }
    
    func setFabricante(fabricante: String) {
        return self.fabricante = fabricante;
    }
    
    func setTipo (_ tipo: String) {
        return self.tipo = tipo;
    }
    
    func setId(_ id: Double) {
        self.id = id;
    }
    
    func setDataDeVencimento(_ dataDeVencimento: Date) {
        return self.dataDeVencimento = dataDeVencimento;
    }
}

class Bebida: Produto {
    private var volumeDaUnidade: String
    private var gelada: Bool
    
    init(nome: String, fornecedor: String, quantidade: Double, preco: Float, dataDeFabricacao: Date, descricao: String, fabricante: String, tipo: String, volumeDaUnidade: String, id: Double, dataDeVencimento: Date, gelada: Bool) {
        self.volumeDaUnidade = volumeDaUnidade
        self.gelada = gelada
        
        super.init(nome: nome, fornecedor: fornecedor, quantidade: quantidade, preco: preco, dataDeFabricacao: dataDeFabricacao, descricao: descricao, fabricante: fabricante, tipo: tipo, id: id, dataDeVencimento: dataDeVencimento)
    }
    
    func getVolumeDaUnidade() -> String {
        return self.volumeDaUnidade;
    }
    
    func getGelada() -> Bool {
        return self.gelada;
    }
    
    func setVolumeDaUnidade(_ volumeDaUnidade:String) {
        return self.volumeDaUnidade = volumeDaUnidade;
    }
    
    func setGelada(_ gelada: Bool) {
        return self.gelada = gelada;
    }
    
    override func getInfo() -> String {
        return (super.getInfo() + "\nVolume da Unidade: \(volumeDaUnidade)\n Gelada: \(gelada)");
    }
}

class Comida: Produto {
    private var tipoDeUnidade: String
    private var congelada: Bool
    
    init(nome: String, fornecedor: String, quantidade: Double, preco: Float, dataDeFabricacao: Date, descricao: String, fabricante: String, tipo: String, tipoDeUnidade: String, id: Double, dataDeVencimento: Date, congelada: Bool) {
        self.tipoDeUnidade = tipoDeUnidade
        self.congelada = congelada
        
        super.init(nome: nome, fornecedor: fornecedor, quantidade: quantidade, preco: preco, dataDeFabricacao: dataDeFabricacao, descricao: descricao, fabricante: fabricante, tipo: tipo, id: id, dataDeVencimento: dataDeVencimento)
    }
    
    func getTipoDeUnidade() -> String {
        return self.tipoDeUnidade;
    }
    
    func getCongelada() -> Bool {
        return self.congelada;
    }
    
    func setTipoDeUnidade(tipoDeUnidade: String) {
        return self.tipoDeUnidade = tipoDeUnidade;
    }
    
    func setCongelada(congelada: Bool) {
        return self.congelada = congelada;
    }
    
    override func getInfo() -> String {
        return (super.getInfo() + "Tipo de Unidade: \(tipoDeUnidade)\n Congelada: \(congelada)")
    }
}

let primeiroProduto = Produto(nome: "Produto 1", fornecedor: "Fornecedor 1", quantidade: 001, preco: 30, dataDeFabricacao: Date(), descricao: "Este é um ótimo produto", fabricante: "Fabricante 3", tipo: "Fruta", id: 001, dataDeVencimento: Date());

let segundoProduto = Bebida(nome: "Produto 2", fornecedor: "Fornecedor 2", quantidade: 002, preco: 18.88, dataDeFabricacao: Date(), descricao: "Este é um ótimo produto", fabricante: "fabricante 1", tipo: "Refrigerante", volumeDaUnidade: "ml", id: 010, dataDeVencimento: Date(), gelada: true);

let terceiroProduto = Comida(nome: "Produto 3", fornecedor: "Fornecedor 3", quantidade: 002, preco: 10, dataDeFabricacao: Date(), descricao: "Este é um ótimo produto", fabricante: "Fabricante 2", tipo: "Carne", tipoDeUnidade: "kg", id: 011, dataDeVencimento: Date(), congelada: true);

print("\(primeiroProduto.getInfo())\n")
print("\(segundoProduto.getInfo())\n")
print("\(terceiroProduto.getInfo())\n")

primeiroProduto.comprar(10)

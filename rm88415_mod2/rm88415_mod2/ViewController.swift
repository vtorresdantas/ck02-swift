import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtAno: UITextField!
    @IBOutlet weak var switchAirbag: UISwitch!
    
    // Objeto global para armazenar os detalhes do carro
    var carro: Carro?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Ação do primeiro botão
    @IBAction func exibirDetalhes(_ sender: Any) {
        // Criar um objeto Carro e passar os dados das caixas de texto para ele
        carro = Carro(marca: txtMarca.text ?? "", modelo: txtModelo.text ?? "", anoFabricacao: Int(txtAno.text ?? "") ?? 0, possuiAirbag: switchAirbag.isOn)
        
        // Apresentar todos os dados do objeto em um UIAlertController
        if let carro = carro {
            let detalhes = carro.exibirDetalhes()
            exibirMensagem(detalhes)
        }
    }
    
    
    @IBAction func limparDetalhes(_ sender: Any) {
        
        // Limpar os detalhes do carro
           carro = nil
           
           // Limpar os textFields
           txtMarca.text = ""
           txtModelo.text = ""
           txtAno.text = ""
           switchAirbag.isOn = false
           
           // Exibir uma mensagem para indicar que os detalhes foram limpos
           exibirMensagem("Detalhes do carro foram limpos.")
    }

    
    // Função para exibir uma mensagem em um UIAlertController
    func exibirMensagem(_ mensagem: String) {
        let alertController = UIAlertController(title: "Detalhes do Carro", message: mensagem, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}

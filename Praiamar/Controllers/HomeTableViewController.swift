//
//  HomeTableViewController.swift
//  Praiamar Piloto
//
//  Created by abmarques on 10/06/18.
//  Copyright © 2018 abmarques. All rights reserved.
//

import UIKit
import MapKit


class HomeTableViewController: UITableViewController {
    
    var praias: [Praia] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var praia: Praia
        
        praia = Praia(titulo: "Praia de Boa Viagem", descricao: "Boa Viagem é a praia mais famosa de Recife, e uma das mais conhecidas de Pernambuco. Com cerca de 7 Km, a praia da Boa Viagem fica entre as praias do Pina e da Piedade, e é caracterizada por seu mar tranquilo, sendo conhecida como uma das mais belas praias urbanas do Brasil. Praia de muitos recifes naturais. Quando a maré esta baixa é possível caminhar sobre eles e tomar banho nas piscinas naturais que se formam. Quando a maré sobe, os recifes ficam completamente cobertos. Em sua orla, ficam diversos edifícios residenciais, além de alguns bares, restaurantes e hotéis. No calçadão da praia da Boa Viagem é possível encontrar diversos quiosques, que vendem principalmente água de côco, e ambulantes que vendem petiscos diversos.", imagem: #imageLiteral(resourceName: "praiadeboaviagem"), urlDoRestaurante: URL(string: "https://www.google.com/search?source=hp&ei=YXUmW6OUKMPGwASZsreYBg&q=restaurantes+em+boa+viagem&oq=restaurantes+em+boa+viagem&gs_l=psy-ab.3..35i39k1l2j0i131k1j0l2j0i131k1j0l2j0i131k1j0.39955.43800.0.52910.27.3.0.0.0.0.734.734.6-1.1.0....0...1c.1.64.psy-ab..26.1.734.0...0.Ywvxd6LkkJo")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=pHUmW6TYKYOGwgSEoL6gDA&q=hoteis+em+boa+viagem&oq=hoteis+em+boa+viagem&gs_l=psy-ab.3..35i39k1j0l3j0i7i30k1l3j0j0i7i30k1l2.98565.99458.0.100069.6.6.0.0.0.0.462.839.3-1j1.2.0....0...1c.1.64.psy-ab..4.2.839....0.rMv4ncTk6z8")!, latitudeDaPraia: -8.132354, longitudeDaPraia: -34.899853)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia de Maracaípe", descricao: "O nome vem da combinação de Maraca, que é um instrumento musical indígena, com Ipê, árvore muito encontrada na região. Daí o nome dado pelos índios Tupi-Guarani de Maracaípe. A praia de Maracaípe fica à 2 km de Porto de Galinhas, direção Sul. A praia é bastante tranquila e bonita. Tem areias brancas, fofas e repletas de coqueiros. Possui, ainda, uma grande área de cajueiros. Maraca, como é chamada pelos frequentadores, é muito procurada por surfistas, e tem se tornado palco de muitos campeonatos tanto nacionais como internacionais de surf. No Pontal de Maracaípe, que fica mais ao sul da praia, em direção a praia de Serrambi, quando a maré baixa, os arrecifes formam belíssimas piscinas naturais. A beira mar encontra-se bares e restaurantes que servem o ano todo. A praia possui pousadas de todos os preços e todas bem aconchegantes. Pode-se alugar cavalos ou se aventurar pelos mangues.", imagem: #imageLiteral(resourceName: "praiademaracaipe"), urlDoRestaurante: URL(string:"https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=pHUmW6TYKYOGwgSEoL6gDA&q=restaurantes+em+maracaipe&oq=restaurantes+em+maraca&gs_l=psy-ab.3.0.35i39k1j0l4j0i22i30k1l5.2471.3789.0.4871.6.6.0.0.0.0.303.761.0j1j0j2.3.0....0...1c.1.64.psy-ab..3.3.760....0.BxLyDkB02Ps")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=t3YmW4CCEsS8wASMn5moDQ&q=hoteis+em+maracaipe&oq=hoteis+em+maracaipe&gs_l=psy-ab.3...67534.68223.0.68471.6.6.0.0.0.0.0.0..0.0....0...1c.1.64.psy-ab..6.0.0....0.oP-p8Rx7yew")!, latitudeDaPraia: -8.524437, longitudeDaPraia: -35.007490)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia de Serrambi", descricao: "Abençoada pela Igreja do Outeiro e vizinha de Maracaípe, a Praia de Serrambi parece feita para veranistas, lugar certo para quem quer descansar, curtir a paz das férias e deixar a agitação para a vizinha Praia de Porto de Galinhas, a 14 Km de distância. Na Praia de Serrambi a pequena vila de pescadores dá o tom do sossego, emprestando ainda mais charme à simplicidade da vida local, que contrasta com a exuberância da natureza. Serrambi é um pontal que avança sobre o mar, por um lado totalmente protegido por recifes de corais formando irresistíveis piscinas naturais de águas límpidas e mornas e, por outro lado, uma tranquila enseada, ideal para a prática de todos os esportes náuticos a qualquer hora. Um lugar fácil de chegar, que reserva a mais bela e fantástica praia do Nordeste, onde a única coisa difícil vai ser você querer sair.", imagem: #imageLiteral(resourceName: "praiadeserrambi"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=t3YmW4CCEsS8wASMn5moDQ&q=restaurantes+em+serrambi&oq=restaurantes+em+serrambi&gs_l=psy-ab.3...1118.2150.0.3430.8.7.0.0.0.0.0.0..0.0....0...1c.1.64.psy-ab..8.0.0....0.iKjBA6KYHAE")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=RncmW-n7F4KxwASA7JHQCQ&q=hoteis+em+serrambi&oq=hoteis+em+serrambi&gs_l=psy-ab.3...17134.17773.0.17954.6.6.0.0.0.0.270.270.2-1.1.0....0...1c.1.64.psy-ab..5.1.269...0i7i30k1.0.1lWZvSOLXFE")!, latitudeDaPraia: -8.559509, longitudeDaPraia: -35.01626)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia de Candeias", descricao: "Conhecida como uma das maiores praias da cidade do Jaboatão dos Guararapes, conta com aproximadamente 3 quilômetros de beleza e tranquilidade. Seu clima agradável costuma atrair diversos turistas durante a alta temporada, que encontram nessa praia a oportunidade ideal para relaxar, tomar um refrescante banho de mar e se desligar da rotina agitada. Conta com uma larga faixa de areia dourada, o mar é levemente agitado, com boas ondas e águas transparentes, propício para o banho e prática de esportes náuticos. É uma boa opção para um agradável dia na praia, seja para descansar ou para fazer algum exercício. Uma caminhada ao entardecer é uma boa opção. No verão, jovens aproveitam para jogar futebol e vôlei. O lugar conta com boa infraestrutura, e o visitante pode desfrutar de um petisco è beira-mar.", imagem: #imageLiteral(resourceName: "praiadeboaviagem"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=RncmW-n7F4KxwASA7JHQCQ&q=restaurantes+em+candeias&oq=restaurantes+em+candeias&gs_l=psy-ab.3...933.1655.0.1824.8.6.0.0.0.0.0.0..0.0....0...1c.1.64.psy-ab..8.0.0....0.XrYyM9gbYGo")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=j3cmW8XoI4ODwgT_uJWwBw&q=hoteis+em+candeias&oq=hoteis+em+candeias&gs_l=psy-ab.3...18857.19485.0.19643.6.6.0.0.0.0.189.354.0j2.2.0....0...1c.1.64.psy-ab..5.1.188...0i7i30k1.0.58ymOm3mvaA")!, latitudeDaPraia: -8.197452, longitudeDaPraia: -34.916857)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia do Paiva", descricao: "Praia de grande extensão e tranquilidade, é considerada um dos refúgios da cidade. De clima sossegado, é ideal para os que buscam um bom lugar para relaxar. Pouco explorada pelo turismo, essa praia mantém sua mata nativa preservada, assim como suas belezas naturais. Ainda não é muito conhecida por turistas que visitam a cidade, sendo normalmente frequentada por moradores próximos e pescadores. Conta com uma boa faixa de areia dourada e fofa, o mar é agitado, com formação de boas ondas. De águas cristalinas, é ideal para o banho e prática de esportes náuticos. Durante o verão, diversos surfistas costumam procurar o lugar, onde aproveitam para treinar suas manobras. Vegetação nativa e coqueiros completam a beleza do lugar. Uma boa dica é levar alimentos e bebidas para que não aconteçam imprevistos.", imagem: #imageLiteral(resourceName: "praiadopaiva 01-35-14-346"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=j3cmW8XoI4ODwgT_uJWwBw&q=restaurantes+na+praia+do+paiva&oq=restaurantes+na+praia+do+paiva&gs_l=psy-ab.3..35i39k1j0i22i30k1l2.6101.10746.0.11087.20.17.0.0.0.0.311.2226.0j7j3j1.11.0....0...1c.1.64.psy-ab..9.11.2225...0j0i67k1j0i131k1.0.uIXLLPe2ihA")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=z3cmW7m_OoqYwASp5Iq4Aw&q=hoteis+na+praia+do+paiva&oq=hoteis+na+praia+do+paiva&gs_l=psy-ab.3...16125.16745.0.16908.6.6.0.0.0.0.188.354.0j2.2.0....0...1c.1.64.psy-ab..5.1.164...0i7i30k1.0.znW3RwkBeiQ")!, latitudeDaPraia: -8.260106, longitudeDaPraia: -34.945179)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia de Olinda", descricao: "Considerada um dos cartões postais do litoral pernambucano, a cidade é conhecida por sua beleza, suas ladeiras e por ser tombada como Patrimônio Histórico e Cultural da Humanidade. Costuma receber um grande número de turistas todos os anos, que aproveitam para relaxar, tomar um delicioso banho de mar e conhecer o centro da cidade, com suas construções antigas. Muito próxima à Recife, recebe muitos visitantes vindos de lá, que se encantam com as belas paisagens e clima agradável do lugar. Com diversos atrativos, conta com belas praias, com destaque para a Praia de Bairro Novo, uma das mais movimentadas da cidade. É uma boa opção para passar alguns dias de férias, para relaxar e conhecer o centro histórico do município. Conta com boa infraestrutura de pousadas, hotéis, bares e restaurantes.", imagem: #imageLiteral(resourceName: "praiadeolinda3 01-35-14-313"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=z3cmW7m_OoqYwASp5Iq4Aw&q=restaurantes+na+praia+de+Olinda&oq=restaurantes+na+praia+de+Olinda&gs_l=psy-ab.3..35i39k1.4498.8856.0.8952.10.10.0.0.0.0.171.796.0j5.5.0....0...1c.1.64.psy-ab..5.5.795...0.0.2xiAMCYQ4Xg")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=N3gmW6bdG4OowgSb5oDIDQ&q=hoteis+na+praia+de+Olinda&oq=hoteis+na+praia+de+Olinda&gs_l=psy-ab.3..0i7i30k1l4.16093.16633.0.16758.6.5.0.0.0.0.202.365.0j1j1.2.0....0...1c.1.64.psy-ab..5.1.162....0.CIKeUlzzHvQ")!, latitudeDaPraia: -8.020317, longitudeDaPraia: -34.849201)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia do Janga", descricao: "Praia tranquila de mediana extensão, é conhecida como um dos refúgios da cidade. De clima agradável, costuma receber um bom número de turistas durante a alta temporada, que aproveitam para relaxar, tomar um refrescante banho de mar e repor as energias. É uma boa opção para os que preferem lugares menos movimentados, seja para descansar ou praticar algum esporte. Com uma larga faixa de areia dourada, essa praia conta com mar calmo, de águas transparentes, que mais parece uma piscina natural. É propício para o banho, inclusive de crianças e idosos, e para a prática de esportes como caiaque e jet ski. O lugar possui algumas casas e comércios próximos, mas uma boa dica é levar alimentos e bebidas para que não aconteçam imprevistos. ", imagem: #imageLiteral(resourceName: "praiademariafarinha 01-35-14-321"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=N3gmW6bdG4OowgSb5oDIDQ&q=restaurantes+na+praia+do+janga&oq=restaurantes+na+praia+do+janga&gs_l=psy-ab.3..35i39k1.1186.3123.0.3256.9.8.0.0.0.0.205.677.0j3j1.4.0....0...1c.1.64.psy-ab..5.4.674...0.0.3v--1BGI3eE")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=ZngmW6fwNYKjwATF3aLIDA&q=hoteis+na+praia+do+janga&oq=hoteis+na+praia+do+janga&gs_l=psy-ab.3...11443.11938.0.12039.6.5.0.0.0.0.156.156.0j1.1.0....0...1c.1.64.psy-ab..5.0.0....0.TEEMqlZ-SMY")!, latitudeDaPraia: -7.950830, longitudeDaPraia: -34.826590)
        praias.append(praia)
 
        praia = Praia(titulo: "Praia de Pau Amarelo", descricao: "Considerada um dos pequenos recantos da cidade, essa praia possui um clima aconchegante, que encanta os diversos turistas que chegam até o lugar durante a alta temporada. Sua tranquilidade e belo visual são o cenário ideal para um ótimo dia na praia, para relaxar, tomar um refrescante banho de mar e repor as energias. Conta com uma boa faixa de areia dourada e grossa, o mar é tranquilo, de águas transparentes, propício para o banho e principalmente para a prática de esportes náuticos, como vela e caiaque. No verão, o lugar costuma ser bastante procurado por famílias com crianças, que podem brincar e nadar sem preocupação. Com boa infraestrutura, conta com restaurantes simples, mas que servem bons pratos da culinária local. O visitante pode ainda desfrutar de um petisco à beira mar e relaxar.", imagem: #imageLiteral(resourceName: "praiadepauamarelo 01-35-14-311"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=ZngmW6fwNYKjwATF3aLIDA&q=restaurantes+na+praia+de+pau+amarelo&oq=restaurantes+na+praia+de+pau+amarelo&gs_l=psy-ab.3...2302.6151.0.6202.15.12.1.0.0.0.241.1650.0j7j2.9.0....0...1c.1.64.psy-ab..5.6.852...0j35i39k1j0i22i30k1.0.VC2RskRJMFg")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=kngmW8qZNsagwgSavLGwAg&q=hoteis+na+praia+de+pau+amarelo&oq=hoteis+na+praia+de+pau+amarelo&gs_l=psy-ab.3...10166.10710.0.10830.6.5.0.0.0.0.155.155.0j1.1.0....0...1c.1.64.psy-ab..5.0.0....0.1kDvkiHKZgs")!, latitudeDaPraia: -7.922808, longitudeDaPraia: -34.819637)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia de Maria Farinha", descricao: "Considerada um dos destinos turísticos mais belos do estado, essa praia é conhecida por sua tranquilidade e clima agradável. Costuma receber um bom número de turistas durante a alta temporada, mas ainda não é um lugar muito famoso entre os que visitam a cidade. O restante do ano fica raticamente deserta, recebendo alguns visitantes durante os feriados. Conta com uma larga faixa de areia dourada, o mar é calmo, de águas cristalinas, muito propício para o banho e para a prática de esportes como windsurf e jet ski. Cercada por mata nativa preservada, as árvores e coqueiros enfeitam a já bela paisagem do lugar, que é considerado um cenário ideal para os que buscam um bom lugar para relaxar. Conta com boa infraestrutura, e o visitante pode desfrutar de petiscos e água de coco gelada. ", imagem: #imageLiteral(resourceName: "praiademariafarinha 01-35-14-321"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=kngmW8qZNsagwgSavLGwAg&q=restaurantes+na+praia+de+maria+farinha&oq=restaurantes+na+praia+de+maria+&gs_l=psy-ab.3.0.35i39k1.1343.1932.0.3431.6.6.0.0.0.0.307.766.0j1j1j1.3.0....0...1c.1.64.psy-ab..3.3.765....0.DguXdEVRoic")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=uHgmW_nPL8ykwgT1iazwCA&q=hoteis+na+praia+de+maria+farinha&oq=hoteis+na+praia+de+maria+farinha&gs_l=psy-ab.3..0i7i30k1l2.9037.9543.0.9625.6.5.0.0.0.0.161.161.0j1.1.0....0...1c.1.64.psy-ab..5.1.161....0.b49hsTqfwVY")!, latitudeDaPraia: -7.857889, longitudeDaPraia: -34.836689)
        praias.append(praia)
        
        praia = Praia(titulo: "Praia de Ponta de Pedras", descricao: "Localizada no município de Goiana – PE a praia de Ponta de Pedras é uma das mais agitadas da região, concentrando uma grande quantidade de turistas em sua maioria dos interiores mais próximos e de Recife. De águas mornas e cristalinas a praia é uma ótima pedida para quem gosta de mergulho e pesca, pois em maré baixa é possível caminhar por grandes distâncias mar a dentro. Um dos atrativos turísticos da praia é o passeio de jangada até a parede de corais, onde encontra-se um banco de areia formando uma verdadeira piscina natural e cristalina. O passeio dura em média uma hora e o valor varia de jangadeiro para jangadeiro. Durante a noite, acontecem shows na praça da cidade, atraindo muitos jovens. Além disso, a praia fica bastante agitada no período que antecede o carnaval, com blocos locais e muita animação. Ótimo para quem quer um pouco de festa mas com o descanso que uma boa praia pode proporcionar.", imagem: #imageLiteral(resourceName: "praiadepontadepedras"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=uHgmW_nPL8ykwgT1iazwCA&q=restaurantes+na+praia+de+ponta+de+pedra&oq=restaurantes+na+praia+de+ponta&gs_l=psy-ab.3.0.35i39k1j0l4j0i22i30k1l5.2091.2598.0.3251.5.5.0.0.0.0.245.419.0j1j1.2.0....0...1c.1.64.psy-ab..3.2.416....0.gd-TrwmONRk")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=8HgmW9jNOoyowgSp34jgBA&q=hoteis+na+praia+de+ponta+de+pedra&oq=hoteis+na+praia+de+ponta+de+pedra&gs_l=psy-ab.3...11792.12304.0.12375.6.4.0.0.0.0.249.249.2-1.1.0....0...1c.1.64.psy-ab..6.0.0....0.H822700Kgnc")!, latitudeDaPraia: -7.633314, longitudeDaPraia: -34.812782)
        praias.append(praia)
        
        praia = Praia(titulo: "Ilha de Fernando de Noronha", descricao: "Falar das praias de Fernando de Noronha é falar um bocado de História, é falar de belezas naturais inigualáveis, é falar da natureza em sua melhor forma, é falar do paraíso. As praias de Fernando de Noronha, famosas no mundo inteiro, não dão uma página, dão um livro. Mas melhor do que falar delas é ir pessoalmente ver a cor incrível de suas águas, se surpreender com as formações rochosas, se encantar com as tartarugas e demais animais marinhos, é se encantar com a limpidez de uma água que não parece água, parece cristal. Por isso, tudo o que você encontrar aqui é só um começo, um esboço para que você termine o desenho desse “mundo” Fernando de Noronha lá mesmo. Patrimônio Mundial da Humanidade concedido pela Unesco, o arquipélago, lá em 1503 – quando, vamos combinar, devia ser tudo meio parecido – já chamava a atenção por sua beleza única, sendo descrito por Américo Vespúcio como um lugar de beleza única.", imagem: #imageLiteral(resourceName: "ilhadefernandonoronha"), urlDoRestaurante: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=8HgmW9jNOoyowgSp34jgBA&q=restaurantes+na+ilha+de+fernando+de+noronha&oq=restaurantes+na+ilha+de+fer&gs_l=psy-ab.3.2.33i22i29i30k1l5.2323.7180.0.8681.21.15.3.2.2.0.337.2077.0j9j1j1.11.0....0...1c.1.64.psy-ab..6.14.1780...0j35i39k1j0i67k1j0i22i30k1j0i22i10i30k1.0.H7nQR2z4AXk")!, urlDoHotel: URL(string: "https://www.google.com/search?client=psy-ab&hl=pt-BR&ei=GHkmW8nUFoO9wATIubu4Dg&q=hoteis+na+ilha+de+fernando+de+noronha&oq=hoteis+na+ilha+de+fernando+de+noronha&gs_l=psy-ab.3..0i7i5i30k1.8628.9135.0.9224.6.5.0.0.0.0.167.167.0j1.1.0....0...1c.1.64.psy-ab..5.1.165....0.F9BrNzDu5-I")!, latitudeDaPraia: -3.874452, longitudeDaPraia: -32.424384)
        praias.append(praia)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return praias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let praia = praias[indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath) as! PraiaCelula
        
        celula.imageBackground.image = praia.imagem
        celula.praiaImageView.image = praia.imagem
        celula.tituloLabel.text = praia.titulo
        celula.descricaoLabel.text = praia.descricao
        
        celula.praiaImageView.layer.cornerRadius = 20
        celula.praiaImageView.clipsToBounds = true
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetalhePraia" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let praiaSelecionada = self.praias[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesPraiaViewController
                viewControllerDestino.praia = praiaSelecionada
            }
            
        }
        
    }
    
    @IBAction func maisInfo(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "maisInfo", sender: nil)
    }
    
    
    
    

}

import 'package:moneytalks/models/moeda.dart';

class MoedaRepository{
  static List<Moeda> tabela = [
    Moeda(nome: 'Bitcoin', icone: 'images/bitoin.png', preco: 164003.00, sigla: 'BTC'),
    Moeda(nome: 'Cardano', icone: 'images/cardano.png', preco: 1546.00, sigla: 'ADA'),
    Moeda(nome: 'Ethereum', icone: 'images/ethereum.png', preco: 63456.00, sigla: 'ETH'),
    Moeda(nome: 'UDSCoin', icone: 'images/usd-coin.png', preco: 5.00, sigla: 'USS'),
    Moeda(nome: 'Litecoin', icone: 'images/litecoin.png', preco: 3.34, sigla: 'LTC'),
    Moeda(nome: 'XRP', icone: 'images/xrp.png', preco: 3.34 , sigla: 'XRP'),
  ];
}
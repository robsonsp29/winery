import 'package:flutter/foundation.dart';
import 'package:winery_finder/domain/wine_product.dart';
import 'package:winery_finder/domain/winery.dart';

/// Repositório em memória para gerenciar vinhos, uvas, fotos, preços e links de pagamento à venda.
class WineRepository extends ChangeNotifier {
  WineRepository._();
  static final WineRepository instance = WineRepository._();

  final List<WineProduct> _wines = <WineProduct>[
    WineProduct(
      id: 'w1',
      wineryId: 'br_1', // Miolo
      name: 'Miolo Cuvée Tradition Brut',
      type: WineType.espumante,
      grape: 'Chardonnay & Pinot Noir',
      vintage: 'NV',
      price: 85.00,
      description: 'Espumante de cor amarela palha, perlage fina e persistente. Notas de frutas cítricas, brioche e toque floral.',
      imageUrl: 'https://images.unsplash.com/photo-1510812431401-41d2bd2722f3',
      paymentLink: 'https://loja.miolo.com.br/espumante-cuvee-brut',
    ),
    WineProduct(
      id: 'w2',
      wineryId: 'br_1', // Miolo
      name: 'Miolo Lote 43',
      type: WineType.tinto,
      grape: 'Merlot & Cabernet Sauvignon',
      vintage: '2020',
      price: 220.00,
      description: 'Vinho tinto ícone de cor rubi intensa, estagiou em barricas de carvalho francês. Aromas de ameixa e especiarias.',
      imageUrl: 'https://images.unsplash.com/photo-1506377247377-2a5b3b417ebb',
      paymentLink: 'https://loja.miolo.com.br/lote-43',
    ),
    WineProduct(
      id: 'w3',
      wineryId: 'br_2', // Casa Valduga
      name: 'Casa Valduga Gran Reserva 130',
      type: WineType.espumante,
      grape: 'Chardonnay',
      vintage: '2018',
      price: 190.00,
      description: 'Espumante pelo método tradicional, maturado 36 meses sobre borras. Aromas de amêndoas e pão torrado.',
      imageUrl: 'https://images.unsplash.com/photo-1563227812-0ea4c22e6cc8',
      paymentLink: 'https://loja.casavalduga.com.br/gran-reserva-130',
    ),
  ];

  List<WineProduct> getWinesForWinery(String wineryId) {
    return _wines.where((w) => w.wineryId == wineryId).toList();
  }

  void addWine(WineProduct wine) {
    _wines.add(wine);
    notifyListeners();
  }
}

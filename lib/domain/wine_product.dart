import 'package:winery_finder/domain/winery.dart';

/// Produto de vinho postado por uma vinícola para venda com preço, uva, foto, descrição e link de pagamento.
class WineProduct {
  const WineProduct({
    required this.id,
    required this.wineryId,
    required this.name,
    required this.type,
    required this.vintage,
    required this.price,
    this.grape = '',
    this.description = '',
    this.imageUrl = '',
    this.paymentLink = '',
  });

  final String id;
  final String wineryId;
  final String name;
  final WineType type;
  final String vintage; // Safra (ex: 2021, NV)
  final double price;
  final String grape; // Uva utilizada (ex: Merlot, Cabernet Sauvignon)
  final String description;
  final String imageUrl;
  final String paymentLink; // Link para pagamento (ex: MercadoPago, WhatsApp, Loja)

  WineProduct copyWith({
    String? id,
    String? wineryId,
    String? name,
    WineType? type,
    String? vintage,
    double? price,
    String? grape,
    String? description,
    String? imageUrl,
    String? paymentLink,
  }) {
    return WineProduct(
      id: id ?? this.id,
      wineryId: wineryId ?? this.wineryId,
      name: name ?? this.name,
      type: type ?? this.type,
      vintage: vintage ?? this.vintage,
      price: price ?? this.price,
      grape: grape ?? this.grape,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      paymentLink: paymentLink ?? this.paymentLink,
    );
  }
}

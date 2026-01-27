import 'package:flutter/material.dart';

class FlashSaleProduct {
  final String title;
  final String image;
  final double price;
  final double oldPrice;
  final int discount;

  const FlashSaleProduct({
    required this.title,
    required this.image,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });
}

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key});

  static const _products = [
    FlashSaleProduct(
      title: 'FS – Nike Air Max 270 React',
      image: 'image/image1.png',
      price: 299.43,
      oldPrice: 534.33,
      discount: 24,
    ),
    FlashSaleProduct(
      title: 'FS – QUILTED MAXI CROSS',
      image: 'image/image2.png',
      price: 299.43,
      oldPrice: 534.33,
      discount: 24,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40BFFF);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'Flash Sale',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // navigate to flash sale page
                  },
                  child: const Text(
                    'See More',
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          /// Horizontal list
          SizedBox(
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _products.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return _FlashSaleCard(product: _products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _FlashSaleCard extends StatelessWidget {
  final FlashSaleProduct product;

  const _FlashSaleCard({required this.product});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40BFFF);

    return Container(
      width: 170,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade100,
            ),
            alignment: Alignment.center,
            child: Image.asset(product.image, fit: BoxFit.contain),
          ),

          const SizedBox(height: 10),

          /// Title
          Text(
            product.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          /// Price
          Text(
            '\$${product.price.toStringAsFixed(2)}',
            style: const TextStyle(
              color: primary,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 6),

          /// Old price + discount
          Row(
            children: [
              Text(
                '\$${product.oldPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '${product.discount}% Off',
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

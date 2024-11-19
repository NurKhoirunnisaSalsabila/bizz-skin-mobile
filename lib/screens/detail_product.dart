import 'package:flutter/material.dart';
import 'package:bizz_skin_mobile/models/product_entry.dart';

class DetailProductPage extends StatelessWidget {
  final Welcome product;

  const DetailProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.fields.name,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                DetailRow(
                  label: 'Deskripsi:',
                  value: product.fields.description,
                ),
                const SizedBox(height: 8.0),
                DetailRow(
                  label: 'Harga:',
                  value: 'Rp ${product.fields.price}',
                ),
                const SizedBox(height: 8.0),
                DetailRow(
                  label: 'Tipe Kulit:',
                  value: product.fields.skinType,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
} 
import 'package:flutter/material.dart';
import 'package:bizz_skin_mobile/models/product_entry.dart';
import 'package:bizz_skin_mobile/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:bizz_skin_mobile/screens/detail_product.dart';

class ListProductEntryPage extends StatefulWidget {
  const ListProductEntryPage({super.key});

  @override
  State<ListProductEntryPage> createState() => _ListProductEntryPageState();
}

class _ListProductEntryPageState extends State<ListProductEntryPage> {
  Future<List<Welcome>> fetchProducts(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object Product
    List<Welcome> listProducts = [];
    for (var d in data) {
      if (d != null) {
        listProducts.add(Welcome.fromJson(d));
      }
    }
    return listProducts;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data product.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailProductPage(
                            product: snapshot.data![index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text("${snapshot.data![index].fields.description}"),
                          const SizedBox(height: 10),
                          Text("Rp ${snapshot.data![index].fields.price}"),
                          const SizedBox(height: 10),
                          Text("${snapshot.data![index].fields.skinType}"),
                          const SizedBox(height: 10),
                          const Text(
                            "Tap untuk melihat detail",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
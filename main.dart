import 'package:flutter/material.dart';

void main() {
  runApp(const FoodMenuApp());
}

class FoodMenuApp extends StatelessWidget {
  const FoodMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Menu',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const FoodMenuScreen(),
    );
  }
}

class FoodMenuScreen extends StatefulWidget {
  const FoodMenuScreen({super.key});

  @override
  State<FoodMenuScreen> createState() => _FoodMenuScreenState();
}

class _FoodMenuScreenState extends State<FoodMenuScreen> {
  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Burger',
      'price': '\$4.50',
      'imageUrl': 'https://imgs.search.brave.com/-ltNVMZZRTx3LSIYzeacLyugKrxIQqe2U6Z0aqdz27U/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNDk1/NTIwMjM0L3Bob3Rv/L2RlbGljaW91cy1o/YW1idXJnZXItb24t/d29vZC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9V1ZQS2NB/QVFrZVhqOXdPMFJJ/cFozM3ZrbU53aFNa/ZlNVMDZNVUUyWmJL/Zz0',
      'isFavorite': false
    },
    {
      'name': 'Pizza',
      'price': '\$8.00',
      'imageUrl': 'https://imgs.search.brave.com/Jr_kQY5iOlLXZJWVX9ezB1gPqdnuiCBwgfDAUHhM6BE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzdmL2Zk/LzUxLzdmZmQ1MWFh/M2NmZTgwYzZjMjNl/ZGU0ZjUyMzY2YmI5/LmpwZw',
      'isFavorite': false
    },
    {
      'name': 'Taco',
      'price': '\$3.50',
      'imageUrl': 'https://imgs.search.brave.com/nkobOL6zAmvfUobNR6OcXyYMWka_Exx1-wBy-VQWhxY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90YWNv/am9obnMuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDI2LzA2/L3RhY29fYnJhdm9f/MjAyNi5qcGc',
      'isFavorite': false
    },
    {
      'name': 'Sushi',
      'price': '\$12.00',
      'imageUrl': 'https://imgs.search.brave.com/ZuJ7KnyozOoYN5iiL9tQTtXkrNcqssYZbanucoWgZy4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tcHNk/L21vY2t1cC1zdXNo/aS1yb2xsLWNob3Bz/dGlja3NfNzU4OTEt/Mjg4MC5qcGc_Z2E9/R0ExLjEuMjY2OTM0/MzY5LjE3ODMzNDEz/NzImc2VtdD1haXNf/aHlicmlkJnc9NzQw/JnE9ODA',
      'isFavorite': false
    },
    {
      'name': 'Pasta',
      'price': '\$9.00',
      'imageUrl': 'https://imgs.search.brave.com/ArCmt3MInWg77rZEtzRE7WkdDBGGtvRPunnzQF-SrU0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YWxscmVjaXBlcy5j/b20vdGhtYi9GcUpU/eTIxbkZZNDBKZWhR/dDU5MEduM0dDMUk9/LzE1MDB4MC9maWx0/ZXJzOm5vX3Vwc2Nh/bGUoKTptYXhfYnl0/ZXMoMTUwMDAwKTpz/dHJpcF9pY2MoKS8y/MzY3MTUtTGVtb24t/QnV0dGVyLUhlcmIt/UGFzdGEtRERNRlMt/NHgzLWRjOWRkNzA3/NjNiODQ0ZTA5MGNm/NGU4YTU2MzgyYWZm/LmpwZw',
      'isFavorite': false
    },
    {
      'name': 'Salad',
      'price': '\$5.00',
      'imageUrl': 'https://imgs.search.brave.com/avXk_mNo2RY05NRu185UZhtzgaB8fpJ8hH51CyokBTo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxNS8x/Mi8xNi8wOS80MC9z/YWxhZC1wbGF0ZS0x/MDk1NjQ4XzY0MC5q/cGc',
      'isFavorite': false
    },
    {
      'name': 'Ice Cream',
      'price': '\$3.00',
      'imageUrl': 'https://imgs.search.brave.com/0PWVn-x0w3EshKizw8SwPINBnhL-67jAGNUcM81H7vE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjIv/MjU1LzY5My9zbWFs/bC9pY2UtY3JlYW0t/d2l0aC1jaG9jb2xh/dGUtYW5kLWNhcmFt/ZWwtb24tYS15ZWxs/b3ctYmFja2dyb3Vu/ZC0zZC1yZW5kZXJp/bmctZ2VuZXJhdGl2/ZS1haS1waG90by5q/cGc',
      'isFavorite': false
    },
    {
      'name': 'Donut',
      'price': '\$2.50',
      'imageUrl': 'https://imgs.search.brave.com/Fe5NebQtg_v3VGE1S_eHJdfEVzgxzwh9cKITM27NtBw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbHVz/LnVuc3BsYXNoLmNv/bS9wcmVtaXVtX3Bo/b3RvLTE2ODMxMjE4/MjMzMTAtMTIxZTVm/ZTVhMDZkP2ZtPWpw/ZyZxPTYwJnc9MzAw/MCZhdXRvPWZvcm1h/dCZmaXQ9Y3JvcCZp/eGxpYj1yYi00LjEu/MCZpeGlkPU0zd3hN/akEzZkRCOE1IeHpa/V0Z5WTJoOE1YeDha/Rzl1ZFhSOFpXNThN/SHg4TUh4OGZEQT0',
      'isFavorite': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final item = foodItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item['imageUrl'],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 50,
                      height: 50,
                      color: Colors.deepOrange[100],
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.deepOrange,
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey[200],
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              ),
              title: Text(
                item['name'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Subtitle (Price)
              subtitle: Text(
                'Price: ${item['price']}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              // Trailing Favorite Icon
              trailing: IconButton(
                icon: Icon(
                  item['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                  color: item['isFavorite'] ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    item['isFavorite'] = !item['isFavorite'];
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarketplaceScreen(),
    );
  }
}

class MarketplaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Handle bucketlist button press
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image on top of the Top Section
            Image.network(
              'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.searchenginejournal.com%2Fwp-content%2Fuploads%2F2020%2F01%2Fresponsive-display-ads-5e260c98e00db.jpg&tbnid=1ue-_6LaBubNJM&vet=12ahUKEwjVu-DuqMWCAxXDoOkKHV-CDfoQMygFegQIARA3..i&imgrefurl=https%3A%2F%2Fwww.searchenginejournal.com%2Fwhy-run-responsive-display-ads%2F344261%2F&docid=8sf2_THlU01nkM&w=1600&h=840&q=ads%20image&ved=2ahUKEwjVu-DuqMWCAxXDoOkKHV-CDfoQMygFegQIARA3',
              height: 150.0, // Adjust the height as needed
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Text on top of the Top Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Semua Produk',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Top Section - Category Bar
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategory('Promosi'),
                  _buildCategory('Nama Produk'),
                  _buildCategory('Terlaris'),
                ],
              ),
            ),

            // Bottom Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                // Add your list of items here
                // Example Items
                children: [
                  Row(
                    children: [
                      _buildProductItem('Product 1', 'Description of Product 1'),
                      _buildProductItem('Product 2', 'Description of Product 2'),
                    ],
                  ),
                  // Add more rows as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String categoryName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        categoryName,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildProductItem(String productName, String productDescription) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // Add border styling here
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            SizedBox(height: 8.0),
            Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(productDescription),
            ElevatedButton(
              onPressed: () {
                // Handle add to bucket button press
              },
              child: Text('Add to Bucket'),
            ),
          ],
        ),
      ),
    );
  }
}

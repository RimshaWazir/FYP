import 'package:flutter/material.dart';

import '../app/mediaquery.dart';

class AddProductWidget extends StatelessWidget {
  final TextEditingController _productname = TextEditingController();
  final TextEditingController _company = TextEditingController();
  final TextEditingController _supplier = TextEditingController();
  final TextEditingController _category = TextEditingController();
  AddProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Add New Product")),
                Row(
                  children: [
                    Text("Product Name"),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: _productname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Company"),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: _company,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Supplier Name"),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: _supplier,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Category"),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: _category,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

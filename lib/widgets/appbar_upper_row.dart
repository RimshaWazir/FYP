import 'package:flutter/material.dart';

import '../app/colors.dart';

class AppbarUpperRow extends StatelessWidget {
  const AppbarUpperRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Distribution Management System",
              style: TextStyle(color: color),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text("Invoice"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Invoice"),
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text("Invoice"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Invoice"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.logout)))
      ],
    );
  }
}

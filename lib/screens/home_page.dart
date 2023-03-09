import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/colors.dart';

import '../app/mediaquery.dart';
import '../widgets/add_product_widget.dart';
import '../widgets/appbar_upper_row.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/drawerheader.dart';
import '../widgets/extracredFunction.dart';
import '../widgets/grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _bodyWidget = const DashboardBody();

  void _updateBodyWidget(Widget widget) {
    setState(() {
      _bodyWidget = widget;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        iconTheme: IconThemeData(color: color),
        backgroundColor: Colors.white,
        title: const AppbarUpperRow(),
      ),
      drawer: SideDrawer(context),
      body: _bodyWidget,
    );
  }

  Drawer SideDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 136, 0),
      child: Column(
        children: [
          const DrawerHeaderPortion(),
          ListTile(
            leading: const Icon(
              Icons.explore,
            ),
            title: const Text('Dashboard'),
            onTap: () {
              _updateBodyWidget(
                DashboardBody(),
              );
            },
          ),
          sideBarTile("Product", "Add Product", "Manage Product", () {
            _updateBodyWidget(AddProductWidget());
          }, anotherontap: () {
            _updateBodyWidget(
              const Center(
                child: Text('Manage Product Body'),
              ),
            );
          }),
          sideBarTile(
            "Invoice",
            "Add Invoice",
            "Manage Invoice",
            () {
              _updateBodyWidget(
                const Center(
                  child: Text('Add Invoice Body'),
                ),
              );
            },
          ),
          sideBarTile(
            "Invoice",
            "Add Invoice",
            "Manage Invoice",
            () {
              _updateBodyWidget(
                const Center(
                  child: Text('Add Invoice Body'),
                ),
              );
            },
            anotherontap: () {
              _updateBodyWidget(
                const Center(
                  child: Text('Manage Manage Body'),
                ),
              );
            },
            thirdontap: () {
              _updateBodyWidget(
                const Center(
                  child: Text('Manage Manage Body'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

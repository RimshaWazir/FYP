import 'package:flutter/material.dart';

import '../app/colors.dart';
import '../app/mediaquery.dart';
import 'grid.dart';
import 'history_detail_table.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: GridRow(),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 80, left: 80, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: screenHeight(context) * 0.3,
                    width: screenWidth(context) * 0.3,
                    decoration: BoxDecoration(color: color),
                  ),
                ),
                SizedBox(
                  width: screenWidth(context) * 0.25,
                ),
                HistoryDetailTable(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

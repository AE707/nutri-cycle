import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:period_app/bar_graph/bar_data.dart';

class MyBarGraph1 extends StatelessWidget {
  final List val1;
  const MyBarGraph1({super.key, required this.val1});

  @override
  Widget build(BuildContext context) {
    //initialize bar data
    BarData myBarData = BarData(
      oestrogenes: val1[0],
      prostrogene: val1[0],
      lH: val1[0],
    );
    myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: const FlGridData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        titlesData: const FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 25,
              showTitles: true,
              getTitlesWidget: getBottomTitles,
            ),
          ),
        ),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: Colors.grey[800],
                    width: 25,
                    borderRadius: BorderRadius.circular(4),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Colors.grey[200],
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  var style = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: Colors.grey[800],
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = Text(
        'Oestrogenes',
        style: style,
      );
      break;
    case 1:
      text = Text(
        'Prostrogene',
        style: style,
      );
      break;
    case 2:
      text = Text(
        'LH',
        style: style,
      );
      break;
    default:
      text = Text(
        '',
        style: style,
      );
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}

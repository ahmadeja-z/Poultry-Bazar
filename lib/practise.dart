import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poultry/app/resources/assets/app_fonts.dart';

import 'app/resources/app_colors/app_colors.dart';

class Practise extends StatelessWidget {
  Practise({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Container(
          width: 360.w,
          height: 280.h,

          child: LineChart(
            LineChartData(
              // Titles for left and bottom axes
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 32,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 0:
                          return CustomTextWidget(text: 'JAN',);
                        case 2:
                          return CustomTextWidget(text: 'FAB',);
                        case 4:
                          return CustomTextWidget(text: 'MAR',);
                        case 6:
                          return CustomTextWidget(text: 'APR',);
                        case 8:
                          return CustomTextWidget(text: 'MAY',);

                        default:
                          return Text('');
                      }
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      if (value % 1 == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 20),
                          child: Text(
                            value.toInt().toString(),
                            style:TextStyle(
                              fontFamily: AppFonts.poppins,
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }
                      return const Text('');
                    },
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),



              gridData: FlGridData(show: false),


              backgroundColor: Colors.transparent,
              extraLinesData: ExtraLinesData(

                  verticalLines: [
                VerticalLine(
                  x: 1,
                  color: AppColors.grey.withOpacity(0.05),
                  strokeWidth: 45,
                  strokeCap: StrokeCap.butt
                ),
                VerticalLine(
                  x: 3,
                  color: AppColors.grey.withOpacity(0.05),
                  strokeWidth: 45,
                  strokeCap: StrokeCap.butt
                ),  VerticalLine(
                        x: 5,
                        color: AppColors.grey.withOpacity(0.05),
                        strokeWidth: 45,
                        strokeCap: StrokeCap.butt
                    ),  VerticalLine(
                        x: 7,
                        color: AppColors.grey.withOpacity(0.05),
                        strokeWidth: 45,
                        strokeCap: StrokeCap.butt
                    ),  VerticalLine(
                        x: 8.9,
                        color: AppColors.grey.withOpacity(0.05),
                        strokeWidth: 45,
                        strokeCap: StrokeCap.butt
                    ),

              ]),

              // Border Data
              borderData: FlBorderData(
                show: true,
                border: Border(
                  bottom: BorderSide(color: Colors.transparent),
                  left: const BorderSide(color: Colors.transparent),
                  right: const BorderSide(color: Colors.transparent),
                  top: const BorderSide(color: Colors.transparent),
                ),
              ),

              // Data for the chart lines
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 4),
                    FlSpot(2, 9.2),
                    FlSpot(4, 8),
                    FlSpot(6, 10),
                    FlSpot(8, 6),
                    FlSpot(10, 8),
                  ],
                  color: AppColors.primaryYellow,
                  isCurved: true,
                  barWidth: 4,
                  isStrokeCapRound: true,
                  dotData: FlDotData(show: true),
                  belowBarData: BarAreaData(show: false),
                ),
                LineChartBarData(
                  spots: [
                    FlSpot(0, 8),
                    FlSpot(2, 6),
                    FlSpot(4, 7),
                    FlSpot(6, 9),
                    FlSpot(8, 5),
                    FlSpot(10, 6),
                  ],
                  color: AppColors.grey,
                  isCurved: true,
                  barWidth: 4,
                  isStrokeCapRound: true,
                  dotData: FlDotData(show: false),
                  belowBarData: BarAreaData(show: false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextWidget extends StatelessWidget {
  final String text;


   CustomTextWidget({
    Key? key,
    required this.text,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Text(
        text,
          style : TextStyle(
            fontFamily: AppFonts.poppins,
            color: AppColors.black,
            fontWeight: FontWeight.w400
          )
      ),
    );
  }
}

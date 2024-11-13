import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors/app_colors.dart';
import '../assets/app_fonts.dart';

class CustomGraph extends StatelessWidget {
  const CustomGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      return CustomTextWidget(
                        text: 'JAN',
                      );
                    case 2:
                      return CustomTextWidget(
                        text: 'FAB',
                      );
                    case 4:
                      return CustomTextWidget(
                        text: 'MAR',
                      );
                    case 6:
                      return CustomTextWidget(
                        text: 'APR',
                      );
                    case 8:
                      return CustomTextWidget(
                        text: 'MAY',
                      );
                    case 10:
                      return CustomTextWidget(text: 'JUN');
                    case 12:
                      return CustomTextWidget(text: 'JUL');
                    case 14:
                      return CustomTextWidget(text: 'AUG');
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
                      padding: const EdgeInsets.only(left: 8.0, top: 20),
                      child: Text(
                        value.toInt().toString(),
                        style: TextStyle(
                          fontFamily: AppFonts.poppins,
                          color: AppColors.darkGreen,
                          fontSize: 10.sp,
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
          extraLinesData: ExtraLinesData(verticalLines: [
            VerticalLine(
                x: 0.4,
                color: AppColors.grey.withOpacity(0.02),
                strokeWidth: 45.w,
                strokeCap: StrokeCap.butt),
            VerticalLine(
                x: 2.3,
                color: AppColors.grey.withOpacity(0.03),
                strokeWidth: 45.w,
                strokeCap: StrokeCap.butt),
            VerticalLine(
                x: 4.3,
                color: AppColors.grey.withOpacity(0.03),
                strokeWidth: 45.w,
                strokeCap: StrokeCap.butt),
            VerticalLine(
                x: 6.3,
                color: AppColors.grey.withOpacity(0.03),
                strokeWidth: 45.w,
                strokeCap: StrokeCap.butt),
            VerticalLine(
                x: 8.25,
                color: AppColors.grey.withOpacity(0.03),
                strokeWidth: 45.w,
                strokeCap: StrokeCap.butt),
            VerticalLine(
                x: 10,
                color: AppColors.grey.withOpacity(0.03),
                strokeWidth: 30.w,
                strokeCap: StrokeCap.butt),
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
                FlSpot(4, 6),
                FlSpot(6, 12),
                FlSpot(8, 6),
                FlSpot(10, 8),
              ],
              color: AppColors.primaryYellow,
              isCurved: true,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
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
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Text(text,
          style: TextStyle(
              fontSize: 10.sp,
              fontFamily: AppFonts.poppins,
              color: AppColors.darkGreen,
              fontWeight: FontWeight.w400)),
    );
  }
}

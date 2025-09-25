import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChart extends StatelessWidget {
  const PerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 24),
          // FIX: Constrain chart to remaining height to prevent unbounded height in fl_chart
          Expanded(
            child: LineChart(
              _mainChartData(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Over All Performance',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The Years',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            _legendItem(const Color(0xFFE5989B), 'Pending Done'),
            const SizedBox(width: 20),
            _legendItem(const Color(0xFF6A5AE0), 'Project Done'),
          ],
        ),
      ],
    );
  }

  Widget _legendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF666666),
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  LineChartData _mainChartData() {
    return LineChartData(
      gridData: const FlGridData(show: false),
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(sideTitles: _leftTitles()),
        bottomTitles: AxisTitles(sideTitles: _bottomTitles()),
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1.5),
          left: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1.5),
        ),
      ),
      minX: 2015,
      maxX: 2020.5,
      minY: 0,
      maxY: 50,
      lineBarsData: [
        _projectDoneLine(),
        _pendingDoneLine(),
      ],
    );
  }

  SideTitles _leftTitles() {
    return SideTitles(
      showTitles: true,
      interval: 10,
      reservedSize: 30,
      getTitlesWidget: (value, meta) {
        if (value > 50) return const SizedBox.shrink();
        return Text(
          value.toInt().toString(),
          style: const TextStyle(color: Colors.grey, fontSize: 12),
          textAlign: TextAlign.left,
        );
      },
    );
  }

  SideTitles _bottomTitles() {
    const style = TextStyle(color: Colors.grey, fontSize: 12);
    return SideTitles(
      showTitles: true,
      interval: 1,
      reservedSize: 30,
      getTitlesWidget: (value, meta) {
        String text;
        switch (value.toInt()) {
          case 2015:
            text = '2015';
          case 2016:
            text = '2016';
          case 2017:
            text = '2017';
          case 2018:
            text = '2018';
          case 2019:
            text = '2019';
          case 2020:
            text = '2020';
          default:
            return const SizedBox.shrink();
        }
        return SideTitleWidget(
          axisSide: meta.axisSide,
          child: Text(text, style: style),
        );
      },
    );
  }

  LineChartBarData _projectDoneLine() {
    return LineChartBarData(
      isCurved: true,
      color: Colors.blue,
      barWidth: 4,
      spots: const [
        // 2015
        FlSpot(2015, 24),
        FlSpot(2015.5, 26),
        // 2016
        FlSpot(2016, 20),
        FlSpot(2016.5, 20),
        // 2017
        FlSpot(2017, 25),
        FlSpot(2017.5, 28),
        // 2018
        FlSpot(2018, 45),
        FlSpot(2018.5, 47),
        // 2019
        FlSpot(2019, 20),
        FlSpot(2019.5, 22),
        // 2020
        FlSpot(2020, 38),
        FlSpot(2020.5, 37),
      ],
      dotData: const FlDotData(show: false),
    );
  }

  LineChartBarData _pendingDoneLine() {
    return LineChartBarData(
      isCurved: true,
      color: Colors.red.shade300,
      barWidth: 4,
      spots: const [
        // 2015
        FlSpot(2015, 37),
        FlSpot(2015.5, 38),
        // 2016
        FlSpot(2016, 28),
        FlSpot(2016.5, 26),
        // 2017
        FlSpot(2017, 15),
        FlSpot(2017.5, 25),
        // 2018
        FlSpot(2018, 42),
        FlSpot(2018.5, 47),
        // 2019
        FlSpot(2019, 18),
        FlSpot(2019.5, 20),
        // 2020
        FlSpot(2020, 50),
        FlSpot(2020.5, 37),
      ],
      dotData: const FlDotData(show: false),
    );
  }
}

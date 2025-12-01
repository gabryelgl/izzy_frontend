import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class HalfDonutChart extends StatelessWidget {
  const HalfDonutChart({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    final List<_ChartData> chartData = [
      _ChartData('Progresso', progress),
      _ChartData('Faltando', 100 - progress),
    ];

    return Stack(
      alignment: Alignment.center,
      children: [
        // Gráfico
        SfCircularChart(
          margin: EdgeInsets.zero,
          series: <DoughnutSeries<_ChartData, String>>[
            DoughnutSeries<_ChartData, String>(
              dataSource: chartData,
              xValueMapper: (data, _) => data.label,
              yValueMapper: (data, _) => data.value,

              // Meia rosca
              startAngle: 0,
              endAngle: 360,

              // Tamanho
              innerRadius: '70%',
              radius: '80%',

              // Cores
              pointColorMapper: (data, index) {
                if (index == 0) {
                  return const Color(0xFF064668); // Progresso
                }
                return Colors.transparent; // Parte vazia
              },

              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
          ],
        ),

        // Texto do progresso alinhado na base do gráfico
        Align(
          alignment: Alignment(0, -0.15), // 0 = centro, 1 = fundo, -1 = topo
          child: Text(
            "${progress.toInt()}%",
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF064668),
            ),
          ),
        ),
      ],
    );
  }
}

class _ChartData {
  final String label;
  final double value;
  _ChartData(this.label, this.value);
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFF5EB)),
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: Column(
        spacing: 30,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF064668),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Icon(Icons.menu, color: Color(0xFF064668), size: 50),
                ],
              ),
              Text(
                "Olá, [user]",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF271608),
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  fontFamily: "Poppins, sans-serif",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFD777),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 160,
                height: 150,
                child: Stack(children: [HalfDonutChart(progress: 90)]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFA559),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 160,
                height: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

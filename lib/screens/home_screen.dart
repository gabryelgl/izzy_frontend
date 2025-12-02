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
        SfCircularChart(
          margin: EdgeInsets.zero,
          series: <DoughnutSeries<_ChartData, String>>[
            DoughnutSeries<_ChartData, String>(
              dataSource: chartData,
              xValueMapper: (data, _) => data.label,
              yValueMapper: (data, _) => data.value,

              startAngle: 0,
              endAngle: 360,

              innerRadius: '70%',
              radius: '70%',

              pointColorMapper: (data, index) {
                if (index == 0) {
                  return const Color(0xFFFFA559);
                }
                return Colors.transparent;
              },

              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
          ],
        ),

        Align(
          alignment: Alignment.center,
          child: Text(
            "${progress.toInt()}%",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: Color(0xFF271608),
              decoration: TextDecoration.none,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Olá, [user]",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF271608),
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF064668),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFD777),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 160,
                height: 150,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: HalfDonutChart(progress: 90),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Text(
                        "das tarefas concluídas",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF271608),
                          decoration: TextDecoration.none,
                          fontFamily: "Poppins, sans-serif",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFA559),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 160,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Precisa de ajuda?",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF271608),
                        decoration: TextDecoration.none,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Image.asset('assets/home/compass.png', height: 100),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xFF90C0DF),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "25",
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF271608),
                          fontFamily: "Poppins",
                          decoration: TextDecoration.none,
                          height: 1,
                        ),
                      ),
                      Text(
                        "terça",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF271608),
                          fontFamily: "Poppins",
                          decoration: TextDecoration.none,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  spacing: 15,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          "10:00",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF271608),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF064668),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFA559),
                                ),
                              ),
                              Text(
                                "rotina da manhã",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFF9ECCF),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          "10:00",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF271608),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF064668),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFA559),
                                ),
                              ),
                              Text(
                                "rotina da manhã",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFF9ECCF),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          "10:00",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF271608),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF064668),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFA559),
                                ),
                              ),
                              Text(
                                "rotina da manhã",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFF9ECCF),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Text(
                      "Sessão de foco",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF271608),
                        decoration: TextDecoration.none,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Image.asset('assets/home/prism.png', height: 100),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFB8D7EB),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 160,
                height: 150,
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mindfullness",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF271608),
                        decoration: TextDecoration.none,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Image.asset('assets/home/nebula.png', height: 100),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFF005389),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Text(
              "A melhor forma de prever o futuro é criá-lo.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xFFFFFFFF),
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

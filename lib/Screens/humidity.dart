import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:fl_chart/fl_chart.dart';

class Humidity extends StatefulWidget {
  @override
  State<Humidity> createState() => _HumidityState();
}

class _HumidityState extends State<Humidity> {
  double humidity = 38.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Humidity'),
          backgroundColor: const Color(0xFF171724),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    animationDuration: 1700,
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        majorTickStyle: const MajorTickStyle(
                            length: 0.03,
                            lengthUnit: GaugeSizeUnit.factor,
                            thickness: 1.5,
                            color: Color.fromARGB(141, 255, 255, 255)),
                        minorTickStyle: const MinorTickStyle(
                            length: 0.05,
                            lengthUnit: GaugeSizeUnit.factor,
                            thickness: 1.5,
                            color: Colors.white),
                        axisLabelStyle: const GaugeTextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        ranges: <GaugeRange>[
                          GaugeRange(
                              startValue: 0,
                              endValue: 40,
                              color: Colors.orange,
                              startWidth: 10,
                              endWidth: 10),
                          GaugeRange(
                              startValue: 40,
                              endValue: 55,
                              color: Colors.green,
                              startWidth: 10,
                              endWidth: 10),
                          GaugeRange(
                              startValue: 55,
                              endValue: 100,
                              color: Colors.red,
                              startWidth: 10,
                              endWidth: 10)
                          // ignore: prefer_const_literals_to_create_immutables
                        ],
                        pointers: <GaugePointer>[
                          NeedlePointer(
                            value: humidity,
                            needleColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            knobStyle: const KnobStyle(
                              knobRadius: 0.05,
                              borderColor: Color.fromARGB(255, 255, 255, 255),
                              borderWidth: 0.02,
                            ),
                          ),
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                              widget: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: const Text(
                                      'Humidity',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '$humidity %',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              angle: 90,
                              positionFactor: 0.5)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}

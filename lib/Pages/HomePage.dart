import 'package:detranapp/Buttons/LoginButton.dart';

import 'package:detranapp/widgets/DetranTitle.dart';
import 'package:detranapp/widgets/InfoWidget.dart';
import 'package:detranapp/widgets/InfoWidget.dart';
import 'package:detranapp/widgets/InfracoesWidget.dart';
import 'package:detranapp/widgets/LeilaoWidget.dart';
import 'package:detranapp/widgets/VeiculoWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //vai ter que ter a lista de veiculos

  final List<Widget> widgets = [
    VeiculoWidget(),
    InfracoesWidget(),
    InfoWidget(),
    LeilaoWidget(),
    LeilaoWidget(),
    LeilaoWidget(),
    LeilaoWidget(),
    LeilaoWidget(),
    InfoWidget(),
    LeilaoWidget(),
    LeilaoWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: LoginButton(),
          ),
        ],
        title: DetranTitle(),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 0, 128, 198),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200, // Largura máxima dos widgets aumentada
                mainAxisSpacing: 20, // Espaçamento vertical entre widgets
                crossAxisSpacing: 20, // Espaçamento horizontal entre widgets
                childAspectRatio: 1, // Proporção mais equilibrada
              ),
              itemCount: widgets.length,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    child: widgets[
                        index], // Widget dentro do Container arredondado
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

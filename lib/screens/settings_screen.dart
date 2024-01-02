import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/filter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen(
      {super.key, this.filter, required this.onSettingsChange});

  final Filter? filter;
  final Function(Filter) onSettingsChange;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Filter? settings;

  @override
  void initState() {
    super.initState();
    settings = widget.filter;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChangedSettings,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChangedSettings(value);
        widget.onSettingsChange(settings!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Filtros',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _createSwitch(
                'Sem Glutén',
                'Só exibe refeições sem glutén!',
                settings!.isGluten,
                (value) {
                  setState(() {
                    settings!.isGluten = value;
                  });
                },
              ),
              _createSwitch(
                'Sem Lactose',
                'Só exibe refeições sem lactose!',
                settings!.isLactose,
                (value) {
                  setState(() {
                    settings!.isLactose = value;
                  });
                },
              ),
              _createSwitch(
                'Vegana',
                'Só exibe refeições vegana!',
                settings!.isVegan,
                (value) {
                  setState(() {
                    settings!.isVegan = value;
                  });
                },
              ),
              _createSwitch('Vegetariana', 'Só exibe refeições vegetariana"',
                  settings!.isVegetarian, (value) {
                setState(() {
                  settings!.isVegetarian = value;
                });
              })
            ],
          ))
        ],
      ),
    );
  }
}

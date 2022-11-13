import 'package:flutter/material.dart';

class FilterContinent extends StatefulWidget {
  const FilterContinent({Key? key}) : super(key: key);

  @override
  State<FilterContinent> createState() => _FilterContinentState();
}

class _FilterContinentState extends State<FilterContinent> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ExpansionTile(
        title: Text("Continent", style: Theme.of(context).textTheme.headline1,),
        children: [
          Row(
            children: [
              const Text("Africa"),
              Checkbox(
                value: value,
                tristate: false,
                activeColor: Colors.black,
                onChanged: (value1){
                  print(value1);
                  setState(() {
                    value = value1;
                  });
                },
              )
            ],
          ),
          Row(
            children: [
              const Text("Africa"),
              Checkbox(
                value: value,
                tristate: false,
                activeColor: Colors.black,
                onChanged: (value1){
                  print(value1);
                  setState(() {
                    value = value1;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

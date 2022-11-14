import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:restcountries_app/pages/country_details.dart';

import 'package:restcountries_app/pages/filter_continent.dart';
import 'package:restcountries_app/utils/config.dart';
import 'package:unicons/unicons.dart';

import '../utils/methods.dart';

class CountriesListPage extends StatefulWidget {
  const CountriesListPage({Key? key}) : super(key: key);

  @override
  State<CountriesListPage> createState() => _CountriesListPageState();
}

class _CountriesListPageState extends State<CountriesListPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final elements = [
      {'group': 'A', 'name': 'Nigeria'},
      {'group': 'B', 'name': 'John'},
      {'group': 'A', 'name': 'John'},
      {'group': 'B', 'name': 'John'},
      {'group': 'A', 'name': 'John'},
      {'group': 'B', 'name': 'John'},
      {'group': 'B', 'name': 'John'},
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*0.30,
                  child: ListTile(
                    leading: RichText(
                      text: TextSpan(
                          text: 'Explore',
                          style: Theme.of(context).textTheme.subtitle1,
                          children: [
                            TextSpan(
                                text: '.',
                                style: TextStyle(color: Colors.orange.shade900))
                          ]),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        currentTheme.switchTheme();
                      },
                      icon: currentTheme.mythemeMode(),
                    ),
                  ),
                ),
                ListTile(
                  title: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.headline3!.color,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      textAlign: TextAlign.left,
                      controller: textEditingController,
                      decoration: InputDecoration(
                        hintText: "Search Country",
                        hintStyle: Theme.of(context).textTheme.subtitle2,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: ElevatedButton.icon(
                      style: Theme.of(context).elevatedButtonTheme.style,
                      onPressed: () {
                        fetchdata.getInfo();
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Text(
                                        "Filter",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                      trailing: Container(
                                        width: 50,
                                        height: 25,
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.cancel_outlined,
                                                size: 20,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .headline2!
                                                    .color)),
                                      ),
                                    ),
                                    const FilterContinent()
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(
                        UniconsLine.globe,
                        color: Theme.of(context).textTheme.headline2!.color,
                      ),
                      label: Text(
                        "EN",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Text(
                                        "Filter",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                      trailing: Container(
                                        width: 50,
                                        height: 25,
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.cancel_outlined,
                                                size: 20,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .headline2!
                                                    .color)),
                                      ),
                                    ),
                                    const FilterContinent()
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(UniconsLine.filter,
                          color: Theme.of(context).textTheme.headline2!.color),
                      label: Text(
                        "Filter",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.65,
                child: GroupedListView<dynamic, String>(
              physics: BouncingScrollPhysics(),
              elements: elements,
              groupBy: (element) => element['group'],
              groupSeparatorBuilder: (value) => Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Text(value),
              ),
              itemBuilder: (context, element) => Card(
                elevation: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountryDetails()));
                  },
                  child: ListTile(
                    tileColor: Theme.of(context).scaffoldBackgroundColor,
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://flagcdn.com/w320/ng.png",
                            ),
                            fit: BoxFit.fill,
                          )),
                      // child: Image.network("https://flagcdn.com/w320/ng.png",fit: BoxFit.fill,)
                    ),
                    title: Text(element['name'],style: Theme.of(context).textTheme.headline2,),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                                style: TextStyle(
                                    color: Colors.orange.shade900))
                          ]),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        currentTheme.clicked = !currentTheme.clicked;
                        currentTheme.switchTheme();
                      },
                      icon: currentTheme.mythemeMode() ,
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
                      },
                      icon: Icon(UniconsLine.globe, color: Theme.of(context).textTheme.headline2!.color,),
                      label: Text("EN", style: Theme.of(context).textTheme.headline2,),

                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          ),
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height/2,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Text("Filter", style: Theme.of(context).textTheme.headline2,),
                                      trailing: Container(
                                        width: 50,
                                        height: 25,
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.cancel_outlined, size: 20, color: Theme.of(context).textTheme.headline2!.color)
                                        ),
                                      ),
                                    ),
                                    FilterContinent()
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(UniconsLine.filter,color: Theme.of(context).textTheme.headline2!.color),
                      label: Text("Filter", style: Theme.of(context).textTheme.headline2,),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.65,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.45,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("index $index")),
                                Expanded(
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (BuildContext context, int index) {
                                      return ListTile(
                                          leading:
                                              const Icon(UniconsLine.android),
                                          title: Text(
                                            "List item $index",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1,
                                          ));
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

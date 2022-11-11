import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

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
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    leading: Container(
                      child: RichText(
                        text: TextSpan(
                            text: 'Explore',
                            style: Theme.of(context).textTheme.subtitle1,
                            children: [
                              TextSpan(
                                  text: '.',
                                style: TextStyle(
                                  color: Colors.orange.shade900
                                )
                              )
                            ]
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.sunny),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
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
                  ListTile(
                    leading: ElevatedButton.icon(
                      onPressed: (){

                      },
                      icon: Icon(UniconsLine.globe),
                      label: Text("EN"),
                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: (){
                        showModalBottomSheet(
                            context: context,
                            builder: (context){
                              return Container();
                            }
                        );
                      },
                      icon: Icon(UniconsLine.filter),
                      label: Text("Filter"),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0,0,0,15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Container(alignment:Alignment.centerLeft,child: Text("A")),
                            Container(
                              height: 250,
                              child: ListView.builder(
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index){
                                  return ListTile(
                                      leading: const Icon(UniconsLine.android),
                                      title: Text("List item $index",
                                        style: Theme.of(context).textTheme.headline1,)
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

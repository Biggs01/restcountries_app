import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CountryDetails extends StatefulWidget {
  const CountryDetails({Key? key}) : super(key: key);

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  final urlImages = [
    'https://flagcdn.com/w320/ng.png',
    'https://flagcdn.com/w320/ng.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).textTheme.headline2!.color),
        ),
        title: Container(
            // color: Colors.green,
            alignment: Alignment.center,
            padding: EdgeInsets.only(right: 40),
            width: MediaQuery.of(context).size.width,
            child: Text("Country Info",
                style: Theme.of(context).textTheme.headline2)),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.90,
              child: CarouselSlider.builder(
                  itemCount: 2,
                  itemBuilder: (context, index, realIndex) {
                    // final urlImage = urlImages[index];
                    // print(urlImages.length);
                    // return buildImage(urlImage, index);
                    return Container(
                      // margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network("https://flagcdn.com/w320/ng.png", fit: BoxFit.fill),
                    );
                  },
                  options: CarouselOptions(
                    height: 200,
                  )),
            ),
            Container()
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        // margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(urlImage, fit: BoxFit.fill),
      );
}

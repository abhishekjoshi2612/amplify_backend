import 'package:flutter/material.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({Key? key}) : super(key: key);

  static const kstyle = TextStyle(
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Catagories"),
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset("assets/mobilephone.png"),
                        const Text(
                          "Mobile\nPhone",
                          style: kstyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/sports.png"),
                        const SizedBox(height: 10),
                        const Text(
                          "Sports",
                          style: kstyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/mobilephone.png"),
                        const Text(
                          "Mobile\nPhone",
                          style: kstyle,
                        ),
                      ],
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Image.asset("assets/furnitures.png"),
                        const SizedBox(height: 8),
                        const Text(
                          "Furnitures",
                          style: kstyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/homeappliences.png"),
                        const Center(
                            child: Text(
                          "    Home\nAppliences",
                          style: kstyle,
                        )),
                      ],
                    ),
                    Stack(children: [
                      Column(
                        children: [
                          Image.asset("assets/fashion.png"),
                          const SizedBox(height: 8),
                          const Text(
                            "Fashion",
                            style: kstyle,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset("assets/dress.png"),
                      ),
                    ]),
                  ])
            ]),
      ),
    );
  }
}

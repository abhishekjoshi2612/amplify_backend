import 'package:flutter/material.dart';

class RecentSearchScreen extends StatelessWidget {
  RecentSearchScreen({Key? key}) : super(key: key);
  final TextEditingController _searchcontroller = TextEditingController();
  static const Kstyle = TextStyle(
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: TextField(
                  controller: _searchcontroller,
                  decoration: const InputDecoration(
                      fillColor: Colors.black,
                      prefixIcon: Icon(Icons.search, size: 30),
                      hintText: 'Search seller and Product here',
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Image.asset("assets/allcatagories.png"),
                  const SizedBox(height: 5),
                  const Text("      All\nCatagories"),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/furnitures.png"),
                  const SizedBox(height: 8),
                  const Text(
                    "Furnitures",
                    style: Kstyle,
                  ),
                ],
              ),
              Stack(children: [
                Column(
                  children: [
                    Image.asset("assets/fashion.png"),
                    const SizedBox(height: 8),
                    const Text(
                      "Fashion",
                      style: Kstyle,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset("assets/dress.png"),
                ),
              ]),
              Column(
                children: [
                  Image.asset("assets/homeappliences.png"),
                  const Center(
                      child: Text(
                    "    Home\nAppliences",
                    style: Kstyle,
                  )),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/mobilephone.png"),
                  const Text(
                    "Mobile\nPhone",
                    style: Kstyle,
                  ),
                ],
              ),
            ]),
        const SizedBox(
          height: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text("Recent Searchs",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("assets/grid1.png")),
                title: const Text("Dress",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("assets/grid2.png")),
                title: const Text("Shoes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset("assets/grid1.png")),
                title: const Text("Lenove",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(
                      "assets/grid3.png",
                      height: 50,
                      width: 40,
                    )),
                title: const Text("Mens Shirts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

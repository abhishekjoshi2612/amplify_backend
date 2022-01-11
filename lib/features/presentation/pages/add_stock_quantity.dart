import 'package:flutter/material.dart';

class AddStockQuantity extends StatelessWidget {
  const AddStockQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    alignment: Alignment.center, // use aligment
                    child: Image.asset(
                      'assets/quantity.png',
                      height: MediaQuery.of(context).size.height * .35,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .7,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.center, // use aligment
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(18, 18, 18, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            TextFormField(
                                style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  labelText: "Stock quantity",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(108, 108, 108, 1),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(108, 108, 108, 1),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  labelText:
                                      "ATP Quantity (Available-to-Promise)",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(108, 108, 108, 1),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(108, 108, 108, 1),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                elevation: 5,
                              ),
                              // child: Image.asset('assets/images/Vector.png')
                              child: Ink(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(255, 255, 255, 1),
                                    Color.fromRGBO(255, 255, 255, 1)
                                  ]),
                                ),
                                child: Container(
                                    padding: const EdgeInsets.all(30),
                                    constraints: const BoxConstraints(
                                        minWidth: 20.0, minHeight: 20),
                                    child: Image.asset(
                                      'assets/arrow.png',
                                      fit: BoxFit.fitHeight,
                                    )),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0.0),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                elevation: 5,
                              ),
                              onPressed: () {},
                              child: Ink(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(255, 75, 43, 1),
                                    Color.fromRGBO(255, 65, 108, 1)
                                  ]),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 25),
                                  constraints:
                                      const BoxConstraints(minWidth: 88.0),
                                  child: const Text('Next',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.center),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .25,
                  left: 10,
                  child: const Text(
                    "Stock Quantity",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 10,
                  right: 10,
                  child: Container(
                    alignment: Alignment.center, // use aligment
                    child: Image.asset(
                      'assets/circle.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

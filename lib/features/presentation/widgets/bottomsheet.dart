import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  static const kTextStyle =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  final int val = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.bottomSheet(
          Theme(
            data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.black,
                disabledColor: Colors.blue),
            child: Container(
                height: 500,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Filters",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )),
                    ListTile(
                      title: const Text("Store near you", style: kTextStyle),
                      trailing: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Favorite Store",
                        style: kTextStyle,
                      ),
                      trailing: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: const Text("Best Seller", style: kTextStyle),
                      trailing: Radio(
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: const Text("Stores by ecommerce platforms",
                          style: kTextStyle),
                      trailing: Radio(
                        value: 4,
                        groupValue: val,
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: const Text("Stores offering discount",
                          style: kTextStyle),
                      trailing: Radio(
                        value: 5,
                        groupValue: val,
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: const Text("Offline", style: kTextStyle),
                      trailing: Radio(
                        value: 6,
                        groupValue: val,
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text("Apply Changes"),
                          )),
                    ),
                  ],
                )),
          ),
        );
      },
      child: Image.asset(
        "assets/filter.png",
      ),
    );
  }
}



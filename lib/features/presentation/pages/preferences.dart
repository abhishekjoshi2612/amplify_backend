import 'package:amplified_todo/features/data/controllers/auth.dart';
import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/headtext.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Preferences extends StatelessWidget {
  Preferences({Key? key}) : super(key: key);

  final String? valueChoose = "Category_1";
  final List listItem = [
    'Category_1',
    'Category_2',
    'Category_3',
    'Category_4',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const HeadTextWidget(title: "User Preferences"),
            const Text(
              "Enter your preferences",
              style: TextStyle(
                  color: Color.fromRGBO(160, 160, 160, 1),
                  fontFamily: 'Inter',
                  fontSize: 14,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.4),
            ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButtonFormField<dynamic>(
                  hint: const Text("Select Category"),
                  value: valueChoose,
                  onChanged: (value) {},
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList()),
            ),
            CommonTextField(hintText: "Location"),
            const SizedBox(height: 60),
            ButtonWidget(
              text: "Continue",
              onTap: () async {
                Get.dialog(const Center(
                  child: CircularProgressIndicator(),
                ));
                var url = Uri.parse(
                    'https://5dukvxni45azrmx7ehzqrysxii.appsync-api.us-east-2.amazonaws.com/graphql');
                String sg = """query MyQuery {
                              listUserMasters(filter: {gmail: {eq: "1"}}) {
                              items {
                               latitude
                              longitude
                              usermasterID
                              categor
                            }
                          }
                          }


                          """;
                var response = await http.post(url,
                    headers: {'x-api-key': 'da2-tnvs2pr4abh4nasl7evs5nm5ge'},
                    body: json.encode({'query': sg}));
                Get.back();
                print('Response status: ${response.statusCode}');
                print('Response body: ${response.body}');
              },
            ),
            TextButton(
              onPressed: () async {
                await AuthController().signOut();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

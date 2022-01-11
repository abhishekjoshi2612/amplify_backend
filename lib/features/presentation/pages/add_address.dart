import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.black,
              title: const Text(
                'Add Address',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus &&
                      currentFocus.focusedChild != null) {
                    currentFocus.focusedChild!.unfocus();
                    Navigator.of(context).pop();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              )),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  _text("Country"),
                  const SizedBox(
                    height: 35,
                  ),
                  _text("Full Name"),
                  const SizedBox(
                    height: 35,
                  ),
                  _text("Street Address"),
                  const SizedBox(
                    height: 35,
                  ),
                  _text("City"),
                  const SizedBox(
                    height: 35,
                  ),
                  _text("State/Region/Province"),
                  const SizedBox(
                    height: 35,
                  ),
                  _text("Pin Code"),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      elevation: 5,
                    ),
                    onPressed: () {},
                    child: Ink(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 75, 43, 1),
                          Color.fromRGBO(255, 65, 108, 1)
                        ]),
                      ),
                      child: Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130, vertical: 20),
                          constraints: const BoxConstraints(minWidth: 88.0),
                          child: const Text('Save Address',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _text(txt) {
    return TextFormField(
        style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
          labelText: txt,
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
        ));
  }
}

import 'package:flutter/material.dart';

class ChangeEmailWidget extends StatelessWidget {
  const ChangeEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        width: 600,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              hintText: "alice@gmail.com",
              hintStyle: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
              suffixText: "Update",
              suffixStyle: const TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class CommonTextField extends StatelessWidget {
  final Function(String)? onChanged;
  CommonTextField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.type,
  }) : super(key: key);

  final String? hintText;
  final String? type;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: (e) {
              if (onChanged != null) {
                onChanged!(e);
              }
            },
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 117, 117, 117),
                fontWeight: FontWeight.bold,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

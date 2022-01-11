import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const ButtonWidget({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 24,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class EnterButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const EnterButton(
    this.icon,
    this.text,
    this.onTap, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: const Color.fromRGBO(18, 18, 18, 1),
              border: Border.all(
                color: const Color.fromARGB(255, 56, 56, 56),
                width: 4,
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 15),
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(width: 32),
                Text(
                  text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      height: 1.5),
                ),
              ],
            )),
      ),
    );
  }
}

class ButtonWidget2 extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback? onTap;
  const ButtonWidget2({
    Key? key,
    required this.text,
    this.onTap,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? () {} : onTap,
      child: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment(0.5, -0.5),
            end: Alignment(0.5, 0.5),
            colors: [
              Color.fromRGBO(255, 75, 43, 1),
              Color.fromRGBO(255, 65, 108, 1)
            ],
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
              ),
      ),
    );
  }
}

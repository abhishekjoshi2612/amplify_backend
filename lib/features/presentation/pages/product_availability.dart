import 'package:amplified_todo/features/data/controllers/add_product.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductAvailability extends StatefulWidget {
  const ProductAvailability({
    Key? key,
  }) : super(key: key);

  @override
  _ProductAvailabilityState createState() => _ProductAvailabilityState();
}

class _ProductAvailabilityState extends State<ProductAvailability> {
  late final AddProductController _addProductController;
  @override
  void initState() {
    super.initState();
    _addProductController = Get.find<AddProductController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width / 0.1,
              height: MediaQuery.of(context).size.height * 0.48,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(6.123234262925839e-17, 1),
                    end: Alignment(-1, 6.123234262925839e-17),
                    colors: [
                      Color.fromRGBO(21, 1, 1, 1),
                      Color.fromRGBO(3, 0, 0, 0)
                    ]),
                image: DecorationImage(
                    image: AssetImage('assets/Addproduct5.png'),
                    fit: BoxFit.fitWidth),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Color.fromRGBO(18, 18, 18, 1),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 15),
                  _text(),
                  _linkfield(
                    url: _addProductController.productMaster.other ?? '',
                    onTapPaste: () async {
                      final text =
                          (await Clipboard.getData(Clipboard.kTextPlain))?.text;
                      if (text == null) {
                        return;
                      }
                      setState(() {
                        _addProductController.setProduct(_addProductController
                            .productMaster
                            .copyWith(other: text));
                      });
                    },
                    onSaved: (e) {
                      _addProductController.setProduct(_addProductController
                          .productMaster
                          .copyWith(other: e));
                    },
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FormBackButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      FormSubmitButton(
                        onTap: () {
                          Get.toNamed(RouteConst.addProductPrice);
                        },
                        title: "Next",
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _text() {
    return const Padding(
      padding: EdgeInsets.all(18),
      child: Text(
        'If your products have listed on other E-Commerce store, give link to connect each other',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Color.fromRGBO(224, 224, 224, 1),
          fontFamily: 'Inter',
          fontSize: 16,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1.3333333333333333,
        ),
      ),
    );
  }

  Widget _linkfield({
    required String url,
    required VoidCallback onTapPaste,
    required Function(String) onSaved,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: const Color.fromRGBO(160, 160, 160, 1),
            width: 1,
          ),
          // image: DecorationImage(
          //   image: AssetImage('assets/flipkart.png'),
          //   fit: BoxFit.none,
          // ),
        ),
        child: TextField(
          controller: TextEditingController(text: url),
          autofocus: false,
          onChanged: (e) => onSaved(e),
          decoration: InputDecoration(
            prefixIcon: const SizedBox(width: 5),
            suffixIcon: GestureDetector(
              onTap: () => onTapPaste(),
              child: const ImageIcon(
                AssetImage('assets/clipboard.png'),
                size: 10,
              ),
            ),
            hintText: "paste the link here",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

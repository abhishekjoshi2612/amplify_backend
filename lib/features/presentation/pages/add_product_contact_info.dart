import 'package:amplified_todo/features/data/controllers/add_product.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

class AddProductContactInfo extends StatefulWidget {
  const AddProductContactInfo({
    Key? key,
  }) : super(key: key);

  @override
  State<AddProductContactInfo> createState() => _AddProductContactInfoState();
}

class _AddProductContactInfoState extends State<AddProductContactInfo> {
  final _formKey = GlobalKey<FormState>();
  late final AddProductController _addProductController;
  @override
  void initState() {
    super.initState();
    _addProductController = Get.find<AddProductController>();
    // _productMaster = widget.args.productMaster;
  }

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
          child: Form(
            key: _formKey,
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
                        'assets/contact.png',
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
                                _text(
                                  "Country",
                                  onSaved: (e) {
                                    _addProductController.setProduct(
                                        _addProductController.productMaster
                                            .copyWith(country: e));
                                  },
                                ),
                                const SizedBox(height: 10),
                                _text(
                                  "City/town/village",
                                  initialValue:
                                      _addProductController.shopMaster.city ??
                                          "",
                                  onSaved: (e) {
                                    _addProductController.setProduct(
                                        _addProductController.productMaster
                                            .copyWith(cit: e));
                                  },
                                ),
                                const SizedBox(height: 10),
                                _text(
                                  "Pincode",
                                  onSaved: (e) {
                                    _addProductController.setProduct(
                                        _addProductController.productMaster
                                            .copyWith(pincode: e));
                                  },
                                  initialValue: _addProductController
                                          .shopMaster.PinCode ??
                                      "",
                                  inputType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(6),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .18,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FormBackButton(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    FormSubmitButton(
                                      onTap: () {
                                        if (_formKey.currentState?.validate() ??
                                            false) {
                                          _formKey.currentState?.save();
                                        }
                                        Get.toNamed(
                                            RouteConst.productAvailability);
                                      },
                                      title: "Next",
                                    )
                                  ],
                                )
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .25,
                    left: 10,
                    child: const Text(
                      "Contact Information",
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
      ),
    );
  }

  Widget _text(
    txt, {
    required Function(String) onSaved,
    List<TextInputFormatter>? inputFormatters,
    TextInputType? inputType,
    String? initialValue,
  }) {
    return TextFormField(
        keyboardType: inputType,
        style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        onSaved: (e) => onSaved(e!),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter $txt";
          }
          return null;
        },
        initialValue: initialValue,
        inputFormatters: inputFormatters,
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

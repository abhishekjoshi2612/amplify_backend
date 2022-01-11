import 'package:amplified_todo/features/data/controllers/add_product.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class CreateProductPage extends StatefulWidget {
  final ShopMaster shop;
  const CreateProductPage({
    Key? key,
    required this.shop,
  }) : super(key: key);

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  final _formKey = GlobalKey<FormState>();
  late final AddProductController _addProductController;
  @override
  void initState() {
    super.initState();
    _addProductController = Get.find<AddProductController>();
    _addProductController.productMaster =
        ProductMaster(productImgUrl: List.empty());
    _addProductController.shopMaster = widget.shop;
    _addProductController.setShop(widget.shop);
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
      child: GetBuilder(
          init: _addProductController,
          builder: (AddProductController controller) {
            return Scaffold(
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
                            'assets/pdp.png',
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
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: _text(
                                        "Category *",
                                        onSaved: (e) {
                                          controller.setProduct(controller
                                              .productMaster
                                              .copyWith(category: e));
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: _text(
                                        "Brand",
                                        onSaved: (e) {
                                          controller.setProduct(controller
                                              .productMaster
                                              .copyWith(brand: e));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                _text(
                                  "Ad title",
                                  onSaved: (e) {
                                    controller.setProduct(controller
                                        .productMaster
                                        .copyWith(title: e));
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                _text(
                                  "Description",
                                  onSaved: (e) {
                                    controller.setProduct(controller
                                        .productMaster
                                        .copyWith(description: e));
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                _text(
                                  "Keywords",
                                  onSaved: (e) {
                                    controller.setProduct(controller
                                        .productMaster
                                        .copyWith(keyword: e));
                                  },
                                ),
                                const Spacer(),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(0.0),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    elevation: 5,
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      _formKey.currentState?.save();
                                      Get.toNamed(RouteConst.addPhoto);
                                    }
                                  },
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(255, 75, 43, 1),
                                          Color.fromRGBO(255, 65, 108, 1)
                                        ],
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 150, vertical: 25),
                                      constraints:
                                          const BoxConstraints(minWidth: 88.0),
                                      child: const Text('Next',
                                          style: TextStyle(fontSize: 20),
                                          textAlign: TextAlign.center),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .25,
                        left: 10,
                        child: const Text(
                          "Enter product details",
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
            );
          }),
    );
  }

  Widget _text(
    txt, {
    required Function(String) onSaved,
  }) {
    return TextFormField(
        style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        textCapitalization: TextCapitalization.words,
        validator: (e) {
          if (e == null || e.isEmpty) {
            return "cannot be empty";
          }
          return null;
        },
        onSaved: (e) {
          if (e != null) {
            onSaved(e);
          }
        },
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

import 'package:amplified_todo/features/data/controllers/add_product.dart';
import 'package:amplified_todo/features/presentation/pages/add_product_media.dart';
import 'package:amplified_todo/route_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// This is the last page of the product form
/// To add the price of the product
class AddProductPricePage extends StatefulWidget {
  const AddProductPricePage({
    Key? key,
  }) : super(key: key);
  @override
  State<AddProductPricePage> createState() => _AddProductPricePageState();
}

class _AddProductPricePageState extends State<AddProductPricePage> {
  late final AddProductController _addProductController;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _addProductController = Get.find<AddProductController>();
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
      child: GetX<AddProductController>(
          init: _addProductController,
          builder: (controller) {
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
                            'assets/unsplash.png',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextFormField(
                                    onSaved: (e) {
                                      _addProductController.setProduct(
                                          _addProductController.productMaster
                                              .copyWith(price: e));
                                    },
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    validator: (e) {
                                      if (e == null || e.isEmpty) {
                                        return "Enter price";
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    style: const TextStyle(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                    textCapitalization:
                                        TextCapitalization.words,
                                    decoration: InputDecoration(
                                      labelStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1)),
                                      labelText: "Price",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromRGBO(108, 108, 108, 1),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromRGBO(108, 108, 108, 1),
                                        ),
                                      ),
                                    )),
                                const SizedBox(height: 10),
                                TextFormField(
                                  validator: (e) {
                                    if (e == null || e.isEmpty) {
                                      return "Enter discount";
                                    }
                                    return null;
                                  },
                                  onSaved: (e) {
                                    _addProductController.setProduct(
                                        _addProductController.productMaster
                                            .copyWith(discount: e));
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  style: const TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  textCapitalization: TextCapitalization.words,
                                  decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)),
                                    labelText: "Discount Price",
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
                                  ),
                                ),
                                const Spacer(),
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
                                      onTap: () async {
                                        await _onSubmit();
                                      },
                                      title: "Complete",
                                    )
                                  ],
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
                          "Price your product",
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
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: controller.isSubmitting.value
                            ? Container(
                                color: Colors.black.withOpacity(0.6),
                                child: const Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  Future<void> _onSubmit() async {
    Get.dialog(const Center(
      child: CircularProgressIndicator(),
    ));
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      final wasSuccess = await _addProductController.onSubmit(
        _addProductController.productMaster,
        _addProductController.shopMaster,
      );
      if (!wasSuccess) {
        Get.showSnackbar(
          GetBar(
            messageText:
                const Text("Could not create product, please try again later"),
          ),
        );
        return;
      }
      Get.offAllNamed(RouteConst.shopList, arguments: true);
    }
  }
}

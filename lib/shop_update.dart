// // dart async library we will refer to when setting up real time updates
// import 'dart:async';
// import 'package:amplified_todo/features/presentation/pages/signinwithnumber.dart';
// import 'package:amplified_todo/on_generate_route.dart';
// import 'package:http/http.dart' as http;
// // flutter and ui libraries
// import 'package:flutter/material.dart';

// import 'package:amplified_todo/features/presentation/pages/flow.dart';
// // import 'package:ecommerce-platform/on_generate_route.dart';
// // amplify packages we will need to use
// import 'package:amplify_flutter/amplify.dart';
// import 'package:amplify_datastore/amplify_datastore.dart';
// // amplify configuration and models that should have been generated for you
// import 'amplifyconfiguration.dart';
// import 'package:amplify_api/amplify_api.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// class MyApp2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Amplified Shop Master',
//       home: ShopsPage(),
//     );
//   }
// }

// class ShopsPage extends StatefulWidget {
//   @override
//   _ShopsPageState createState() => _ShopsPageState();
// }

// class _ShopsPageState extends State<ShopsPage> {
//   // subscription to Shop model update events - to be initialized at runtime
//   late StreamSubscription _subscription;

//   // loading ui state - initially set to a loading state
//   bool _isLoading = true;

//   // list of shops - initially empty
//   List<ShopMaster> _shops = [];

//   // amplify plugins
//   final AmplifyDataStore _dataStorePlugin =
//       AmplifyDataStore(modelProvider: ModelProvider.instance);
//   final AmplifyAPI _apiPlugin = AmplifyAPI();
//   final AmplifyAuthCognito _authPlugin = AmplifyAuthCognito();

//   @override
//   void initState() {
//     // kick off app initialization
//     _initializeApp();

//     // to be filled in a later step
//     super.initState();
//   }

//   @override
//   void dispose() {
//     // cancel the subscription when the state is removed from the tree
//     _subscription.cancel();
//     // to be filled in a later step
//     super.dispose();
//   }

//   Future<void> _initializeApp() async {
//     // configure Amplify
//     await _configureAmplify();

//     // listen for updates to Shop entries by passing the ShopMaster classType to
//     // Amplify.DataStore.observe() and when an update event occurs, fetch the
//     // shop list
//     //
//     // note this strategy may not scale well with larger number of entries
//     _subscription =
//         Amplify.DataStore.observe(ShopMaster.classType).listen((event) {
//       _fetchShops();
//     });

//     // fetch shop entries from DataStore
//     await _fetchShops();

//     // after both configuring Amplify and fetching shop entries, update loading
//     // ui state to loaded state
//     setState(() {
//       _isLoading = false;
//     });
//   }

//   Future<void> _configureAmplify() async {
//     try {
//       // add Amplify plugins
//       // await Amplify.addPlugins([_dataStorePlugin]);
//       await Amplify.addPlugins([_dataStorePlugin, _apiPlugin, _authPlugin]);

//       // configure Amplify
//       //
//       // note that Amplify cannot be configured more than once!
//       await Amplify.configure(amplifyconfig);
//     } catch (e) {
//       // error handling can be improved for sure!
//       // but this will be sufficient for the purposes of this tutorial
//       print('An error occurred while configuring Amplify: $e');
//     }
//   }

//   Future<void> _fetchShops() async {
//     try {
//       // query for all shop entries by passing the ShopMaster classType to
//       // Amplify.DataStore.query()
//       List<ShopMaster> updatedShops =
//           await Amplify.DataStore.query(ShopMaster.classType);

//       // update the ui state to reflect fetched shops
//       setState(() {
//         _shops = updatedShops;
//       });
//     } catch (e) {
//       print('An error occurred while querying Shops: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Shop List'),
//       ),
//       // body: Center(child: CircularProgressIndicator()),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : ShopsList(shops: _shops),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => AddShopForm()),
//           );
//         },
//         tooltip: 'Add Shop',
//         label: Row(
//           children: [Icon(Icons.add), Text('Add Shop')],
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }

// class ShopsList extends StatelessWidget {
//   final List<ShopMaster> shops;

//   ShopsList({required this.shops});

//   @override
//   Widget build(BuildContext context) {
//     return shops.length >= 1
//         ? ListView(
//             padding: EdgeInsets.all(8),
//             children: shops.map((shop) => ShopItem(shop: shop)).toList())
//         : Center(child: Text('Tap button below to add a Shop!'));
//   }
// }

// class ShopItem extends StatelessWidget {
//   final double iconSize = 24.0;
//   final ShopMaster shop;

//   ShopItem({required this.shop});

//   void _deleteShop(BuildContext context) async {
//     try {
//       // to delete data from DataStore, we pass the model instance to
//       // Amplify.DataStore.delete()
//       await Amplify.DataStore.delete(shop);
//     } catch (e) {
//       print('An error occurred while deleting Shop: $e');
//     }
//   }

//   Future<void> _toggleIsComplete() async {
//     // copy the Shop we wish to update, but with updated properties
//     // ShopMaster updatedShop = shop.copyWith(isComplete: !shop.isComplete); //we dont have isComplete for shops
//     try {
//       // to update data in DataStore, we again pass an instance of a model to
//       // Amplify.DataStore.save()
//       await Amplify.DataStore.save(shop);
//     } catch (e) {
//       print('An error occurred while saving Shop: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: InkWell(
//         onTap: () {
//           _toggleIsComplete();
//         },
//         onLongPress: () {
//           _deleteShop(context);
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(shop.Name,
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                   Text(shop.Location),
//                 ],
//               ),
//             ),
//             // Icon(
//             //     todo.isComplete
//             //         ? Icons.check_box
//             //         : Icons.check_box_outline_blank,
//             //     size: iconSize),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// class AddShopForm extends StatefulWidget {
//   @override
//   _AddShopFormState createState() => _AddShopFormState();
// }

// class _AddShopFormState extends State<AddShopForm> {
//   // final _idController = TextEditingController();
//   final _nameController = TextEditingController();
//   final _locationController = TextEditingController();
//   final _countryController = TextEditingController();
//   final _mobileController = TextEditingController();
//   final _emailController = TextEditingController();

//   Future<void> _saveShop() async {
//     // get the current text field contents
//     // String id = _idController.text;
//     String name = _nameController.text;
//     String location = _locationController.text;
//     String country = _countryController.text;
//     String mobile = _mobileController.text;
//     String email = _emailController.text;

//     // create a new Shop from the form values
//     // `isComplete` is also required, but should start false in a new Todo, not for shop item
//     ShopMaster newShop = ShopMaster(
//       // id: id,
//       Name: name,
//       Country: country,
//       Email: email,
//       Location: location,
//       Mobile: mobile,
//     );
//     try {
//       // to write data to DataStore, we simply pass an instance of a model to
//       // Amplify.DataStore.save()
//       await Amplify.DataStore.save(newShop);

//       // after creating a new Shop, close the form
//       Navigator.of(context).pop();
//     } catch (e) {
//       print('An error occurred while saving Shop: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Shop'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // TextFormField(
//                   // controller: _idController,
//                   // decoration: InputDecoration(filled: true, labelText: 'Id')),
//               TextFormField(
//                   controller: _nameController,
//                   decoration: InputDecoration(filled: true, labelText: 'Name')),
//               TextFormField(
//                   controller: _locationController,
//                   decoration: InputDecoration(filled: true, labelText: 'Location')),
//               TextFormField(
//                   controller: _countryController,
//                   decoration: InputDecoration(filled: true, labelText: 'Country')),
//               TextFormField(
//                   controller: _mobileController,
//                   decoration: InputDecoration(filled: true, labelText: 'Mobile')),
//               TextFormField(
//                   controller: _emailController,
//                   decoration: InputDecoration(filled: true, labelText: 'Email')),
              
//               ElevatedButton(onPressed: _saveShop, child: Text('Save'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:amplified_todo/amplifyconfiguration.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:get/get.dart';

class AmplifyService extends GetxService {
  ///
  @override
  onInit() {
    super.onInit();
    initAmplify();
  }

  ////
  /// Init amplify if it is not already configured
  Future<void> initAmplify() async {
    if (Amplify.isConfigured) {
      return;
    }
    final store = AmplifyDataStore(modelProvider: ModelProvider.instance);
    final api = AmplifyAPI();
    final cognito = AmplifyAuthCognito();
    final storage = AmplifyStorageS3();
    await Amplify.addPlugins([api, store, cognito, storage]);
    await Amplify.configure(amplifyconfig);
  }

  /// Amplify Rest
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebviewArgs {
  const CustomWebviewArgs({required this.url, required this.title});

  final String url;
  final String title;

  factory CustomWebviewArgs.fromMap(Map<String, dynamic> json) =>
      CustomWebviewArgs(
        url: json["url"] ?? "",
        title: json["title"] ?? "",
      );
}

class CustomWebView extends StatefulWidget {
  final CustomWebviewArgs args;
  const CustomWebView({Key? key, required this.args}) : super(key: key);

  @override
  _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.args.title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      initialUrl: widget.args.url,
                      onPageFinished: (val) {
                        setState(() {
                          _isLoading = false;
                        });
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

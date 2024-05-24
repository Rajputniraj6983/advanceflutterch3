import 'package:advanceflutterch3/Task_2/Provider/Goggle_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class Googlepage extends StatelessWidget {
  const Googlepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: TextFormField(
              controller: txtSearch,
              decoration: InputDecoration(
                  hintText: 'search',
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: IconButton(
                      onPressed: () {
                        Provider.of<googleprovider>(context, listen: false)
                            .search(txtSearch.text);

                        inAppWebViewController.loadUrl(
                          urlRequest: URLRequest(
                              url: WebUri(
                                  "https://www.google.com/search?q=${Provider.of<googleprovider>(context, listen: false).searchText}mark+express&rlz=1C1RXQR_enIN1075IN1075&oq=&gs_lcrp=EgZjaHJvbWUqCQgGECMYJxjqAjIJCAAQIxgnGOoCMgkIARAjGCcY6gIyCQgCECMYJxjqAjIJCAMQIxgnGOoCMgkIBBAjGCcY6gIyCQgFECMYJxjqAjIJCAYQIxgnGOoCMgkIBxAjGCcY6gLSAQsxMzMyMTg0ajBqN6gCCLACAQ&sourceid=chrome&ie=UTF-8")),
                        );
                      },
                      icon: Icon(Icons.search)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none)),
            ),
          ),
        ),
        body: Stack(children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: WebUri(
                    "https://www.google.com/search?q=${Provider.of<googleprovider>(context, listen: false).searchText}mark+express&rlz=1C1RXQR_enIN1075IN1075&oq=&gs_lcrp=EgZjaHJvbWUqCQgGECMYJxjqAjIJCAAQIxgnGOoCMgkIARAjGCcY6gIyCQgCECMYJxjqAjIJCAMQIxgnGOoCMgkIBBAjGCcY6gIyCQgFECMYJxjqAjIJCAYQIxgnGOoCMgkIBxAjGCcY6gLSAQsxMzMyMTg0ajBqN6gCCLACAQ&sourceid=chrome&ie=UTF-8")),
            onWebViewCreated: (controller) {
              inAppWebViewController = controller;
            },
            onProgressChanged: (controller, progress) {
              Provider.of<googleprovider>(context, listen: false)
                  .onchangeProgress(progress);
            },
          ),
          (Provider.of<googleprovider>(context, listen: true).progress < 1)
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                      value: Provider.of<googleprovider>(context, listen: true)
                          .progress))
              : Container(),
        ]),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  inAppWebViewController.goBack();
                },
                icon: Icon(Icons.arrow_back)),
            IconButton(
                onPressed: () {
                  inAppWebViewController.reload();
                },
                icon: Icon(Icons.refresh)),
            IconButton(
                onPressed: () {
                  inAppWebViewController.goForward();
                },
                icon: Icon(Icons.arrow_forward)),
            IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.add_card)),
          ],
        ));
  }
}

late InAppWebViewController inAppWebViewController;
TextEditingController txtSearch = TextEditingController();

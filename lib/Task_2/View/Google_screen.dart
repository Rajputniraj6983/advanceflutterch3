import 'package:advanceflutterch3/Task_2/Provider/Goggle_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';


class Googlepage extends StatelessWidget {
  const Googlepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Stack(),
            LinearProgressIndicator(value: Provider
                .of<googleprovider>(context, listen: true)
                .progress),
            InAppWebView(initialUrlRequest: URLRequest(url: WebUri(
                "https://www.google.com/search?q=mark+express&rlz=1C1RXQR_enIN1075IN1075&oq=&gs_lcrp=EgZjaHJvbWUqCQgGECMYJxjqAjIJCAAQIxgnGOoCMgkIARAjGCcY6gIyCQgCECMYJxjqAjIJCAMQIxgnGOoCMgkIBBAjGCcY6gIyCQgFECMYJxjqAjIJCAYQIxgnGOoCMgkIBxAjGCcY6gLSAQsxMzMyMTg0ajBqN6gCCLACAQ&sourceid=chrome&ie=UTF-8")
              ),
            ),
            onWebViewCreated: (controller) {
              inAppWebViewController = contoller
            }

          ],
        )

    );
  }
}

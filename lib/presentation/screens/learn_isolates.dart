import 'dart:isolate';
import 'package:flutter/material.dart';


/*                      Listening    ===========     Sending
        Receive PORT   <----------       PIPE      <----------  Send PORT
                                     ===========
*/


class LearnIsolateScreen extends StatelessWidget {
  static const String routeName = "learn_isolate_screen";
  const LearnIsolateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Isolates")),
      body: Center(
        child: Column(
          children: [
            const CircularProgressIndicator(),
            // Run Function Without Isolate
            ElevatedButton(
                onPressed: () {
                  var result = complexTask1();
                  debugPrint("Result of running WITHOUT Isolate : $result");
                },
                child: const Text("Run Without Isolate")),

            // Run Function With Isolate
            ElevatedButton(
                onPressed: () async {
                  // STEP 1 : Create a RECEIVE PORT to listen to the response
                  ReceivePort receivePort = ReceivePort();

                  // STEP 2 : Pass the complex function as an argument to the Isolate spawn method, also pass the send port
                  await Isolate.spawn(complexTask2, receivePort.sendPort);

                  // STEP 3 : Listen to the data receive on the receive port
                  receivePort.listen((message) {
                    debugPrint("Result of running WITH Isolate : $message");
                  });

                  // NOTE : Always remember to use async and await here
                },
                child: const Text("Run With Isolate"))
          ],
        ),
      ),
    );
  }
}

int complexTask1() {
  int total = 0;
  for (int i = 0; i < 1000000000; i++) {
    total += i;
  }
  return total;
}

complexTask2(SendPort sendPort) {
  int total = 0;
  for (int i = 0; i < 1000000000; i++) {
    total += i;
  }
  sendPort.send(total);
  // Return don't work here because this function will be running on separate thread
  // So it has separate memory. So we need to send data using the send port
}


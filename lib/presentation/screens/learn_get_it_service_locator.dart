import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_recap/data/repo/test_repo.dart';
import 'package:get_it/get_it.dart';

/// get_it helps us to use a single instance of services/objects. 
/// It helps in improving the performance of the app
class LearnGetItServiceLocator extends StatelessWidget {
  static const String routeName = 'get_it_locator';
  const LearnGetItServiceLocator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GetIt Service Locator'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      TestRepo repo1 = TestRepo();
                      TestRepo repo2 = TestRepo();
                      bool isIdentical = identical(repo1, repo2);
                      log("Is Identical: $isIdentical");
                    },
                    child: const Text("WITHOUT Get It"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      TestRepo repo1 = GetIt.I.get<TestRepo>();
                      TestRepo repo2 = GetIt.I.get<TestRepo>();
                      bool isIdentical = identical(repo1, repo2);
                      log("Is Identical: $isIdentical");
                    },
                    child: const Text("WITH Get It"),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

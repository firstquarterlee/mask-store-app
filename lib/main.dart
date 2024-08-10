import 'package:flutter/material.dart';
import 'package:mask_store_app/data/repository/mock_location_repository.dart';
import 'package:mask_store_app/data/repository/mock_store_repository.dart';
import 'package:mask_store_app/ui/main_screen.dart';
import 'package:mask_store_app/ui/main_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(
        viewModel: MainViewModel(
          storeRepository: MockStoreRepository(),
          locationRepository: MockLocationRepository(),
        ),
      ),
    );
  }
}

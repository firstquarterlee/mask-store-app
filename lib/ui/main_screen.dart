import 'package:flutter/material.dart';
import 'package:mask_store_app/ui/component/store_item.dart';
import 'package:mask_store_app/ui/main_view_model.dart';

class MainScreen extends StatelessWidget {
  final MainViewModel viewModel;

  const MainScreen({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳: ${viewModel.stores.length}곳'),
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (BuildContext context, Widget? child) {
          return ListView(
            children: viewModel.stores
                .map((store) => StoreItem(store: store))
                .toList(),
          );
        },
      ),
    );
  }
}

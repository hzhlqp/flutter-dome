import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_app/ui/common/app_colors.dart';
import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: const Text('flutter_app')),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Center(
            child: TextButton(
                style: ButtonStyle(
                    textStyle: const WidgetStatePropertyAll(
                        TextStyle(color: Colors.white)),
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.pink.shade400)),
                onPressed: () {
                  viewModel.incrementCounter();
                  debugPrint('add.....');
                },
                child: Text('增加 ${viewModel.counter}',
                    style: const TextStyle(color: Colors.white)))),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}

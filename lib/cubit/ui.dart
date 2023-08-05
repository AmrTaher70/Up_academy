import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:up_course2/cubit/cubit.dart';
import 'package:up_course2/cubit/state.dart';

class Ui extends StatefulWidget {
  const Ui({Key? key}) : super(key: key);

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button that many times '),
              const SizedBox(
                height: 15,
              ),
              // Display the counter value from the CounterCubit
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text(
                    state.toString(),
                    style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                child: const Icon(CupertinoIcons.plus),
              ),
              const SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                child: const Icon(CupertinoIcons.minus),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

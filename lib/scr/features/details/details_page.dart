import 'package:aka_project/scr/features/details/detail_bloc/detail_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Page"),
      ),
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (BuildContext context, DetailState state) => state.map(
          loading: (value) => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (value) => ListView.builder(
            itemCount: value.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                onLongPress: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("Malumotni o'chiraszmi"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Back"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("ok"),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: Text(value.items[index].name),
              );
            },
          ),
          error: (value) => const Center(
            child: Text("Nimadir Xato Bo'ldi"),
          ),
        ),
      ),
    );
  }
}

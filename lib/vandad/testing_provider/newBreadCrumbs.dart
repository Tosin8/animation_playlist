import 'package:animation_playlist/vandad/testing_provider/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewBreadCrumbWidget extends StatefulWidget {
  const NewBreadCrumbWidget({super.key});

  @override
  State<NewBreadCrumbWidget> createState() => _NewBreadCrumbWidgetState();
}

class _NewBreadCrumbWidgetState extends State<NewBreadCrumbWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add new bread crumb'),
        ),
        body: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter a new bread crumb...',
              ),
            ),
            TextButton(
              onPressed: () {
                final text = _controller.text;
                if (text.isNotEmpty) {
                  final breadCrumb = BreadCrumb(
                    isActive: false,
                    name: text,
                  );
                  context.read<BreadCrumbProvider>().add(breadCrumb);
                }
              },
              child: const Text('Add'),
            ),
          ],
        ));
  }
}

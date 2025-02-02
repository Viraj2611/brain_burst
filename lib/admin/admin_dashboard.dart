import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.question_answer),
            title: const Text("Title "),
            subtitle: const Text("Subtitle "),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialogBox,
        child: const Icon(Icons.add),
      ),
    );
  }

  _showDialogBox() {
    Get.defaultDialog(
      titlePadding: EdgeInsets.only(top: 15),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      title: "Add Quiz",
      content: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter the category name",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter category subtitle",
            ),
          ),
        ],
      ),
      textCancel: 'Cancel',
      textConfirm: 'Create',
      onConfirm: () {
        Get.back();
      },
    );
  }
}

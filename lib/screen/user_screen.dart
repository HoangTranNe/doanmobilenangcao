import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  // Biến để lưu trữ giá trị của các trường thông tin
  String name = "John Doe";
  String email = "johndoe@example.com";
  String phone = "123-456-7890";
  String address = "123 Main Street";
  String birthday = "January 1, 1990";

  // Biến trạng thái để kiểm soát chế độ chỉnh sửa
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isEditing = !isEditing;
              });
            },
            icon: Icon(isEditing ? Icons.check : Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              isDark ? Icons.light_mode : Icons.dark_mode,
            ),
          ),
        ],
      ),
      body: Container(        
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,            
            decoration: BoxDecoration(
              color: isDark ? Colors.black : Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Sử dụng SizedBox để hiển thị thông tin trong TextField
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: TextEditingController(text: name),
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            enabled:
                                isEditing, // Chỉ cho phép chỉnh sửa khi isEditing là true
                            style: const TextStyle(fontSize: 16), // Điều chỉnh kích thước phông chữ
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: TextEditingController(text: email),
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            enabled: isEditing,
                            style: const TextStyle(fontSize: 16), // Điều chỉnh kích thước phông chữ
                            decoration: const InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: TextEditingController(text: phone),
                            onChanged: (value) {
                              setState(() {
                                phone = value;
                              });
                            },
                            enabled: isEditing,
                            style: const TextStyle(fontSize: 16), // Điều chỉnh kích thước phông chữ
                            decoration: const InputDecoration(
                              labelText: 'Phone',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: TextEditingController(text: address),
                            onChanged: (value) {
                              setState(() {
                                address = value;
                              });
                            },
                            enabled: isEditing,
                            style: const TextStyle(fontSize: 16), // Điều chỉnh kích thước phông chữ
                            decoration: const InputDecoration(
                              labelText: 'Address',
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: TextEditingController(text: birthday),
                            onChanged: (value) {
                              setState(() {
                                birthday = value;
                              });
                            },
                            enabled: isEditing,
                            style: const TextStyle(fontSize: 16), // Điều chỉnh kích thước phông chữ
                            decoration: const InputDecoration(
                              labelText: 'Birthday',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

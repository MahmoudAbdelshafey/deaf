import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  static String routeName = 'profile page';
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  String _name = "John Doe";
  String _email = "johndoe@example.com";

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _nameController.text = _name;
    _emailController.text = _email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              setState(() {
                _isEditing = true;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Name",
                enabled: _isEditing,
              ),
              enabled: _isEditing,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                enabled: _isEditing,
              ),
              enabled: _isEditing,
            ),
            SizedBox(height: 20),
            _isEditing
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isEditing = false;
                            _name = _nameController.text;
                            _email = _emailController.text;
                          });
                        },
                        child: Text("Save"),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

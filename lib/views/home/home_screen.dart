import 'package:flutter/material.dart';

import '../../config/routes/routes_name.dart';
import '../../services/storage/local_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () async {
              LocalStorage localStorage = LocalStorage();
              await localStorage.removeValue('token');
              await localStorage.removeValue('isLogin');

              if (!context.mounted) return;

              Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesName.loginScreen,
                (route) => false,
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}

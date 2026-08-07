import 'package:flutter/material.dart';
import '../../models/user_activity_model.dart';

class FeatureDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feature Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Activity'),
            UserActivityWidget(),
          ],
        ),
      ),
    );
  }
}

class UserActivityWidget extends StatefulWidget {
  @override
  _UserActivityWidgetState createState() => _UserActivityWidgetState();
}

class _UserActivityWidgetState extends State<UserActivityWidget> {
  final List<Map<String, dynamic>> _userActivities = [
    {'timestamp': DateTime.now().toString(), 'eventType': 'Login', 'metadata': {'device': 'Mobile'}},
    {'timestamp': (DateTime.now() - Duration(hours: 1)).toString(), 'eventType': 'Logout', 'metadata': {'device': 'Desktop'}}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _userActivities.length,
      itemBuilder: (context, index) {
        final activity = _userActivities[index];
        return ListTile(
          title: Text(activity['eventType']),
          subtitle: Text(activity['timestamp']),
        );
      },
    );
  }
}
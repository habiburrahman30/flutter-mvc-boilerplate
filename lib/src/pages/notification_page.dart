import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  // Sample list of notifications
  final List<Map<String, String>> notifications = [
    {
      'title': 'New Message',
      'description': 'You have received a new message from John.',
      'time': '10:30 AM',
    },
    {
      'title': 'Order Shipped',
      'description': 'Your order #12345 has been shipped.',
      'time': 'Yesterday',
    },
    {
      'title': 'Payment Received',
      'description': 'Payment of \$50.00 has been received.',
      'time': '2 days ago',
    },
    {
      'title': 'App Update',
      'description': 'A new version of the app is available.',
      'time': '1 week ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Notifications'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return NotificationItem(
            title: notification['title']!,
            description: notification['description']!,
            time: notification['time']!,
          );
        },
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String description;
  final String time;

  const NotificationItem({
    required this.title,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: CircleAvatar(
          child: Icon(
            Icons.notifications,
            color: Colors.blue,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        trailing: Text(
          time,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[500],
          ),
        ),
        onTap: () {
          // Handle notification tap
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('You tapped on: $title'),
            ),
          );
        },
      ),
    );
  }
}

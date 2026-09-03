import 'package:flutter/material.dart';
import 'chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Chat(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contactsArray = [
      {'name': 'John Doe', 'email': 'john@example.com', 'gender': 'male'},
      {'name': 'Jane Smith', 'email': 'jane@example.com', 'gender': 'female'},
      {'name': 'Alex Miller', 'email': 'alex@example.com', 'gender': 'male'},
      {'name': 'Emily Davis', 'email': 'emily@example.com', 'gender': 'female'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
       body:Container(
         width: 70,
         height: 20,
         color: Colors.red,
       ),
      // ListView.builder(
      //   itemCount: contactsArray.length,
      //   itemBuilder: (context, index) {
      //     final contact = contactsArray[index];
      //     final isMale = contact['gender'] == 'male';
      //
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      //       child: Row(
      //         children: [
      //           CircleAvatar(
      //             backgroundColor: isMale ? Colors.blue.shade100 : Colors.pink.shade100,
      //             child: Icon(
      //               isMale ? Icons.male : Icons.female,
      //               color: isMale ? Colors.blue : Colors.pink,
      //             ),
      //           ),
      //           const SizedBox(width: 16),
      //           Expanded(
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Row(
      //                   children: [
      //                     const Icon(Icons.person, size: 16, color: Colors.grey),
      //                     const SizedBox(width: 4),
      //                     Text(
      //                       contact['name']!,
      //                       style: const TextStyle(
      //                         fontSize: 16,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 Row(
      //                   children: [
      //                     Text(
      //                       contact['email']!,
      //                       style: const TextStyle(
      //                         fontSize: 14,
      //                         color: Colors.grey,
      //                       ),
      //                     ),
      //                     const SizedBox(width: 12),
      //                     Text(
      //                       '(${contact['gender']!})',
      //                       style: TextStyle(
      //                         fontSize: 12,
      //                         color: isMale ? Colors.blue : Colors.pink,
      //                         fontWeight: FontWeight.w500,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

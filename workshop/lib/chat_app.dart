// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firestore Chat App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: ChatPage(),
//     );
//   }
// }

// class ChatPage extends StatefulWidget {
//   const ChatPage({super.key});

//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   final TextEditingController _controller = TextEditingController();
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   void _sendMessage(String text) async {
//     if (text.trim().isEmpty) return;

//     await _firestore.collection('messages').add({
//       'text': text.trim(),
//       'timestamp': FieldValue.serverTimestamp(),
//     });

//     _controller.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Chat App')),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _firestore
//                   .collection('messages')
//                   .orderBy('timestamp', descending: true)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(child: CircularProgressIndicator());
//                 }
//                 if (snapshot.hasError) {
//                   return Center(child: Text('Error: ${snapshot.error}'));
//                 }

//                 final messages = snapshot.data?.docs ?? [];
//                 if (messages.isEmpty) {
//                   return Center(child: Text('No messages yet.'));
//                 }

//                 return ListView.builder(
//                   reverse: true, // Newest message at the bottom
//                   itemCount: messages.length,
//                   itemBuilder: (context, index) {
//                     final data = messages[index].data() as Map<String, dynamic>;
//                     return ListTile(
//                       title: Text(data['text'] ?? ''),
//                       subtitle: Text(
//                         (data['timestamp'] != null
//                                 ? (data['timestamp'] as Timestamp)
//                                     .toDate()
//                                     .toString()
//                                 : 'Pending...')
//                             .toString(),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           // Input Field
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       hintText: 'Enter a message...',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 IconButton(
//                   icon: Icon(Icons.send, color: Colors.blue),
//                   onPressed: () => _sendMessage(_controller.text),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

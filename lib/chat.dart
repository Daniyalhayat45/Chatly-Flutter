import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  final List<Map<String, String>> chats = const [
    {
      "name": "Ali",
      "message": "Hey bro, how are you?",
      "time": "7:30 PM",
    },
    {
      "name": "Ahmed",
      "message": "Are you coming tomorrow?",
      "time": "6:45 PM",
    },
    {
      "name": "Hamza",
      "message": "Let's play Minecraft 😂",
      "time": "5:20 PM",
    },
    {
      "name": "Usman",
      "message": "Send me the project.",
      "time": "4:10 PM",
    },
    {
      "name": "Hassan",
      "message": "Okay bro 👍",
      "time": "3:35 PM",
    },
    {
      "name": "Daniyal",
      "message": "See you later!",
      "time": "2:15 PM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        foregroundColor: Colors.white,

        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),

            leading: const CircleAvatar(
              radius: 27,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),

            title: Text(
              chat["name"]!,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),

            subtitle: Text(
              chat["message"]!,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),

            trailing: Text(
              chat["time"]!,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Conversation(
                    name: chat["name"]!,
                  ),
                ),
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF25D366),
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}


// ---------------- CONVERSATION ----------------

class Conversation extends StatelessWidget {
  final String name;

  const Conversation({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE5DD),

      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        foregroundColor: Colors.white,

        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 17),
                ),
                const Text(
                  "online",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: const [
                Message(
                  text: "Hey bro!",
                  time: "7:20 PM",
                  sent: false,
                ),

                Message(
                  text: "Hey! How are you?",
                  time: "7:21 PM",
                  sent: true,
                ),

                Message(
                  text: "I'm good. What are you doing?",
                  time: "7:22 PM",
                  sent: false,
                ),

                Message(
                  text: "Working on my project 👍",
                  time: "7:23 PM",
                  sent: true,
                ),
              ],
            ),
          ),

          // Message input
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,

            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message",
                      prefixIcon: const Icon(
                        Icons.emoji_emotions_outlined,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF0F0F0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 5),

                CircleAvatar(
                  backgroundColor: const Color(0xFF25D366),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// ---------------- MESSAGE ----------------

class Message extends StatelessWidget {
  final String text;
  final String time;
  final bool sent;

  const Message({
    super.key,
    required this.text,
    required this.time,
    required this.sent,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
      sent ? Alignment.centerRight : Alignment.centerLeft,

      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: sent
              ? const Color(0xFFD9FDD3)
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text),

            const SizedBox(width: 8),

            Text(
              time,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
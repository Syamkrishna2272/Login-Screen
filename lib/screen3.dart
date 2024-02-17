import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final _messageController = TextEditingController();
  List<String> _messages = [];

  void _addMessage(String message) {
    setState(() {
      _messages.add(message);
    });
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('person'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_messages[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 48,
                        child: TextFormField(
                          controller: _messageController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Enter your message',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          if (_messageController.text.isNotEmpty) {
                            _addMessage(_messageController.text);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo_api/v2/model.dart';

class EditTodoScreen extends StatefulWidget {
  final Todo? todo;

  const EditTodoScreen({super.key, this.todo});

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.todo != null) {
      _titleController.text = widget.todo!.title;
      _descriptionController.text = widget.todo!.description;
    }
  }

  Future<void> saveTodo() async {
    setState(() {
      isLoading = true;
    });

    final isNew = widget.todo == null;
    final todo = Todo(
      id: widget.todo?.id ?? '',
      title: _titleController.text,
      description: _descriptionController.text,
    );

    if (isNew) {
      await http.post(
        Uri.parse('https://api.nstack.in/v1/todos'),
        body: jsonEncode(todo.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
    } else {
      await http.put(
        Uri.parse('https://api.nstack.in/v1/todos/${todo.id}'),
        body: jsonEncode(todo.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
    }

    setState(() {
      isLoading = false;
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo == null ? 'Add Todo' : 'Edit Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isLoading ? null : saveTodo,
              child: isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

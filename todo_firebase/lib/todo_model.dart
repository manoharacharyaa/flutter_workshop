class Todo {
  final String id;
  final String title;
  final String description;

  Todo({required this.id, required this.title, required this.description});

  factory Todo.fromJson(Map<String, dynamic> json, String id) {
    return Todo(
      id: id,
      title: json['title'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }
}

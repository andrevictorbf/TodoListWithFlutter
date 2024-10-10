class ToDo {
  String? id;
  String? toDoText;
  bool done;

  ToDo({
    required this.id,
    required this.toDoText,
    this.done = false,
  });

  static List<ToDo> toDoList() {
    return [
      ToDo(id: '1', toDoText: 'Acordar', done: true),
      ToDo(id: '2', toDoText: 'Estudar', done: true),
      ToDo(id: '3', toDoText: 'Trabalhar'),
      ToDo(id: '4', toDoText: 'Almocar')
    ];
  }
}

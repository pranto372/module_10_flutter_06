class Todo {
  String details;
  DateTime createdDateTime, upDatedDateTime;
  String status;

  Todo({
    required this.details,
    required this.createdDateTime,
    required this.upDatedDateTime,
    this.status = 'pending',
  });
}
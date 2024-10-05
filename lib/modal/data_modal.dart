class DataModal {
  DataModal({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory DataModal.fromMap(Map<String, dynamic> data) => DataModal(
        userId: data['userId'],
        id: data['id'],
        title: data['title'],
        body: data['body'],
      );
}

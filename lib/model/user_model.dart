class UserModel {
  final String login;
  final int id;
  final String nodeId;
  final String avatarUrl;

  const UserModel({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'], // Olha o valor na API
      id: map['id'],
      nodeId: map['node_id'],
      avatarUrl: map['avatar_url'],
    );
  }
  @override
  String toString() {
    return 'UserModel: login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl';
  }
}

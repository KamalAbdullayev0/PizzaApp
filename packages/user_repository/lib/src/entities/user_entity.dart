class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;
  MyUserEntity({
    required this.userId,
    required this.email,
    required this.hasActiveCart,
    required this.name,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'],
      email: doc['email'],
      hasActiveCart: doc['hasActiveCart'],
      name: doc['name'],
    );
  }
}

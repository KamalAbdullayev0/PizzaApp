import '../entities/entities.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;
  MyUser({
    required this.userId,
    required this.email,

    required this.hasActiveCart,
    required this.name,
  });

  static final empty = MyUser(userId: '', email: '', hasActiveCart: false, name: '');
  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  static MyUser fromEntity(MyUserEntity entity){
    return MyUser(userId: entity.userId, email: entity.email, hasActiveCart: entity.hasActiveCart, name: entity.name);

  }

  @override
  String toString(){
    return 'MyUser: $userId, $email , $name, $hasActiveCart';
  }
}
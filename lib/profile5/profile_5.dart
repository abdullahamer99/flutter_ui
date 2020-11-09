class User{
  String name,profession;

  User({this.name, this.profession});
}
class Profile{
  User user;

  Profile(this.user);
}
class ProfileProvider{
  static Profile profile() {
    return Profile(
      User(
        name: 'Erik Walters',
        profession: 'Photography',
      ),

    );
  }
  static List<String>PHOTOS(){
    return List.generate(15, (index){
      return 'assets/shared/abdullah.png';
    },);
  }
  static List<String>VIDEO(){
    return List.generate(15, (index){
      return 'assets/shared/abdullah.png';
    },);
  }
  static List<String>POSTS(){
    return List.generate(15, (index){
      return 'assets/shared/abdullah.png';
    },);
  }
  static List<String>FRINDES(){
    return List.generate(15, (index){
      return 'assets/shared/abdullah.png';
    },);
  }
}
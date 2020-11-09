
import 'package:flutter_ui/profile4/profile_4.dart';

class ProfileProvider{
  static Profile getProvider(){
    return Profile(
      user: User(
            name: 'Erik Walters',
            profession: 'Photography',
            about: 'Published wedding, beauty, fashion, portrait photographer and retoucher.'

        ),
        following: 346,
        followers: 2318,
        friends: 175

    );
}

}
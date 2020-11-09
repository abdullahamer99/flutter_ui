
import 'file:///C:/Users/Abdullah%20Amer/AndroidStudioProjects/flutter_ui/lib/profile/profile2/profile_2.dart';

class Profile2Provider{
  static Profile getProfile(){
    return Profile(
    user:User(
      name: "Erik Walters",
      address: "677 Adams Bypass",
      about: "With his precious eye for story, great composition, and settled colors, "
          "Jono has been my favorite travel photographer for some time now. He seeks real stories and takes pictures of"
          " everyday life. He travels to places I dream of and captures the moments in a way that makes you feel "
          "like you are there, standing right next to him.",
    ),
      followers:2318,
      following: 346,
      friends: 175,
    );
  }


}

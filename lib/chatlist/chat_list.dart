
import 'package:flutter_ui/chatlist/conversion.dart';
import 'package:flutter_ui/chatlist/message.dart';
import 'package:flutter_ui/chatlist/user.dart';

class MessageProvider{
  static List<Conversion> getConversation(){
     User user1=User(
       name: 'Abdullah Amer',
         avatar: 'assets/shared/abdullah.png',
       phone: '07831382927'
     );
     User user2=User(
         name: 'Abdullah Amer',
         avatar:'assets/shared/abdullah.png',
         phone: '07831382927'
     );
    return [
      Conversion(
        users:[user1, user2],
         messages: [Message(sender: user1,receiver: user2,
           dateTime:'23:35', body:'Hi there how are you',),

          ],
      ),
      Conversion(
        users:[user1, user2],
        messages: [Message(sender: user1,receiver: user2,
          dateTime:'23:35', body:'Hi there how are you',),

        ],
      ),
      Conversion(
        users:[user1, user2],
        messages: [Message(sender: user1,receiver: user2,
          dateTime:'23:35', body:'Hi there how are you',),

        ],
      ),
      Conversion(
        users:[user1, user2],
        messages: [Message(sender: user1,receiver: user2,
          dateTime:'23:35', body:'Hi there how are you',),

        ],
      ),
      Conversion(
        users:[user1, user2],
        messages: [Message(sender: user1,receiver: user2,
          dateTime:'23:35', body:'Hi there how are you',),

        ],
      ),
      Conversion(
        users:[user1, user2],
        messages: [Message(sender: user1,receiver: user2,
          dateTime:'23:35', body:'Hi there how are you',),

        ],
      ),
      Conversion(
        users:[user1, user2],
        messages: [Message(sender: user1,receiver: user2,
          dateTime:'23:35', body:'Hi there how are you',),

        ],
      ),
    ];
  }
}
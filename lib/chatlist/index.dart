import 'package:flutter/material.dart';
import 'package:flutter_ui/chatlist/chat_list.dart';
import 'conversion.dart';
import 'message.dart';

class ListIndex extends StatefulWidget {
  @override
  _ListIndexState createState() => _ListIndexState();
}
class _ListIndexState extends State<ListIndex> {
  static List<List<Conversion>> conversations = [
    MessageProvider.getConversation(),
    MessageProvider.getConversation(),
    MessageProvider.getConversation(),
  ];
  Color _dartText = Color(0xFF111111);
  Color _lightText = Color(0xFFa6a6a6);
  Color _pinkColor = Color(0xFFf92d86);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (BuildContext context, int position) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  conversations[position].first.messages.last.dateTime,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...List.generate(conversations[position].length, (index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 24),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage(conversations[position][index].users.first.avatar),
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              conversations[position][index].users[0].name,
                              style: TextStyle(
                                color: _dartText,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              conversations[position][index].messages.last.body,
                              style: TextStyle(
                                color: _lightText,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Transform.translate(
                          offset: Offset(-9, -9),
                          child: Text(
                            conversations[position][index]
                                .messages
                                .last
                                .dateTime,
                            style: TextStyle(
                                color: _pinkColor
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}


/*
 Container(
      padding: EdgeInsets.all(24),
      child: ListView.builder(
          itemCount: conversations.length,
          itemBuilder:(BuildContext context,int position){
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 16),
                  child: Text(conversations[position].first.messages.last.dateTime,style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                ...List.generate(conversations[position].length, (index)
                {
                  return Card(
                    margin: EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:<Widget> [
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(right: 24),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:ExactAssetImage(conversations[position][index].users[0].avatar),fit: BoxFit.cover
                                ),
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(height: 4,),

                          Column(
                            children: [
                              Text(conversations[position][index].users[0].name),
                              Text(conversations[position][index].messages[0].body)
                            ],
                          ),
                          Spacer(flex: 1,),
                          Transform.translate(
                            offset:Offset(-9,-9),
                          ),
                          Text(conversations[position][index].messages.last.dateTime,style: TextStyle(
                              color: _pinkColor
                          ),)
                        ],
                      ),
                    ),
                  );
                }
                ).toList(),
              ],
            );
          } ),
    );
 */
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui/chatlist/chat_list.dart';
import 'package:flutter_ui/chatlist/conversion.dart';

import 'index.dart';

class Chat1 extends StatefulWidget {
  @override
  _Chat1State createState() => _Chat1State();
}
class _Chat1State extends State<Chat1>  with SingleTickerProviderStateMixin{
  List<Conversion> conversion=MessageProvider.getConversation();
     TabController _tabController;
     @override
  void initState() {
    super.initState();
    _tabController = TabController(
          length: 4,
          vsync: this,
          initialIndex: 0
      );
  }
     @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        CustomPaint(
         painter: Custompan(),
          child: Container(),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title:Text('MESSAGES',style: TextStyle(fontSize: 24),),
            centerTitle: true,
            leading: IconButton(
             onPressed: (){},
              icon: Icon(Icons.chevron_left,size: 50),
            ),
              bottom: TabBar(
                indicatorColor: Colors.transparent,
               labelColor: Colors.white,
                unselectedLabelColor:Color(0xFFf76aa4),
                controller:_tabController,
                indicator: BoxDecoration(),
                tabs: <Widget>[
                  Tab(child: Text('Inbox'),),
                  Tab(child: Text('Groups'),),
                  Tab(child: Text('Online'),),
                  Tab(child: Text('History'),),
                ],
              ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              ListIndex(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        )
      ],
    );
  }

}
class Custompan extends CustomPainter  {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect=Rect.fromLTWH(0, 0, size.width, size.height*0.65);
    Gradient gradient=LinearGradient(
      colors: [
        Color(0xFFef1385),
        Color(0xFFf12280),
        Color(0XFFf63d76),
        Color(0xFFf84f70),
      ],
      stops: [
        0.2,
        0.4,
        0.6,
        0.8,
      ]
    );
    Paint paint=Paint();
    Path path=Path();
    paint.shader=gradient.createShader(rect);
    path.lineTo(0,0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height*0.3);
    path.quadraticBezierTo( size.width/2 , size.height*0.65 ,0, size.height*0.3);
    path.lineTo(0, size.height*0.3);
    path.close();
    canvas.drawPath(path,paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;

}

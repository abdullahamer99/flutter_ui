
import 'package:flutter/material.dart';

import 'package:flutter_ui/profile5/profile_5.dart';



class Profile5 extends StatefulWidget {
  @override
  _Profile5State createState() => _Profile5State();
}

class _Profile5State extends State<Profile5> with SingleTickerProviderStateMixin{
  Profile _profile = ProfileProvider.profile();
  static Color _textColor = Color(0xFF4e4e4e);
  TabController _tabController;
 static Colors _buttonColor = Color(0xFFf05522) as Colors;
  @override
  void initState() {
    super.initState();
      _tabController=TabController(
        length: 4,
        vsync: this,
        initialIndex: 0,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back,
            color: Colors.grey,
            size: 20,),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings,
                color: Colors.grey, size: 30,)
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 24),
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/shared/abdullah.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 16),
              child: Text(_profile.user.name,style: TextStyle(
                color: _textColor,
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),),
            ),
             Padding(
               padding:  EdgeInsets.only(bottom: 16),
               child: Text(_profile.user.profession,   style: TextStyle(
                 color: Colors.grey.shade400,
               ),),
             ),
            Align(
              child: MaterialButton(
                elevation: 0,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.deepOrange.shade700,
                padding: EdgeInsets.only(right: 32, left: 32, top: 8, bottom: 8),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Text("FOLLOW",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
            ),

            Flexible(child: _tabView(context)),
          ],
        ),
      ),
    );
  }

  TextStyle _bottomBarTitle = TextStyle(
    color: Colors.grey.shade400,
  );
  TextStyle _bottomBarCounter = TextStyle(
    color: _textColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  Widget _tabView(BuildContext context) {
    return Column(
      children: [
    Container(
    padding: EdgeInsets.only( top: 6 ),
    decoration: BoxDecoration(
    border: Border(
    top: BorderSide(color: Colors.grey.shade200),
    bottom: BorderSide(color: Colors.grey.shade200),
    )),
       child: TabBar(
          indicatorPadding: EdgeInsets.symmetric(horizontal: 32),
          unselectedLabelColor: Colors.grey.shade400,
          labelColor: _textColor,
          indicatorWeight: 3,
          indicatorColor: _textColor,
          controller: _tabController,
          tabs:<Widget>[
            Tab(
             child:Text('PHOTOS'),
            ),
            Tab(
              child: Text('VIDEOS'),
            ),
            Tab(
              child: Text('POSTS'),
            ),
            Tab(
              child: Text('FRINDES'),
            ),

          ],
        ),
    ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: [
              _photosView(context),
              _videosView(context),
              _posts(context),
              _frindesView(context),
            ],
          ),
        ),
      ],
    );
  }
 Widget _photosView(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.PHOTOS().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage( photo )
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
 }
  Widget _videosView(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.VIDEO().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage( photo )
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
  }
  Widget _posts(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 3,
        children: ProfileProvider.POSTS().map( ( photo ){
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage( photo )
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          );
        } ).toList(),
      ),
    );
  }
 Widget _frindesView(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(24),
     child: GridView.count(
       mainAxisSpacing: 16,
       crossAxisSpacing: 16,
       crossAxisCount: 3,
       children: ProfileProvider.FRINDES().map( ( photo ){
         return Container(
           decoration: BoxDecoration(
               image: DecorationImage(
                   image: ExactAssetImage( photo )
               ),
               borderRadius: BorderRadius.all(Radius.circular(10))
           ),
         );
       } ).toList(),
     ),
   );
 }
}



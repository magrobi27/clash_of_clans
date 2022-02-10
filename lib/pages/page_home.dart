import 'package:clash_of_clans/api/api_player.dart';
import 'package:clash_of_clans/models/player.dart';
import 'package:clash_of_clans/pages/page_statePlayer.dart';
import 'package:flutter/material.dart';


class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final myController = TextEditingController();

void existe(String value)async {
  apiPlayer APIplayer =apiPlayer(token: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImY1ODE4MDQ4LWNkMTctNDE4OS1iNTU4LWQwMTg2ZjdkN2Y4MSIsImlhdCI6MTY0NDM4OTgwNSwic3ViIjoiZGV2ZWxvcGVyLzMwYmY2ZDYyLTdkODktOTk0Zi1iZTExLWFjZTQwOThiZjkyYyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjguOC44LjgiXSwidHlwZSI6ImNsaWVudCJ9XX0.XfMZGQaJ0e9WEnmcxMO2d7iOUS3YHqpU1VnClnQh8xYnuuWhf-Cg0hKUKly-d6kqXzYgZfbiYEKcwUkX7LXCVQ');
  Player? lePlay = await APIplayer.getPlayerTag("");

  print('salut');

  if (text != lePlay!.tag){
    print('code introuvable');
  } else {
    await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> PageStatPlayer()));
  }

}

  String? text;

  late TextEditingController textController;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFF565050),
        automaticallyImplyLeading: true,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Text(
            'Clash Of Clans\n',
          ),
        ),

        actions: [],
        centerTitle: true,
        elevation: 4,

      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 200),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40,0, 30, 0),
                child: TextFormField(
                  controller: myController,

                  decoration: InputDecoration(
                    labelText: 'Entrez votre Tag',
                    hintText: '...\n',


                  ),
                  onChanged: (String value){
                    setState(() {
                      text = value;
                    });
                  },

                ),

              ),
              Align(
                child: ElevatedButton(
                  onPressed: () async {

                    existe(text.toString());


                  },
                  child: Text(
                      'Rechercher'
                  ),

                ),

              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0),
                child: Image.network(
                  'https://cdn1.dotesports.com/wp-content/uploads/sites/8/2021/02/14083941/clashofclans.jpg',
                  width: 450,
                ),

              )
            ],
          ),
        ),

      ),




    );

  }
}

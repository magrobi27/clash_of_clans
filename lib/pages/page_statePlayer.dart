import 'package:clash_of_clans/api/api_player.dart';
import 'package:clash_of_clans/models/player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class PageStatPlayer extends StatefulWidget {
  const PageStatPlayer({Key? key}) : super(key: key);

  @override
  _PageStatPlayerState createState() => _PageStatPlayerState();
}

class _PageStatPlayerState extends State<PageStatPlayer> {

  void data() async {
    apiPlayer APIplayer =apiPlayer(token: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImY1ODE4MDQ4LWNkMTctNDE4OS1iNTU4LWQwMTg2ZjdkN2Y4MSIsImlhdCI6MTY0NDM4OTgwNSwic3ViIjoiZGV2ZWxvcGVyLzMwYmY2ZDYyLTdkODktOTk0Zi1iZTExLWFjZTQwOThiZjkyYyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjguOC44LjgiXSwidHlwZSI6ImNsaWVudCJ9XX0.XfMZGQaJ0e9WEnmcxMO2d7iOUS3YHqpU1VnClnQh8xYnuuWhf-Cg0hKUKly-d6kqXzYgZfbiYEKcwUkX7LXCVQ');
    Player? lePlay = await APIplayer.getPlayerTag("");


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
            'Stats Player\n',
          ),
        ),

        actions: [],
        centerTitle: true,
        elevation: 4,
      ),

      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xFFFFD33E),
                        size: 24,
                      ),
                      Text(
                        'Nom',
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(175, 0, 0, 0),
                        child: FaIcon(
                          FontAwesomeIcons.trophy,
                          color: Color(0xFFFFD33E),
                          size: 24,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Nombre trophées',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Etoile de guerre :',
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Icon(
                        Icons.star_border_purple500_outlined,
                        color: Color(0xFFFFD33E),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(65, 0, 0, 0),
                      child: Text(
                        'Attaque réussie :',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.medal,
                        color: Color(0xFFFFD33E),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Défense :',
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.shieldAlt,
                        color: Color(0xFFFFD33E),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(160, 0, 0, 0),
                      child: Text(
                        'Dons :',

                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.donate,
                        color: Color(0xFFFFD33E),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

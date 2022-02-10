import 'package:clash_of_clans/api/api_player.dart';
import 'package:clash_of_clans/models/player.dart';
import 'package:clash_of_clans/pages/page_home.dart';
import 'package:flutter/material.dart';

Future<void> main() async {


apiPlayer APIplayer =apiPlayer(token: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImY1ODE4MDQ4LWNkMTctNDE4OS1iNTU4LWQwMTg2ZjdkN2Y4MSIsImlhdCI6MTY0NDM4OTgwNSwic3ViIjoiZGV2ZWxvcGVyLzMwYmY2ZDYyLTdkODktOTk0Zi1iZTExLWFjZTQwOThiZjkyYyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjguOC44LjgiXSwidHlwZSI6ImNsaWVudCJ9XX0.XfMZGQaJ0e9WEnmcxMO2d7iOUS3YHqpU1VnClnQh8xYnuuWhf-Cg0hKUKly-d6kqXzYgZfbiYEKcwUkX7LXCVQ');
Player? lePlay = await APIplayer.getPlayerTag('CVQY9UG');
print('saluuuuuuuuuuuuuuuuuuuuut');
print(lePlay!.nom);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageHome(),
    );
  }
}

import 'dart:convert';
import 'dart:io';
import 'dart:convert';
import 'package:clash_of_clans/models/player.dart';
import 'package:http/http.dart' as http;

class apiPlayer{
  String baseUrl = "https://api.clashofclans.com/v1/players/";
  String token;
apiPlayer({required this.token});

Future<Player?> getPlayerTag( String tag) async {
  String url = "${baseUrl}%23${tag}";

    final response = await http.get(
    Uri.parse(url),
  headers : {
      HttpHeaders.authorizationHeader :
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjA3NzI5Yjk0LTVhMzQtNDlhMy1iNDhjLTlkODZlZWMxN2MzZSIsImlhdCI6MTY0NDQ4Mjk5MCwic3ViIjoiZGV2ZWxvcGVyLzMwYmY2ZDYyLTdkODktOTk0Zi1iZTExLWFjZTQwOThiZjkyYyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjgwLjIxNS43My44NyJdLCJ0eXBlIjoiY2xpZW50In1dfQ.CY4y9i1gPT5eoXSRxgClDhJ3KEhH6ec7WjT-cU_FZWHiIf8_qfQyOqAxTV2G4Mj6U4VbhOujMj9QMr8I146Rig',

      },
    );
    print(response.statusCode);


  if(response.statusCode == 200){
    return  Player.FromJson(jsonDecode(response.body));
  }

  return null;



}


  }



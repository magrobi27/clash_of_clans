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
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6Ijg1YWYxN2ZlLTllM2UtNDE4Yy05NGFhLTMwN2ZlZTNkNmUzOSIsImlhdCI6MTY0NDQxNjU5OSwic3ViIjoiZGV2ZWxvcGVyLzMwYmY2ZDYyLTdkODktOTk0Zi1iZTExLWFjZTQwOThiZjkyYyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjgwLjIxNS45Mi41OCJdLCJ0eXBlIjoiY2xpZW50In1dfQ.qCeWA90EXVT4joNA1nVVDrqE9chfUxEwFR3aoyG9XjUu2GQiC-sWO9i0mdap28WKDkFrATHo5dciy6_87u0Tuw',

      },
    );
    print(response.statusCode);


  if(response.statusCode == 200){
    return  Player.FromJson(jsonDecode(response.body));
  }

  return null;



}


  }



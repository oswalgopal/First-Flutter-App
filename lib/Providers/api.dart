import 'package:http/http.dart' as http;

 class Api {
  var serverUrl = 'http://3.7.81.109:8081/';

  getApi(url) async {
    var response = await http.get(this.serverUrl + url);
    return response;
  }


  postApi(param) async {
    var response = await http.post(this.serverUrl + param.url,
      body: param.data, headers: {});
    return response;
  }
}

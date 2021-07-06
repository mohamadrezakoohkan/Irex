

class GeneralResponse {

  List<dynamic> data;

  GeneralResponse(this.data);

  GeneralResponse.fromJson(Map<String, dynamic> json)
      : data = json["data"] as List<dynamic>;
}

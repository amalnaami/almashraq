class NetworkException implements Exception{
  String error;
  int code;
  NetworkException({this.error = "Something Went Wrong", this.code});
}
class NetworkException implements Exception{
  String error;
  NetworkException({this.error = "Something Went Wrong"});
}
abstract class Tokens{
  static String _accessToken = "Non";
  static String _refreshToken = "Non";

  static setAccessToken(String token){
    _accessToken = token;
  }

  static setRefreshToken(String token){
    _refreshToken = token;
  }

  static String getAccessToken(){
    return _accessToken;
  }

  static String getRefreshToken(){
    return _refreshToken;
  }
}
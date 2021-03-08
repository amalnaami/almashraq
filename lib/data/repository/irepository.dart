abstract class IRepository {
  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);
}

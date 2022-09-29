import 'dart:async';

class SignInBloc {
  final StreamController<bool> _isLoadingController = StreamController();
  Stream<bool> get IsLoadingStream => _isLoadingController.stream;

  void dispose() {
    _isLoadingController.close();
  }

  void setIsLoading(bool isLoading) => _isLoadingController.add(isLoading);
}

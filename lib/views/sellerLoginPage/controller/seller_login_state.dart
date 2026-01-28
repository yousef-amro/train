abstract class SellerLoginState {}

class SellerLoginInitial extends SellerLoginState {}

class SellerLoginLoading extends SellerLoginState {}

class SellerLoginSuccess extends SellerLoginState {}

class SellerLoginError extends SellerLoginState {
  final String message;
  SellerLoginError(this.message);
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

<<<<<<< HEAD
import 'package:dw9_delivery_app/app/dto/order_product_dto.dart';

=======
>>>>>>> 1e3e6e5dc889e13766ea4142fdf4b5f305dcba4b
import '../../models/product_model.dart';

part 'home_state.g.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final List<ProductModel> products;
  final String? errorMessage;
<<<<<<< HEAD
  final List<OrderProductDto> shoppingBag;
=======
>>>>>>> 1e3e6e5dc889e13766ea4142fdf4b5f305dcba4b

  const HomeState({
    required this.status,
    required this.products,
<<<<<<< HEAD
    required this.shoppingBag,
=======
>>>>>>> 1e3e6e5dc889e13766ea4142fdf4b5f305dcba4b
    this.errorMessage,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        products = const [],
<<<<<<< HEAD
        shoppingBag = const [],
        errorMessage = null;

  @override
  List<Object?> get props => [status, products, errorMessage, shoppingBag];
=======
        errorMessage = null;

  @override
  List<Object?> get props => [status, products, errorMessage];
>>>>>>> 1e3e6e5dc889e13766ea4142fdf4b5f305dcba4b

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductModel>? products,
    String? errorMessage,
<<<<<<< HEAD
    List<OrderProductDto>? shoppingBag,
=======
>>>>>>> 1e3e6e5dc889e13766ea4142fdf4b5f305dcba4b
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
<<<<<<< HEAD
      shoppingBag: shoppingBag ?? this.shoppingBag,
=======
>>>>>>> 1e3e6e5dc889e13766ea4142fdf4b5f305dcba4b
    );
  }
}

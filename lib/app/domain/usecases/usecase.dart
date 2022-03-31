import 'package:dartz/dartz.dart';

abstract class UseCase<TypeOfReturn, Params> {
  Future<Either<Exception, TypeOfReturn>> call(Params params);
}

class NoParams {
  const NoParams();
}

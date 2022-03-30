abstract class UseCase<TypeOfReturn, Params> {
  Future<TypeOfReturn> call(Params params);
}

class NoParams {
  const NoParams();
}

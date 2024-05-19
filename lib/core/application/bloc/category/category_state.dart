part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState(
      {required bool isLoading,
      required bool isAddcateHasError,
      required bool isAddCategorySuccess,
      required bool isGetCategoryHasError,
      required bool isGEtCategorySuccess,
      required bool isDeleteCategoryhasErro,
      required bool isDeleteCategorySuccess,
      required List<CategoryAll>? getallCategory ,
      String? messag}) = _CategoryState;
  factory CategoryState.initial() {
    return const CategoryState( 
        isLoading: false,
        isAddcateHasError: false,
        isAddCategorySuccess: false,
        isGEtCategorySuccess: false,
        isGetCategoryHasError: false,isDeleteCategorySuccess: false,isDeleteCategoryhasErro: false,getallCategory: []);
  }
}

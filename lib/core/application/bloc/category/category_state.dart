part of 'category_bloc.dart';


@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = Initial;
  const factory CategoryState.loading() = CategoryLoading; 
  const factory CategoryState.success(List<CategoryAll> categories) = GetCategorySuccess;
  const factory CategoryState.errorst(String errmessage) = GetCategoryErrorst;
  const factory CategoryState.deleteSuccess() = DeleteSucces;
  const factory CategoryState.addCategorySuccess(String successmsg) = AddCateSucces;
  // const factory CategoryState.addSuccess(String succesmsg) = AddCategorySuccess;
  const factory CategoryState.addFailure(String msg) = AddCategoryFailure;
}

// @freezed
// class CategoryState with _$CategoryState {
//   const factory CategoryState(
//       {required bool isLoading,
//        required bool error,
//        required bool isLoaded, 
//       required bool isAddcategoryHasError,
//       required bool isAddCategorySuccess,
//       // required bool isGetCategoryHasError,
//       // required bool isGEtCategorySuccess,
//       // required bool isDeleteCategoryhasErro,
//       // required bool isDeleteCategorySuccess,
//       required List<CategoryAll>? getallCategory,
//       String? messag}) = _CategoryState;
//   factory CategoryState.initial() {
//     return const CategoryState( 
//         isLoading: false,
//         isAddcategoryHasError: false,
//         isAddCategorySuccess: false,
//         // isGEtCategorySuccess: false,
//         // isGetCategoryHasError: false,
//         // isDeleteCategorySuccess: false,isDeleteCategoryhasErro: false,
//         getallCategory: [],error: false,isLoaded: false);
//   }
// }

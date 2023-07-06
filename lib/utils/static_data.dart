class StaticValues {
  static const baseUrl = 'https://api.socafe.cafe/api/';
  static const imageUrl = 'https://api.socafe.cafe';

  static int? id;
  static const userSignUpUrl = '${StaticValues.baseUrl}UserApi/RegsiterUser';
  static const userLoginUrl = '${StaticValues.baseUrl}UserApi/UserLogin';
  static const addBranchUrl = '${StaticValues.baseUrl}Branch/AddBranch';
  static const getBranchUrl = '${StaticValues.baseUrl}Branch/GetBranches';
  static const getUserUrl = '${StaticValues.baseUrl}UserApi/GetUsers';
  static const getusersProfilUrl = '${StaticValues.baseUrl}UserApi/UserProfile';
  static const addCategoryUrl = '${StaticValues.baseUrl}Categories/AddCategory';
  static const getAllCategoryUrl =
      '${StaticValues.baseUrl}Categories/GetCategories/';
  static const addProductUrl = '${StaticValues.baseUrl}Product/AddProduct';
  static const getOwnerUrl = '${StaticValues.baseUrl}UserApi/OwnerProfile';
  static const getSliderUrl = '${StaticValues.baseUrl}Slider/GetSlider/3';
  static const getproducteUrl = '${StaticValues.baseUrl}Product/GetProduct/';
  static const addUserFeedBackUrl =
      '${StaticValues.baseUrl}Feedback/AddCategory';
}

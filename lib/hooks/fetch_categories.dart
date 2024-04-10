import 'package:foodly/constants/constants.dart';
import 'package:foodly/models/api_error.dart';
import 'package:foodly/models/categories.dart';
import 'package:foodly/models/hook_models/hook_result.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_hooks/flutter_hooks.dart';

FetchHook useFetchCategories() {
  final categoriesItems = useState<List<CategoriesModel>?>(null);
  final isLoading = useState<bool>(false);
  final error = useState<Exception?>(null);
  final apiError = useState<ApiError?>(null);

  Future<void> fetchData() async {
    isLoading.value = true;

    try {
      Uri url = Uri.parse('$appBaseUrl/api/category/random');

      final response = await http.get(url);

   

      if(response.statusCode == 200) {
        categoriesItems.value = categoriesModelFromJson(response.body);
      }
      else {
        apiError.value = apiErrorFromJson(response.body);
      }
    }
    catch (e) {
      error.value = e as Exception;
    }
    finally {
      isLoading.value = false;
    }
  }

  useEffect(() {
    fetchData();
    return null;
  }, []
  );

  void refetch() {
    isLoading.value = true;
    fetchData();
  }

  return FetchHook(
    data: categoriesItems.value, 
    isLoading: isLoading.value, 
    error: error.value, 
    refetch: refetch,
    );
}
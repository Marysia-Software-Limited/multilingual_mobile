# swagger.api.DocsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://127.0.0.1:8000/en/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**docsList**](DocsApi.md#docsList) | **GET** /docs/ | 


# **docsList**
> docsList()





### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new DocsApi();

try { 
    api_instance.docsList();
} catch (e) {
    print("Exception when calling DocsApi->docsList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/coreapi+json, application/openapi+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


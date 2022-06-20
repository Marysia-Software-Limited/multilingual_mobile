# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://127.0.0.1:8000/en/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersList**](UsersApi.md#usersList) | **GET** /users | 
[**usersRead**](UsersApi.md#usersRead) | **GET** /users/{id} | 


# **usersList**
> Object usersList(username, limit, offset)



parameters:         - name: username           type: string           description: Filter usernames starting with query           paramType: query         - name: page           type: integer           description: Page number           paramType: query

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new UsersApi();
var username = username_example; // String | 
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.usersList(username, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRead**
> User usersRead(id)



For listing or retrieving users. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new UsersApi();
var id = 56; // int | A unique integer value identifying this user.

try { 
    var result = api_instance.usersRead(id);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this user. | 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# swagger.api.SiteApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://127.0.0.1:8000/en/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**siteList**](SiteApi.md#siteList) | **GET** /site | 


# **siteList**
> List<Site> siteList()



For retrieving site title, tagline and domain.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new SiteApi();

try { 
    var result = api_instance.siteList();
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->siteList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Site>**](Site.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


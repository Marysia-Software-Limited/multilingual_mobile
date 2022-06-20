# swagger.model.Page

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] [default to null]
**parent** | **int** |  | [optional] [default to null]
**title** | **String** |  | [default to null]
**content** | **String** |  | [optional] [default to null]
**contentModel** | **String** |  | [optional] [default to null]
**slug** | **String** | Leave blank to have the URL auto-generated from the title. | [optional] [default to null]
**publishDate** | [**DateTime**](DateTime.md) | With Published chosen, won&#39;t be shown until this time | [optional] [default to null]
**loginRequired** | **bool** | If checked, only logged in users can view this page | [optional] [default to null]
**metaDescription** | **String** |  | [optional] [default to null]
**tags** | **String** |  | [optional] [default to null]
**galleryItems** | **String** |  | [optional] [default to null]
**children** | [**List&lt;ChildPage&gt;**](ChildPage.md) |  | [default to []]
**inMenus** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



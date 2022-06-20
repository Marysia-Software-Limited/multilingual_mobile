# swagger.model.PostOutput

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] [default to null]
**user** | [**User**](User.md) |  | [optional] [default to null]
**publishDate** | [**DateTime**](DateTime.md) | With Published chosen, won&#39;t be shown until this time | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**title** | **String** |  | [default to null]
**content** | **String** |  | [default to null]
**excerpt** | **String** |  | [optional] [default to null]
**slug** | **String** | Leave blank to have the URL auto-generated from the title. | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**shortUrl** | **String** |  | [optional] [default to null]
**categories** | [**List&lt;Category&gt;**](Category.md) |  | [optional] [default to []]
**allowComments** | **bool** |  | [optional] [default to null]
**commentsCount** | **int** |  | [optional] [default to null]
**comments** | [**List&lt;Comment&gt;**](Comment.md) |  | [optional] [default to []]
**tags** | **String** |  | [optional] [default to null]
**featuredImage** | **String** |  | [optional] [default to null]
**description** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



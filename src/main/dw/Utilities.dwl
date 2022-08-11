%dw 2.0

import try from dw::Runtime

/**
* Describes the `isDate` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `isDate` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isDate(value: Any): Boolean = try(() -> value as Date).success
/**
* Describes the `isString` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `isString` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isString(value: Any): Boolean = try(() -> value as String).success
/**
* Describes the `isNumber` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `isNumber` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isNumber(value: Any): Boolean = try(() -> value as Number).success
/**
* Describes the `isNumberType` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `isNumberType` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isNumberType(value: Any): Boolean = value is Number
/**
* Describes the `isArray` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `isArray` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isArray(value: Any): Boolean = try(() -> value as Array).success
/**
* Describes the `isObject` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `isObject` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isObject(value: Any): Boolean = try(() -> value as Object).success
/**
* Describes the `isError` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `str` | String | 
* | `errorString` | String | 
* |===
*
* === Example
*
* This example shows how the `isError` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isError(str: String, errorString: String): Boolean = str startsWith errorString
/**
* Describes the `isError` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* | `errorString` | Any | 
* |===
*
* === Example
*
* This example shows how the `isError` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun isError(value: Any, errorString: Any = null): Boolean = false

/**
* Describes the `getDate` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `getDate` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun getDate(value: Any): Date | Null = (
    if ( isDate(value) ) value as Date
    else null
)
/**
* Describes the `getString` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `getString` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun getString(value: Any): String | Null = (
    if ( isString(value) ) value as String
    else null
)
/**
* Describes the `getArray` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `getArray` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun getArray(value: Any): Array | Null = (
    if ( isArray(value) ) value as Array
    else null
)
/**
* Describes the `getNumber` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `getNumber` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun getNumber(value: Any): Number | Null = (
    if ( isNumber(value) ) value as Number
    else null
) 
/**
* Describes the `getObject` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | 
* |===
*
* === Example
*
* This example shows how the `getObject` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*
* ----
*
*/
fun getObject(value: Any): Object | Null = (
	if ( isObject(value) ) value as Object
	else null
)
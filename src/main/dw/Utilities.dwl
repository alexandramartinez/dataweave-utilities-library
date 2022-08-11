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
fun isString(value: Any): Boolean = try(() -> value as String).success
fun isNumber(value: Any): Boolean = try(() -> value as Number).success
fun isNumberType(value: Any): Boolean = value is Number
fun isArray(value: Any): Boolean = try(() -> value as Array).success
fun isObject(value: Any): Boolean = try(() -> value as Object).success
fun isError(str: String, errorString: String): Boolean = str startsWith errorString
fun isError(value: Any, errorString: Any = null): Boolean = false

fun getDate(value: Any): Date | Null = (
    if ( isDate(value) ) value as Date
    else null
)
fun getString(value: Any): String | Null = (
    if ( isString(value) ) value as String
    else null
)
fun getArray(value: Any): Array | Null = (
    if ( isArray(value) ) value as Array
    else null
)
fun getNumber(value: Any): Number | Null = (
    if ( isNumber(value) ) value as Number
    else null
) 
fun getObject(value: Any): Object | Null = (
	if ( isObject(value) ) value as Object
	else null
)
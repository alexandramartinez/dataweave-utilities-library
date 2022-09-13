%dw 2.0

import try from dw::Runtime

/**
* Returns a boolean value describing whether the given value can be coerced into a Date.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to check
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
* import * from Utilities
* ---
* {
*   boolean: isDate(false),
*   number: isDate(25),
*   date: isDate(|2020-01-01|),
*   string: isDate("2020-01-01"),
*   array: isDate([]),
*   object: isDate({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "boolean": false,
*   "number": false,
*   "date": true,
*   "string": true,
*   "array": false,
*   "object": false
* }
* ----
*
*/
fun isDate(value: Any): Boolean = try(() -> value as Date).success
/**
* Returns a boolean value describing whether the given value can be coerced into a String.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to check
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
* import * from Utilities
* ---
* {
*   boolean: isString(false),
*   number: isString(25),
*   date: isString(|2020-01-01|),
*   string: isString("2020-01-01"),
*   array: isString([]),
*   object: isString({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "boolean": true,
*   "number": true,
*   "date": true,
*   "string": true,
*   "array": false,
*   "object": false
* }
* ----
*
*/
fun isString(value: Any): Boolean = try(() -> value as String).success
/**
* Returns a boolean value describing whether the given value can be coerced into a Number.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to check
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
* import * from Utilities
* ---
* {
*   boolean: isNumber(false),
*   number: isNumber(25),
*   date: isNumber(|2020-01-01|),
*   string: isNumber("25"),
*   array: isNumber([]),
*   object: isNumber({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "boolean": false,
*   "number": true,
*   "date": false,
*   "string": true,
*   "array": false,
*   "object": false
* }
* ----
*
*/
fun isNumber(value: Any): Boolean = try(() -> value as Number).success
/**
* Returns a boolean value describing whether the given value can be coerced into an Array.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to check
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
* import * from Utilities
* ---
* {
*   boolean: isArray(false),
*   number: isArray(25),
*   date: isArray(|2020-01-01|),
*   string: isArray("[]"),
*   array: isArray([]),
*   object: isArray({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "boolean": false,
*   "number": false,
*   "date": false,
*   "string": false,
*   "array": true,
*   "object": false
* }
* ----
*
*/
fun isArray(value: Any): Boolean = try(() -> value as Array).success
/**
* Returns a boolean value describing whether the given value can be coerced into an Object.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to check
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
* import * from Utilities
* ---
* {
*   boolean: isObject(false),
*   number: isObject(25),
*   date: isObject(|2020-01-01|),
*   string: isObject("{}"),
*   array: isObject([]),
*   object: isObject({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "boolean": false,
*   "number": false,
*   "date": false,
*   "string": false,
*   "array": false,
*   "object": true
* }
* ----
*
*/
fun isObject(value: Any): Boolean = try(() -> value as Object).success

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
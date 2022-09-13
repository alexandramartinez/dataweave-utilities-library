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

/**
* Attempts to coerce the given value into a Date format. 
* Returns `value as Date` if possible or `null` otherwise.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to coerce
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
* output application/dw
* import * from Utilities
* ---
* {
*   boolean: getDate(false),
*   number: getDate(25),
*   date: getDate(|2020-01-01|),
*   string: getDate("2020-01-01"),
*   array: getDate([]),
*   object: getDate({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   boolean: null,
*   number: null,
*   date: |2020-01-01|,
*   string: |2020-01-01|,
*   array: null,
*   object: null
* }
* ----
*
*/
fun getDate(value: Any): Date | Null = (
    if ( isDate(value) ) value as Date
    else null
)
/**
* Attempts to coerce the given value into a String format. 
* Returns `value as String` if possible or `null` otherwise.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to coerce
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
* output application/dw
* import * from Utilities
* ---
* {
*   boolean: getString(false),
*   number: getString(25),
*   date: getString(|2020-01-01|),
*   string: getString("hello"),
*   array: getString([]),
*   object: getString({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   boolean: "false",
*   number: "25",
*   date: "2020-01-01",
*   string: "hello",
*   array: null,
*   object: null
* }
* ----
*
*/
fun getString(value: Any): String | Null = (
    if ( isString(value) ) value as String
    else null
)
/**
* Attempts to coerce the given value into an Array format. 
* Returns `value as Array` if possible or `null` otherwise.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to coerce
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
* output application/dw
* import * from Utilities
* ---
* {
*   boolean: getArray(false),
*   number: getArray(25),
*   date: getArray(|2020-01-01|),
*   string: getArray("hello"),
*   array: getArray([]),
*   object: getArray({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   boolean: null,
*   number: null,
*   date: null,
*   string: null,
*   array: [],
*   object: null
* }
* ----
*
*/
fun getArray(value: Any): Array | Null = (
    if ( isArray(value) ) value as Array
    else null
)
/**
* Attempts to coerce the given value into an Number format. 
* Returns `value as Number` if possible or `null` otherwise.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to coerce
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
* output application/dw
* import * from Utilities
* ---
* {
*   boolean: getNumber(false),
*   number: getNumber(25),
*   date: getNumber(|2020-01-01|),
*   string: getNumber("25"),
*   array: getNumber([]),
*   object: getNumber({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   boolean: null,
*   number: 25,
*   date: null,
*   string: 25,
*   array: null,
*   object: null
* }
* ----
*
*/
fun getNumber(value: Any): Number | Null = (
    if ( isNumber(value) ) value as Number
    else null
) 
/**
* Attempts to coerce the given value into an Object format. 
* Returns `value as Object` if possible or `null` otherwise.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `value` | Any | Value to coerce
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
* output application/dw
* import * from Utilities
* ---
* {
*   boolean: getObject(false),
*   number: getObject(25),
*   date: getObject(|2020-01-01|),
*   string: getObject("{}"),
*   array: getObject([]),
*   object: getObject({})
* }
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   boolean: null,
*   number: null,
*   date: null,
*   string: null,
*   array: null,
*   object: {}
* }
* ----
*
*/
fun getObject(value: Any): Object | Null = (
	if ( isObject(value) ) value as Object
	else null
)
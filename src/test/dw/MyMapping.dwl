%dw 2.0
output application/dw
import * from Utilities
---
{
  boolean: getObject(false),
  number: getObject(25),
  date: getObject(|2020-01-01|),
  string: getObject("{}"),
  array: getObject([]),
  object: getObject({})
}
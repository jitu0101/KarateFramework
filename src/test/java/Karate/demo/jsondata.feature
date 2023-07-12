Feature: json feature testing
  Scenario: json reading
    * def jsonObject =
    """
    [
      {
        "name" : "Tom",
        "city" : "pune",
        "age"  : "17"
      },
     {
        "name" : "Tommy",
        "city" : "pune",
        "age"  : "19"
      }

    ]
   """
    * print jsonObject
    * print jsonObject[0]
    * print jsonObject[0].city
    * print jsonObject[1].name + " " + jsonObject[1].city + " " + jsonObject[1].age


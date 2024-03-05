Feature: Test For Study

  Background:
    Given url baseUrl


    @getEmployees
    Scenario: Get All Employees
      And path 'api/v1/employees'
      And request {}
      When method GET
      * print response
      Then match response.data[13].employee_name == 'Haley Kennedy'
      Then match response.data[13].employee_salary == 313500
      * def size = karate.sizeOf(response.data)
      * match size == 24

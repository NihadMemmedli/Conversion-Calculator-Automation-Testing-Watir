Feature: Conversion Calculator features test
  We want to ensure that the conversion calculator works.

  Scenario Outline: Check Calculator Tabs
    Given I am on the conversion calculator home page
    When I click "<tab>" on menu
    Then I check the "<tab>" is active
    Then I click "<first_unit>" option from "first" calculator
    And I click "<second_unit>" option from "second" calculator

    When I set value to first input as "<first_unit>"
    Then I get value from second input as "<second_unit>"

    Examples:
      | tab         | first_unit       | second_unit       |
      | Length      | Meter            | Kilometer         |
      | Temperature | Celsius          | Kelvin            |
      | Area        | Square Meter     | Square Kilometer  |
      | Volume      | Cubic Meter      | Liter             |
      | Weight      | Kilogram         | Gram              |
      | Time        | Second           | Minute            |
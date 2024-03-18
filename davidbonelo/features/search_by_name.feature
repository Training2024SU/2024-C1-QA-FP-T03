Feature: Product search
  As a user I want to search for a product so that I can see it's information

  Scenario: Searching for 'testProduct'
    Given User is in the home page
    When he looks up "testProduct"
    Then he should see the product "testProduct" in the results

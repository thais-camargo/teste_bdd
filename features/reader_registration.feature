Feature: Reader Registration


	Scenario: Reader register succesfully via register form
		Given I am a guest
		When I fill the register form with valid data
		Then I should be registered in application
		And I should be logged in

	Scenario: Reader tries to register with invalid data
		Given I am a guest
		When I fill the register form with invalid data
		Then I should see the register form again
		And I should not be registered in application

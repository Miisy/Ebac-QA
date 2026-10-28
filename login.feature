Background: Login no site
Given User is on the login page

Scenario: User login with valid credentials
When user enters a valid username and password
And user clicks the login button
Then user is redirected to the home page with a welcome message displayed

Scenario: User login with invalid credentials
When user enters an invalid username or password
And user clicks the login button
Then user sees an error message indicating invalid credentials

Scenario: User login with empty fields
When user leaves the username and password fields empty
And user clicks the login button
Then user sees an error message indicating that the fields are required

Scenario: User login with only username
When user enters a valid username but leaves the password field empty
And user clicks the login button
Then user sees an error message indicating that the password is required

Scenario: User login with only password
When user leaves the username field empty but enters a valid password
And user clicks the login button
Then user sees an error message indicating that the username is required

Scenario: User login with special characters in username
When user enters a username with special characters and a valid password
And user clicks the login button
Then user is redirected to the home page with a welcome message displayed

Scenario: User enter with valids credentials and click the "Remember Me" checkbox
When user enters a valid username and password  
And user clicks the "Remember Me" checkbox
Then user is redirected to the home page with a welcome message displayed and the session is remembered for future visits   

Scenario: User login with valid credentials and then logout
When user enters a valid username and password 
And user clicks the login button
Then user is redirected to the home page with a welcome message displayed
When user clicks the logout button
Then user is redirected to the login page and sees a message indicating successful logout   


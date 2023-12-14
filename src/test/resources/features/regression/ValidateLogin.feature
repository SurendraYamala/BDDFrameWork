Feature: To validate login Functionality of Adactin HotelApp

Scenario: To validate login using valid username and valid password

Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user enters text "reyaz009" in textbox using xpath "//input[@name='username']"
And user enters text "reyaz123" in textbox using xpath "//input[@name='password']"
And user clicks button using xpath "//input[@name='login']"
Then user verify the title of page to be "Adactin.com - Search Hotel"

@regression @smoke @wip007
Scenario: To validate login using valid username and Invalid password

Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user enters text "reyaz009" in textbox using xpath "//input[@name='username']"
And user enters text "reyaz456" in textbox using xpath "//input[@name='password']"
And user clicks button using xpath "//input[@name='login']"
Then user verify the presence of text using xpath "//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired. Click here to reset your password.|
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"


@regression @smoke @wip007
Scenario: To validate login using Invalid username and valid password

Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user enters text "reyaz2009" in textbox using xpath "//input[@name='username']"
And user enters text "reyaz456" in textbox using xpath "//input[@name='password']"
And user clicks button using xpath "//input[@name='login']"
Then user verify the presence of text using xpath "//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired. Click here to reset your password.|
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"


@regression @smoke @wip007
Scenario: To validate login using Invalid username and Invalid password

Given user starts "chrome" browser
And user launch app using url "https://adactinhotelapp.com/"
When user enters text "reyaz00945" in textbox using xpath "//input[@name='username']"
And user enters text "reyaz45645" in textbox using xpath "//input[@name='password']"
And user clicks button using xpath "//input[@name='login']"
Then user verify the presence of text using xpath "//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired. Click here to reset your password.|
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"

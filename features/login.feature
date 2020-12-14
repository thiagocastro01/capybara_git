Feature: User login
    I as registered developer
    Want to log in to the site
    So that i can do the upload the files
    

    @smoke
    Scenario: Login
        Dado that i access the login page
        Quando i fill the login and password fields
        Entao I will be redirected to my home page

    @critical
    Scenario Outline: Try login
        Given that i access the login page
        When i fill the login and password fields with:
            | username | <username> |
            | password | <password> |
        Then i should see the warning "Incorrect username or password."

        Exemplos:
            | username       | password   |
            |                | abcde      |
            | thiagocastro01 |            |
            | thiagocastro01 | abcde      |
            |                |            |

    @technical
    Scenario: Password secret validation
        When i acess the login page
        Then should be shown follow css selector: "input[type=password]"
Feature: Search for repository
    I as a registered developer 
    Want to search repositories
    To find my save projects

    Contexto:
        * Login with valid credentials

    @happy
    Scenario: Search repository
        Given i am on my home page
        When i search for repository
        Then will not see another repository
        But i will see the correct repository

    @critical
    Scenario Outline: Invalid try search
        Given i am on my home page
        When i search for repository: "<exemple>"
        Entao i will not see any results "<exemple>"

        Exemplos:
            | exemple    |
            | asdfgghjkl |
            | 0000       |



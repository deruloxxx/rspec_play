Feature: code-braker submits guess

    The code-braker submits a guess of four numbers
    The game marks the guess with + and - signs.
    
    For each number in the guess that matches the number and position of
    a number in the secret code, the mark includes one + sign.
    For each number in the guess that maches the number but not the position of a number in the secret code,
    the mark includes one - sign.

    Scenario Outline: submit guess
      Given the secret code is "<code>"
      When  I guess "<guess>"
      Then the mark shold be "<mark>"
    
    Scenario: no matches
      | code | guess | mark |
      | 1234 | 5555  |      |
    
    Scenario: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 2555  | -    |
    
    Scenario: 2 number correct
      | code | guess | mark |
      | 1234 | 5254  | ++   |
      | 1234 | 1555  | -+   |
      | 1234 | 2545  | --   |
   
    Scenario: 3 number correct
      | code | guess | mark |
      | 1234 | 5234  | +++  |
      | 1234 | 5134  | ++-  |
      | 1234 | 5124  | +--  |
      | 1234 | 5123  | ---  |
    
    Scenario: 4 number correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
      | 1234 | 1243  | ++-- |
      | 1234 | 1423  | +--- |
      | 1234 | 4321  | ---- |
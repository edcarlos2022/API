Feature: Remover Substrings

  Scenario: Remover substrings após os marcadores especificados
    Given a string de entrada "bananas, tomates # e ventiladores"
    And os marcadores ["#", "!"]
    Then a saída esperada é "bananas, tomates"

  Scenario: Remover substrings após os marcadores especificados
    Given a string de entrada "o rato roeu a roupa $ do rei % de roma"
    And os marcadores ["%", "!"]
    Then a saída esperada é "o rato roeu a roupa $ do rei"

  Scenario: Remover substrings após os marcadores especificados
    Given a string de entrada "the quick brown fox & jumped over * the lazy dog"
    And os marcadores ["&", "*", "%", "!"]
    Then a saída esperada é "the quick brown fox"

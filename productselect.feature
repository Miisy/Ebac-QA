Background: User gets into product's page;
Given User acess the product page

Scenario: User select all required infos;
And user select a size
And user select a color
And total of product selected + product in cart is bigger than zero and less than eleven
When user clicks at the buy button
Then user gets items to the cart

Scenario: User select more than 10 itens;
And user select a size
And user select a color
And total of product selected + product in cart is bigger than ten
When user clicks at the buy button
Then page display a message: "Ultrapassou o limite de itens para compra"

Scenario: User doesn't select size;
And user select a color
And total of product selected + product in cart is bigger than zero and less than eleven
When user clicks at the buy button
Then page display a message: "Selecionar o tamanho é obrigatório"

Scenario: User doesn't select color;
And user select a size
And total of product selected + product in cart is bigger than zero and less than eleven
When user clicks at the buy button
Then page display a message: "Selecionar o tamanho é obrigatório"

Scenario: User click the "Limpar" button;
And user select a size
And user select a color
When user clicks the "Limpar" button
Then all selected options are cleared

Scenario: User click the "Limpar" button without select any option;
And user doesn't select a size
And user doesn't select a color
When user clicks the "Limpar" button
Then page display a message: "Nenhuma opção selecionada"

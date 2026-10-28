
Scenario Outline: 
Given User acess the checkout page
And cart has <quantityitem> items
And user fill the checkout form with <Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Tel> and <e-mail>
When user clicks at the "Finalizar Compra" button
Then page display a message: "<message>"

Examples:
quantityitem | Nome | Sobrenome | País |Endereço | Cidade | CEP | Tel | e-mail | message |
| "1" | "Antonio" | "Silva" | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Compra Finalizada" |
| "4" | "" | "Silva" | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo Nome" |
| "7" | "Antonio" | "" | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo Sobrenome" |
| "2" | "Antonio" | "Silva" | "" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo País" |
| "0" | "Antonio" | "Silva" | "Brasil" | "A, 123" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Carrinho vazio" |
| "9" | "Antonio" | "Silva" | "Brasil" | "" | "São Paulo" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha o campo Endereço" |
| "1" | "Antonio" | "Silva" | "Brasil" | "" | "" | "12345-678" | "11912345678" | "antonio.silva@email.com" | "Preencha os campos obrigatórios" |

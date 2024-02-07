# Desafio_Maquinas
Desafio Máquinas utilizando o framework Ruby on Rails

**Criar um projeto, utilizando o framework Ruby on Rails, que cumpra com os requisitos listados abaixo. O projeto deve ser autoral, ou seja, você deve começar com o projeto padrão do Rails (rails new nome_do_projeto). Você pode utilizar os geradores de scaffold do rails, e pode utilizar quaisquer gems existentes pra cumprir os requisitos abaixo.**

- Criar site para gerenciamento de Máquinas.

- O usuário que acessa o sistema deve poder listar, criar, modificar ou apagar máquinas.

- Uma máquina deve ter os campos: tipo (string), nome(string), descrição(texto), meses de garantia(int), data da compra (date), e quebrada (boolean)

- Validações devem garantir que nomes tenham entre 2 e 80 caracteres, descrições tenham até 1000 caracteres, data de compra seja uma data no passado e meses de garantia seja um número inteiro.

- Uma máquina não pode ser removida se ela foi criada há mais de 30 minutos.

- O projeto finalizado deve ser carregado no github do usuário, para envio.

Obs: o projeto não precisa de autenticação.

Extras, opcionais, mas que darão um plus no projeto:

- Faça o projeto ficar bonito.
- Faça o projeto ter autenticação, para apenas usuários logados criarem máquinas.
- Identifique o usuário que criou a máquina.
---------------------------------------------------------------------------------------------------------------------------

## Desafio concluído:
[Vídeo completo do sistema](https://www.awesomescreenshot.com/video/24726128)

<img src="DesafioMaquinas.gif" alt="Desafio concluído"></img>

- Adições extras:
- O usuário consegue filtrar por id e nome da máquina cadastrada
- Ao tentar deletar uma máquina antes de completar 30 minutos de criação, é notificado ao usuário sobre a regra de negócio aplicada ao sistema e alertado quanto tempo falta para ser possível realizar a operação delete.
- O campo "quebrada" ao salvar a máquina é convertido de true para string, para facilitar a leitura do usuário.
- O usuário é notificado sobre as exceções ao tentar fazer uma operação e ser mal-sucedida.


também foi adicionado ao projeto os extras sugeridos:
- Faça o projeto ficar bonito.
- Faça o projeto ter autenticação, para apenas usuários logados criarem máquinas.
- Identifique o usuário que criou a máquina.

### Resumo de experiência

"Este projeto me deu a oportunidade de explorar um pouco mais a grandeza da programação e conhecer a linguagem Ruby junto ao framework Ruby on Rails. Isso despertou meu interesse em aprender mais sobre o ecossistema de Ruby e a própria linguagem.

Durante o processo de desenvolvimento, eu assisti a vários vídeos sobre a linguagem, como a orientação a objetos funciona, e também sobre o framework Ruby on Rails. Além disso, precisei buscar informações adicionais na documentação e na web, tive algumas dificuldades iniciais mas consegui solucionar.

Achei incrível a agilidade do processo de conexão com banco de dados, inclusive conheci um pouco mais sobre o SQLite, um ótimo banco de dados portátil. Também gostaria de ressaltar a estrutura que é gerada automaticamente em um projeto inicial com o scaffold, a linguagem realmente é pensada no desenvolvimento web e acelera muitos processos. Ruby é uma linguagem incrível, extremamente inteligente e enxuta. Ainda tenho muito o que aprender, mas com esse projeto, consegui ter uma noção do funcionamento da linguagem, e estou certa de que o aprendizado não vai parar por aqui.

15/03/2014

A versão Express não reconhece o MySQL no Data Source
Baixe a versão Professional, Premium ou Ultimate
Todas oferecem período de avaliação de 90 dias

Baixe e instale o Mysql Installer Web Community 5.6.16.0
Após a instalação, execute-o novamente
Escolha a opção Add/Modify Products and Features
Amplie as opções em Applications
Clique sobre MySQL for Visual Studio 1.1.3
Marque todas as opções
Em opções podemos selecionar o VS 2008, 2010, 2012 e 2013. Lembre-se de  deixar marcada somente a ->
-> versão que você possuir instalada e que não seja a versão Express, do contrário ->
-> ocorrerá um erro durante a instalação.
Após feita a instalação, o VS reconhecerá o MySQL

Configure o MySQL Server para case sensitive!
Por padrão ele não é case sensitive, podemos mudar isso alterando um arquivo de configuração.
Precisamos mudar o arquivo my.ini
Vá até o diretório onde está instalado o MySQL Server
C:\ProgramData\MySQL\MySQL Server 5.6\my.ini
Abra esse arquivo e adicione as 2 linhas seguintes
# A linha a seguir habilita o case sensitive
lower_case_table_names=2
Ao permitir o case sensitive no MySQL, facilita nossa vida no ORM, não precisaremos mudar qualquer código
Reinicie o Serviço do MySQL Server para as alterações entrarem em vigor.

Mantenha o padrão utilizado para o MS SQL Server.
Mantenha o mesmo Nome de Entidade Model que faz referência ao BD.

O Script SQL para MySQL segue em um diretório(No GitHub)
~\CadeMeuMedico\Script MySQL

Há muitas ferramentas para converter MS SQL Server para MySQL, todas pagas!
Mas se você possuir alguma experiência com a Linguagem SQL poderá realizar ->
-> você mesmo tais mudanças

Esse pequeno tutorial foi criado por Alan Gialorenzo
Email/Skype: aln_x@msn.com

OBS: Em caso de cópia do tutorial, por favor, manter a fonte!

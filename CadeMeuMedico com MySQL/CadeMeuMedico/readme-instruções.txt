15/03/2014

A vers�o Express n�o reconhece o MySQL no Data Source
Baixe a vers�o Professional, Premium ou Ultimate
Todas oferecem per�odo de avalia��o de 90 dias

Baixe e instale o Mysql Installer Web Community 5.6.16.0
Ap�s a instala��o, execute-o novamente
Escolha a op��o Add/Modify Products and Features
Amplie as op��es em Applications
Clique sobre MySQL for Visual Studio 1.1.3
Marque todas as op��es
Em op��es podemos selecionar o VS 2008, 2010, 2012 e 2013. Lembre-se de  deixar marcada somente a ->
-> vers�o que voc� possuir instalada e que n�o seja a vers�o Express, do contr�rio ->
-> ocorrer� um erro durante a instala��o.
Ap�s feita a instala��o, o VS reconhecer� o MySQL

Configure o MySQL Server para case sensitive!
Por padr�o ele n�o � case sensitive, podemos mudar isso alterando um arquivo de configura��o.
Precisamos mudar o arquivo my.ini
V� at� o diret�rio onde est� instalado o MySQL Server
C:\ProgramData\MySQL\MySQL Server 5.6\my.ini
Abra esse arquivo e adicione as 2 linhas seguintes
# A linha a seguir habilita o case sensitive
lower_case_table_names=2
Ao permitir o case sensitive no MySQL, facilita nossa vida no ORM, n�o precisaremos mudar qualquer c�digo
Reinicie o Servi�o do MySQL Server para as altera��es entrarem em vigor.

Mantenha o padr�o utilizado para o MS SQL Server.
Mantenha o mesmo Nome de Entidade Model que faz refer�ncia ao BD.

O Script SQL para MySQL segue em um diret�rio(No GitHub)
~\CadeMeuMedico\Script MySQL

H� muitas ferramentas para converter MS SQL Server para MySQL, todas pagas!
Mas se voc� possuir alguma experi�ncia com a Linguagem SQL poder� realizar ->
-> voc� mesmo tais mudan�as

Esse pequeno tutorial foi criado por Alan Gialorenzo
Email/Skype: aln_x@msn.com

OBS: Em caso de c�pia do tutorial, por favor, manter a fonte!

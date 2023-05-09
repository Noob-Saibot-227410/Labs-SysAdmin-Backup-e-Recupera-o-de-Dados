<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
</head>

<body>
	<h1>Passo a passo para subir o ambiente e utilizar o backup:</h1>
	<ol>
		<li>Faça o download e instale o Vagrant e o VirtualBox em seu computador.</li>
		<li>Baixe ou clone este projeto em sua máquina.</li>
		<li>Abra um terminal na pasta raiz do projeto e execute o comando <code>vagrant up</code> para criar e provisionar a máquina virtual com o ambiente de backup.</li>
		<li>Acesse a máquina virtual com o comando <code>vagrant ssh</code>.</li>
		<li>Para realizar um backup dos arquivos <code>datafile1.txt</code> e <code>datafile2.txt</code>, execute o script <code>backup.sh</code> com o comando <code>sudo bash /vagrant/scripts/backup.sh</code>. O backup será armazenado na pasta <code>backups</code>.</li>
		<li>Para restaurar um backup, execute o script <code>restore.sh</code> com o comando <code>sudo bash /vagrant/scripts/restore.sh &lt;NOME_DO_ARQUIVO&gt;</code>, substituindo <code>&lt;NOME_DO_ARQUIVO&gt;</code> pelo nome do arquivo de backup que deseja restaurar, que se encontra na pasta <code>backups</code>.</li>
		<li>Verifique se os arquivos foram restaurados corretamente, acessando a pasta <code>data</code>.</li>
	</ol>


<h1>Como funciona o backup:</h1>
<p>O script de backup <code>backup.sh</code> realiza a cópia dos arquivos <code>datafile1.txt</code> e <code>datafile2.txt</code> da pasta <code>data</code> para a pasta <code>backups</code>, renomeando os arquivos de acordo com a data e hora em que o backup foi realizado.</p>
<p>O script de restore <code>restore.sh</code> recebe como parâmetro o nome do arquivo de backup a ser restaurado e copia o conteúdo do arquivo para a pasta <code>data</code>, substituindo os arquivos existentes.</p>

<h1>Tecnologias utilizadas:</h1>
<ul>
	<li><a href="https://www.vagrantup.com/" target="_blank"><img src="https://img.icons8.com/color/32/000000/vagrant.png"/> Vagrant</a></li>
	<li><a href="https://www.virtualbox.org/" target="_blank"><img src="https://img.icons8.com/color/32/000000/virtualbox.png"/> VirtualBox</a></li>
	<li><a href="https://www.gnu.org/software/bash/" target="_blank"><img src="https://img.icons8.com/windows/32/000000/console.png"/> Bash</a></li>
</ul>

</body>
</html>
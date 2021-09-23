const persons = [
	{ id: '1', nome: 'Antônio', nascimento: '1950-05-10', ativo: true},
	{ id: '2', nome: 'Mario', nascimento: '1940-03-10', ativo: false},
	{ id: '3', nome: 'Maria', nascimento: '1942-09-12', ativo: true},
	{ id: '4', nome: 'Pedro', nascimento: '1934-12-15', ativo: true},
	{ id: '5', nome: 'Joana', nascimento: '1925-12-15', ativo: true},
	{ id: '6', nome: 'Joca', nascimento: '1910-02-10', ativo: true},
	{ id: '7', nome: 'Clementina', nascimento: '1940-07-24', ativo: false},
	{ id: '8', nome: 'Manuela', nascimento: '1931-05-25', ativo: true},
	{ id: '9', nome: 'Mauricio', nascimento: '1920-02-04', ativo: true},
	{ id: '10', nome: 'Kleber', nascimento: '1912-03-09', ativo: false},
	{ id: '11', nome: 'Juarez', nascimento: '1921-01-07', ativo: true},
	{ id: '12', nome: 'Michelângelo', nascimento: '1927-08-01', ativo: true}
];


persons.forEach((item) => {
	const div = document.getElementById('hospedes__card-js')
	const card = `<div class="card">
	<div class="card-top">
		<div class="card-top__img">
			<img src="img/user-placeholder.jpg" alt="logo usuário" class="navbar__logouser">
		</div>
		<span class="card-top__nome">${item.nome}</span>
	</div>

	<hr/>
	
	<div class="card-bottom">
		<div class="card-bottom__img">
			<img src="img/home.png" alt="home ícone" class="card-bottom__logo-home">	
		</div>		
		<span class="card-bottom__data">${item.nascimento}</span>
	</div>
	

	 </div>`;
	const ele = document.createElement("div");
	ele.innerHTML = card;
	div.appendChild(ele.firstChild);
  });
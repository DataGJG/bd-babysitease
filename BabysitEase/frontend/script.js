// script.js

// Função para fazer a requisição HTTP e exibir os usuários na tela
function getUsers() {
  // Faz uma requisição GET para o servidor
  fetch("http://localhost:8000/usuarios")
    .then((response) => response.json())
    .then((users) => {
      const userList = document.getElementById("user-list");
      // Limpa a lista de usuários
      userList.innerHTML = "";
      // Itera sobre os usuários e os adiciona à lista
      users.forEach((user) => {
        const li = document.createElement("li");
        li.textContent = `ID: ${user[0]}, Nome: ${user[1]}, E-mail: ${user[2]}`;
        userList.appendChild(li);
      });
    })
    .catch((error) => console.error("Erro ao obter usuários:", error));
}

// Chama a função getUsers() ao carregar a página
window.onload = getUsers;

// Função para validar email no cadastro de usuário
function validarEmail() {
    var email = document.getElementById('email').value;
    var regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!regex.test(email)) {
        alert("Por favor, insira um email válido.");
        return false;
    }
    return true;
}

// Função de confirmação de exclusão de tarefa
function confirmarExclusao() {
    return confirm("Você tem certeza que deseja excluir essa tarefa?");
}

// Função para exibir mensagem de sucesso após o cadastro
function exibirMensagemSucesso(mensagem) {
    var divMensagem = document.createElement("div");
    divMensagem.classList.add("alert");
    divMensagem.classList.add("alert-success");
    divMensagem.innerHTML = mensagem;
    document.body.appendChild(divMensagem);
    setTimeout(function() {
        divMensagem.remove();
    }, 3000);
}

// Chama essa função após o cadastro de tarefa ou usuário
function mostrarMensagemCadastro() {
    exibirMensagemSucesso("Cadastro realizado com sucesso!");
}

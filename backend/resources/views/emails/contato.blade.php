<!doctype html>
<html lang="pt-BR">
<body>
    <h2>Novo contato pelo site</h2>
    <p><strong>Nome:</strong> {{ $data['nome'] }}</p>
    <p><strong>E-mail:</strong> {{ $data['email'] }}</p>
    <p><strong>Telefone:</strong> {{ $data['telefone'] ?? 'Não informado' }}</p>
    <p><strong>Empresa:</strong> {{ $data['empresa'] ?? 'Não informada' }}</p>
    <p><strong>Mensagem:</strong><br>{{ $data['mensagem'] }}</p>
</body>
</html>

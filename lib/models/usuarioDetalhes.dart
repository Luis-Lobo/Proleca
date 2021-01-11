class UsuarioDetalhes{
  final String fornecerDetalhes;
  final String nomeUsuario;
  final String fotoUrl;
  final String emailUsuario;
  final List<FornecerDetalhes> fornecerDados;

  UsuarioDetalhes(
    this.fornecerDetalhes, 
    this.nomeUsuario, 
    this.fotoUrl,
    this.emailUsuario, 
    this.fornecerDados
    );
}

class FornecerDetalhes {
  FornecerDetalhes(this.fornecerDetalhes);
  final String fornecerDetalhes;
}
# Redes de COmunicacao

> Lei No. 9296/1996
    Art 1, diz que a interceptacao de redes de comunicacao eh segredo de justica e depende de ordem do juiz para dispor as competencias da acao principal
    Art 3, diz que a interceptacao de redes eh necessario sobre requerimento policial na investigacao e/ou do representante do Ministerio publico na investigacao

<a Infraestrutura Fisica
    Conectam as maquias com diferentes arquiteturas >

<a Protocolos
    Estabelecem regras para que todas as maquinas computacionais respeitem >

<a Topologia
    Forma Fisica que as maquinas sao distribuidas >

# Fontes Abertas

    Principais fontes:
    * Midias (audio, imagem, video...)
    * Provedores (conexoes, aplicacoes...)
    * Localizacoes geograficas
    * Pessoas (figuras publicas)
    * GOvernos e Governancas
    * Empresas (plataformas de negocio)
  
  Ciclo de OSINT
> Requisicao, Planejamento, Coleta, Processamento, Analise, Laudo ou parecer (relatorio)

# Dispositivos Pessoais

* Auditabilidade
    > Infraestrutura, enderecos, nomes, roteamentos

* Repetibilidade
    > Modelos de negocios e transformacoes Digitais

* Reprodutibilidade
    > Governanca e ativismo

* Justificabilidade
    > Grupos de interesse, redes sociais e interacao

- Acessos a acoes do Sistema Operacional, que tambem pode ser um dificultador no processo de coleta de informacoes
- Memoria de Processamento(RAM) responsavel por armazenar temporariamente os recursos e ferramentas utilizadas em um computador (se receber um pc ligado, deixar ligado, se receber um pc desligado, permanecer com ele desligado)
-Discosm cartoes, dispositivos, sempre copiar os dados armaznados em disco e afins

> O SO sempre ira comandar todas as operacoes do computador, portanto conhecer suas funcionalidades e vulnerabilidades eh extremamente importante

## Afastamento de Senha

> Primeiro Passo
    Baixar uma ISO confiavel de uma distribuicao do LINUX para tarefas de Hacking (Kali, Caine, Parrot)

> Segundo Passo
    Alterar o mecanismo de boot no equipamento alvo, usualmente f12, e fazer o boot na maquina pelo Pendrive

> Terceiro Passo
    Controlar a maquina alvo utilizando o Linux que deu boot na pasta /windows/system32 (pasta contem muitos arquivos de configuracao, comando e controle) e acessar a subpasta <config> onde estao as configuracoes de usuario

> quarto passo
    Executar pelo terminal nas pastas ja determinadas, os comandos
        * chnpw - I SAM
    ira apresentar a lista de todos os usuarios que tenham credenciais
    quando feito, pode se receber a mensagem "read only", se for o caso, refazer os passos 1, 2 e 3

> Quinto Passo
    executar o comando no terminal
        * chntpw -u Usuario SAM
    para atualizar os dados do usuario desejado, apos, deve se selecionar a PRIMEIRA OPCAO para remover a senha do usuario desejado e confirmar a alteracao realizada

> Ultimo Passo
    Reiniciar o equipamento removendo o pendrive bootavel, para que o SO nativo volte, sem a necessidade de senha, caso algo de errado, bassta refazer os passos
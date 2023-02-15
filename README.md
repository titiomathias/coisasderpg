# CoisasDeRPG
Ferramenta para jogadores e mestres de RPG (D&amp;D) com o objetivo de tornar a procura e investigação de itens mágicos e semelhantes mais aleatória e dinâmica.

# Requisitos
<code>Python 3.X</code> - Todos as bibliotecas requisitas estão em <code>requirements.txt</code>.

# Sobre o programa
<img src="https://i.imgur.com/tv8YdpD.png"/>
Esse script veio como uma forma de deixar a dinâmica de mestrar RPG mais aleatória e divertida. Quando se joga RPG de mesa (em específico o D&D) é comum que os Mestres tem que lidar com algumas surpresas dos jogadores ao investigarem lugares da história que não estavam planejados, ou talvez até criar recompensas ou achados para pequenas missões, para que os jogadores não saim de mãos vazias, e para isso ele usa o script do CoisasDeRPG, para que o mesmo possa consultar itens específicos que desejar (poções, óleos, armas, ferramentas e objetos) ou até mesmo sortear de forma geral ou específica itens aleatórios para seus jogadores.

# Modo de uso
Instale os requisitos utilizando o <code>pip</code> com o seguinte comando:<code>python -m pip install -r requirements.txt</code>.
Logo em seguida, inicie um servidor mysql na máquina e importe o banco de dados disponibilizado como <code>rpgthings.sql</code> (esse banco de dados já possui uma pequena gama de itens de tipos e finalidades diferentes para os mestres, mas não se limitem a isso, adicionem cada vez mais itens aos seus bancos de dados!), não se esqueça de verificar o arquivo <code>search.py</code> para a conexão do seu banco de dados.
Após isso basta iniciar o arquivo <code>app.py</code> para ter acesso a interface gráfica e a partir daí é só usar!

# Adaptações e modificações
O script está sujeito a melhorias futuras de minha parte, entretando, deixo aberto a comunidade para implementar modificações ou melhorias ao código. Não se esqueça de marcar o meu perfil do GitHub! -> github.com/titiomathias

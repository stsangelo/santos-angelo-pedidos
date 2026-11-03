# Caderno de pedidos — Santos Angelo Tarocchi

Painel simples para anotar pedidos do ateliê, selecionar baralhos e quantidades, consultar os preços, atualizar o status e preparar uma mensagem para o cliente.

## Como usar

O painel tem duas abas: **Novo pedido** para cadastrar e **Pedidos cadastrados** para consultar. Clique em um pedido para abrir os detalhes; de lá você pode preparar a mensagem, editar ou excluir o pedido. Preencha nome, WhatsApp e e-mail (se disponível), selecione os baralhos e quantidades, escolha o status e salve. O painel gera o próximo identificador anual `SAT-AAAA-NNNN` e prepara uma mensagem com itens, subtotal e frete “a combinar”. O botão de mensagem abre o WhatsApp com o texto preenchido ou copia o texto se não houver número cadastrado.

Os dados ficam no armazenamento local do mesmo navegador e dispositivo. Este protótipo não sincroniza entre computadores ou navegadores. Use **Baixar cópia** para exportar um JSON regularmente. Não há login ou backend: quem abrir esta página pode usar o painel no próprio navegador.

Os preços estão definidos em `reservas.js` e devem ser revisados pelo ateliê quando mudarem.

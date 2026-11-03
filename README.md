# Caderno de pedidos — Santos Angelo

Painel privado para registrar pedidos, acompanhar status, somar preços, aplicar descontos e preparar mensagens para WhatsApp. Os pedidos são salvos na nuvem pelo Supabase.

## Uso

- Na aba **Novo pedido**, selecione baralhos e quantidades. O desconto percentual atualiza o total e aparece na mensagem para o cliente.
- Na aba **Pedidos cadastrados**, abra os detalhes para editar, preparar a mensagem ou excluir um pedido concluído. As cores identificam cada status.
- Na aba **Baralhos**, adicione itens, altere nome e preço ou arquive e reative baralhos. As mudanças sincronizam com o Supabase e aparecem nos outros dispositivos ao entrar na mesma conta.
- Pedidos já salvos mantêm os nomes e preços anotados originalmente, mesmo quando o catálogo muda.
- Use **Baixar cópia** para guardar um backup periódico.

## Configuração

A tabela `customer_orders` usa Row Level Security para que cada usuário autenticado só acesse seus próprios pedidos. Rode `supabase-schema.sql` no SQL Editor do projeto Supabase se a tabela ainda não existir. O site usa a chave pública publishable; nunca coloque uma chave `service_role` no site ou no GitHub.

## Catálogo inicial

- Tarot de la Reyne — R$ 550
- Sola Busca — R$ 350
- Tarot Mantegna — R$ 250
- Tarot Astrológico — R$ 250
- Tarot de Marseille — Conver — R$ 250
- Oswald Wirth — R$ 190
- Petit Lenormand — R$ 190

Frete fica como **a combinar**.

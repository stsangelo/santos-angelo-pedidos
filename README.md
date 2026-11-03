# Caderno de pedidos — Santos Angelo

Painel simples para registrar pedidos, acompanhar status, somar preços dos baralhos e preparar mensagens para WhatsApp. Os pedidos são salvos na nuvem pelo Supabase e podem ser acessados em dispositivos diferentes.

## Configuração inicial

1. No Supabase, abra **SQL Editor → New query**, cole o conteúdo de `supabase-schema.sql` e clique em **Run**. A tabela usa Row Level Security para cada usuário autenticado acessar somente os próprios pedidos.
2. Em **Authentication → Users**, crie o usuário do ateliê com e-mail e senha. O painel não oferece cadastro público.
3. Em **Project Settings → API**, copie a **Project URL** e a chave **publishable** (ou `anon`). Abra `supabase-config.js` e substitua os dois valores de exemplo. Nunca use a chave `service_role` no site.
4. Envie `index.html`, `admin.css`, `reservas.js`, `supabase-config.js` e `logo.png` para a raiz do repositório GitHub e confirme o commit.
5. Abra o GitHub Pages e entre no painel. O usuário pode ser convidado por **Authentication → Users**; confirme o convite por e-mail. Use **Esqueci minha senha** para definir ou recuperar a senha.

## Dados e privacidade

É necessária conexão com a internet para consultar e salvar pedidos. Os dados ficam na tabela `customer_orders` e as políticas RLS limitam leitura, edição e exclusão aos registros do usuário autenticado. O e-mail e a senha ficam sob gerenciamento do Supabase Auth.

Se existirem pedidos antigos salvos no navegador onde o painel era usado, a primeira entrada tenta copiá-los para a nuvem quando a tabela ainda estiver vazia. Mantenha o botão **Baixar cópia** como backup periódico.

## Preços cadastrados

- Tarot de la Reyne — R$ 550
- Sola Busca — R$ 350
- Tarot Mantegna — R$ 250
- Tarot Astrológico — R$ 250
- Tarot de Marseille — Conver — R$ 250
- Oswald Wirth — R$ 190
- Petit Lenormand — R$ 190

O frete fica como **a combinar**.

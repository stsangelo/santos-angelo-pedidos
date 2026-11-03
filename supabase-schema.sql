-- Rode uma vez no Supabase em SQL Editor → New query → Run.
create table if not exists public.customer_orders (
  key text primary key,
  owner_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  number text not null,
  name text not null,
  whatsapp text not null default '',
  email text not null default '',
  decks jsonb not null default '[]'::jsonb,
  subtotal numeric(10,2) not null default 0,
  description text not null default '',
  status text not null default 'Recebido',
  note text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (owner_id, number)
);

alter table public.customer_orders enable row level security;
revoke all on public.customer_orders from anon;
grant select, insert, update, delete on public.customer_orders to authenticated;

drop policy if exists "Users can read their own orders" on public.customer_orders;
create policy "Users can read their own orders" on public.customer_orders
  for select to authenticated using ((select auth.uid()) = owner_id);
drop policy if exists "Users can create their own orders" on public.customer_orders;
create policy "Users can create their own orders" on public.customer_orders
  for insert to authenticated with check ((select auth.uid()) = owner_id);
drop policy if exists "Users can update their own orders" on public.customer_orders;
create policy "Users can update their own orders" on public.customer_orders
  for update to authenticated using ((select auth.uid()) = owner_id) with check ((select auth.uid()) = owner_id);
drop policy if exists "Users can delete their own orders" on public.customer_orders;
create policy "Users can delete their own orders" on public.customer_orders
  for delete to authenticated using ((select auth.uid()) = owner_id);

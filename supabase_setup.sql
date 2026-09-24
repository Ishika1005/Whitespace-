create table if not exists public.study_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.study_state enable row level security;

create policy "Users can read their own study state"
on public.study_state for select
to authenticated
using (auth.uid() = user_id);

create policy "Users can insert their own study state"
on public.study_state for insert
to authenticated
with check (auth.uid() = user_id);

create policy "Users can update their own study state"
on public.study_state for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

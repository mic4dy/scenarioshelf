-- Scenarios の定義
create table scenarios (
  id uuid primary key default uuid_generate_v4() not null,
  trpg_system text not null,
  title text not null,
  kana text,
  key_visual_url text,
  store_url text,
  author text,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

alter table scenarios enable row level security;

create policy "Public scenarios are viewable by everyone." on scenarios
  for select using (true);

create policy "Scenarios can only be inserted by authenticated users." on scenarios
  for insert to authenticated with check (true);

create policy "Scenarios can only be updated by authenticated users." on scenarios
  for update to authenticated with check (true);

create policy "Scenarios can only be deleted by authenticated users." on scenarios
  for delete to authenticated using (true);

create trigger on_scenarios_updated
  before update on public.scenarios
  for each row execute procedure public.update_timestamp();

-- KeyVisuals Storage の定義
insert into storage.buckets (id, name, public)
  values ('key_visuals', 'key_visuals', true);

-- Policies の定義
create policy "Key visual images are publicly accessible." on storage.objects
  for select using (bucket_id = 'key_visuals');

create policy "Anyone can upload an key visual." on storage.objects
  for insert with check (bucket_id = 'key_visuals');

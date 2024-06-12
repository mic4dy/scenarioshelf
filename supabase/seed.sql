SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ff874a5c-2fb2-4a15-80cb-c4d4d5a8913d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"micady.dev@gmail.com","user_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","user_phone":""}}', '2024-06-08 13:11:13.311572+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1d08aee-d2eb-4e12-ac1d-6c1bff96b259', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"admin@scenarioshelf.com","user_id":"81363697-5977-470a-bae8-d4575bc8de06","user_phone":""}}', '2024-06-08 13:12:48.692809+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7919a17-f6c4-454b-8299-ffddcbb8bc5f', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test_user@test.com","user_id":"f05151be-42b1-4474-a829-38f1ebb4deb8","user_phone":""}}', '2024-06-08 13:13:16.7637+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b414b1a-bf98-498b-b2dd-d8a47f17efdf', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test_user2@test.com","user_id":"65855918-d819-4f32-ad9a-b50de7654c30","user_phone":""}}', '2024-06-08 13:14:13.720843+00', ''),
	('00000000-0000-0000-0000-000000000000', '026541ea-bdbe-4826-973d-514c592ba970', '{"action":"login","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-06-09 13:23:34.467106+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d0994f0-8d6a-4fdf-b36f-7b66c905633f', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:48:08.052691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2ee5971-5832-4978-9161-45089376fa62', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:48:08.05482+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e1d9e1b-987a-4c94-82b4-a8dddbdf3b1c', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:52:47.532431+00', ''),
	('00000000-0000-0000-0000-000000000000', '559876c9-3a99-4837-a498-cc473e0d9019', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:52:47.533868+00', ''),
	('00000000-0000-0000-0000-000000000000', '2506a160-19a2-4100-8098-3c2257d52459', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:54:10.687978+00', ''),
	('00000000-0000-0000-0000-000000000000', '978dca8a-9ae7-4bd8-9b15-2c51fba15549', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:54:10.688508+00', ''),
	('00000000-0000-0000-0000-000000000000', '1398e757-f96c-467c-baa1-f2964fa925e6', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:56:49.89259+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afe1331d-81b2-41b9-8684-5e4168c2d3e5', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 13:56:49.8934+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd3ac20b-0e61-4574-8737-538582d4e6cd', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 15:42:38.59882+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e59c2d8-3d5b-455c-9add-8c2c6c81b176', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-09 15:42:38.600016+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3ded46f-1465-4ac2-a284-3ddbb6db6d6b', '{"action":"login","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-06-10 02:17:10.65701+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a89bb5ee-bab7-444b-b574-94e39d437d22', '{"action":"user_modified","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-06-10 02:18:28.259318+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd40e702d-95a8-43c4-8f89-14530546c625', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 03:16:36.218498+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b435463b-12aa-45c0-8e70-a0060a1a44af', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 03:16:36.220063+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c6db7af-a3fd-4880-a56a-acfa2c4e0a22', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 04:15:56.284685+00', ''),
	('00000000-0000-0000-0000-000000000000', '3db7a067-0bd3-4aae-b565-dcf1faf02cf3', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 04:15:56.286085+00', ''),
	('00000000-0000-0000-0000-000000000000', '7577e486-28b9-4150-ae78-cf9fece4977e', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 05:15:16.212906+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb2e3f55-835f-4dea-8042-0bf7d090a886', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 05:15:16.214342+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae1e15b0-033e-4e65-9136-74e2751772ef', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 06:14:26.232698+00', ''),
	('00000000-0000-0000-0000-000000000000', '5364aff2-fa51-44c1-aec1-eda627d3d462', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-10 06:14:26.235048+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a2ae572-d016-4c77-ad45-1a530e7a3cb7', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 11:52:31.050006+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f74a1b8a-ed37-4dcd-9ef5-ca3f713fb961', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 11:52:31.051524+00', ''),
	('00000000-0000-0000-0000-000000000000', '281e0c2a-0748-497d-a790-72656e8f12b4', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 12:52:00.61671+00', ''),
	('00000000-0000-0000-0000-000000000000', '3100a945-079b-4ab9-9afb-5f0e07153a52', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 12:52:00.6181+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e387d1ae-d3da-43f7-a8c0-83c9ea0ece6d', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 13:40:20.662848+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b53bb2be-8d79-4430-96ac-b595de94ca1c', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 13:40:20.665774+00', ''),
	('00000000-0000-0000-0000-000000000000', '800b03db-a26a-4880-b26e-a6eabda0bff0', '{"action":"token_refreshed","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 14:28:28.783464+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9ea1feb-7def-425e-88a2-5bf1e65f847a', '{"action":"token_revoked","actor_id":"84f5fc4c-529c-40e8-85fb-9713868cbcfc","actor_username":"micady.dev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-06-11 14:28:28.785058+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '81363697-5977-470a-bae8-d4575bc8de06', 'authenticated', 'authenticated', 'admin@scenarioshelf.com', '$2a$10$F6FLLUBwbZMLn3L71cFQV.jHg0YdHyldV.NxkHXRMnGBQAr6zKcZ2', '2024-06-08 13:12:48.693821+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-06-08 13:12:48.690704+00', '2024-06-08 13:12:48.693908+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f05151be-42b1-4474-a829-38f1ebb4deb8', 'authenticated', 'authenticated', 'test_user@test.com', '$2a$10$nYileCsSr6ss1vXkV/5poeWri.gZBOZQf9.sLhwwF7E9kDcH3Dz/q', '2024-06-08 13:13:16.765443+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-06-08 13:13:16.762343+00', '2024-06-08 13:13:16.76555+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', 'authenticated', 'authenticated', 'micady.dev@gmail.com', '$2a$10$Y.cbCYFfRLWdniqv9CxuquB6EkI906xJ4iJZ0lG76K8lA39GsbfwG', '2024-06-08 13:11:13.315418+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-06-10 02:17:10.658748+00', '{"provider": "email", "providers": ["email"]}', '{"username": "micady", "avatar_url": "http://127.0.0.1:54321/storage/v1/object/public/user_avatars/84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpeg"}', NULL, '2024-06-08 13:11:13.305511+00', '2024-06-11 14:28:28.787092+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '65855918-d819-4f32-ad9a-b50de7654c30', 'authenticated', 'authenticated', 'test_user2@test.com', '$2a$10$9XTWDrE48V81M.mQZATZzeL.urj3jDAxX7Jiw3BdUVPq94A.KzjYy', '2024-06-08 13:14:13.721353+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-06-08 13:14:13.719403+00', '2024-06-08 13:14:13.721463+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('84f5fc4c-529c-40e8-85fb-9713868cbcfc', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '{"sub": "84f5fc4c-529c-40e8-85fb-9713868cbcfc", "email": "micady.dev@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:11:13.310707+00', '2024-06-08 13:11:13.310736+00', '2024-06-08 13:11:13.310736+00', 'd78195a3-ee33-41f5-8928-7792f61078fc'),
	('81363697-5977-470a-bae8-d4575bc8de06', '81363697-5977-470a-bae8-d4575bc8de06', '{"sub": "81363697-5977-470a-bae8-d4575bc8de06", "email": "admin@scenarioshelf.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:12:48.692366+00', '2024-06-08 13:12:48.692395+00', '2024-06-08 13:12:48.692395+00', '24612f09-be8c-4565-89f2-c9babd579c7a'),
	('f05151be-42b1-4474-a829-38f1ebb4deb8', 'f05151be-42b1-4474-a829-38f1ebb4deb8', '{"sub": "f05151be-42b1-4474-a829-38f1ebb4deb8", "email": "test_user@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:13:16.763242+00', '2024-06-08 13:13:16.763262+00', '2024-06-08 13:13:16.763262+00', '8a88322b-145e-42de-a972-bab59ed722e3'),
	('65855918-d819-4f32-ad9a-b50de7654c30', '65855918-d819-4f32-ad9a-b50de7654c30', '{"sub": "65855918-d819-4f32-ad9a-b50de7654c30", "email": "test_user2@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-06-08 13:14:13.720276+00', '2024-06-08 13:14:13.720321+00', '2024-06-08 13:14:13.720321+00', '526f1f0f-701b-4586-89f8-d134fa43e89f');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('ac90f191-7b49-4dae-b62e-ea7f495b1079', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-09 13:23:34.467772+00', '2024-06-09 15:42:38.604936+00', NULL, 'aal1', NULL, '2024-06-09 15:42:38.60483', 'Dart/3.4 (dart:io)', '192.168.65.1', NULL),
	('2734b414-7720-47b6-90a6-a5981f4367fd', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-10 02:17:10.658805+00', '2024-06-11 14:28:28.788076+00', NULL, 'aal1', NULL, '2024-06-11 14:28:28.78804', 'Dart/3.4 (dart:io)', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('ac90f191-7b49-4dae-b62e-ea7f495b1079', '2024-06-09 13:23:34.473218+00', '2024-06-09 13:23:34.473218+00', 'password', '31d23116-ff8a-4b33-99c6-2e9d225fbcf3'),
	('2734b414-7720-47b6-90a6-a5981f4367fd', '2024-06-10 02:17:10.660788+00', '2024-06-10 02:17:10.660788+00', 'password', '9a70769d-5917-49ba-9ed4-b8d29429f7be');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'mKqmzRykQlulDRr73yFP7w', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:23:34.470409+00', '2024-06-09 13:48:08.055948+00', NULL, 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 2, '6MQdpBld2IwJGNPXF8cRAg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:48:08.058471+00', '2024-06-09 13:52:47.534778+00', 'mKqmzRykQlulDRr73yFP7w', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 3, 'XvPLb6oUYZW2-uC4ko8blw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:52:47.535544+00', '2024-06-09 13:54:10.689115+00', '6MQdpBld2IwJGNPXF8cRAg', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 4, '-skb4dnvEUvQWvr27amYIg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:54:10.689606+00', '2024-06-09 13:56:49.894027+00', 'XvPLb6oUYZW2-uC4ko8blw', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 5, 'PvgQl3b0RyyQsfZvlBXYAQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-09 13:56:49.89462+00', '2024-06-09 15:42:38.600568+00', '-skb4dnvEUvQWvr27amYIg', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 6, 'sIzjQ0XP7cNXIO3YrzoXCA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', false, '2024-06-09 15:42:38.60133+00', '2024-06-09 15:42:38.60133+00', 'PvgQl3b0RyyQsfZvlBXYAQ', 'ac90f191-7b49-4dae-b62e-ea7f495b1079'),
	('00000000-0000-0000-0000-000000000000', 7, '1tqDdiibgmxr13MjAWBJjQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 02:17:10.65976+00', '2024-06-10 03:16:36.220516+00', NULL, '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 8, 'T46tjA_FGucth1MLQ6XUaw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 03:16:36.221255+00', '2024-06-10 04:15:56.2867+00', '1tqDdiibgmxr13MjAWBJjQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 9, 'fu4_KbwfwgLAF5SHZHP6Jw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 04:15:56.28715+00', '2024-06-10 05:15:16.214914+00', 'T46tjA_FGucth1MLQ6XUaw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 10, 'S9yLE0HjODQoduq5m8_xFQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 05:15:16.215309+00', '2024-06-10 06:14:26.236097+00', 'fu4_KbwfwgLAF5SHZHP6Jw', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 11, '15C1zWv3ttldWbcOuoLQDA', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-10 06:14:26.23763+00', '2024-06-11 11:52:31.051744+00', 'S9yLE0HjODQoduq5m8_xFQ', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 12, 'AWcRXCOdG-JbcpZhEX3Lvg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 11:52:31.053247+00', '2024-06-11 12:52:00.6185+00', '15C1zWv3ttldWbcOuoLQDA', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 13, 'SUVCg83oZ8LzPoSe_GkaBg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 12:52:00.619316+00', '2024-06-11 13:40:20.666075+00', 'AWcRXCOdG-JbcpZhEX3Lvg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 14, 'TH_MatX8jW4HtOx1jGJXpw', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', true, '2024-06-11 13:40:20.667081+00', '2024-06-11 14:28:28.785614+00', 'SUVCg83oZ8LzPoSe_GkaBg', '2734b414-7720-47b6-90a6-a5981f4367fd'),
	('00000000-0000-0000-0000-000000000000', 15, 'VHfXcA5tjfS2xXJqK8UqxQ', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', false, '2024-06-11 14:28:28.786243+00', '2024-06-11 14:28:28.786243+00', 'TH_MatX8jW4HtOx1jGJXpw', '2734b414-7720-47b6-90a6-a5981f4367fd');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "username", "avatar_url", "updated_at", "created_at") VALUES
	('65855918-d819-4f32-ad9a-b50de7654c30', 'テストユーザ２', NULL, '2024-06-08 13:15:17.461043+00', '2024-06-08 13:14:13.719056+00'),
	('81363697-5977-470a-bae8-d4575bc8de06', 'admin', 'http://127.0.0.1:54321/storage/v1/object/public/user_avatars/81363697-5977-470a-bae8-d4575bc8de06/avatar.jpg', '2024-06-08 13:22:42.283842+00', '2024-06-08 13:12:48.689279+00'),
	('f05151be-42b1-4474-a829-38f1ebb4deb8', 'test_user', 'http://127.0.0.1:54321/storage/v1/object/public/user_avatars/f05151be-42b1-4474-a829-38f1ebb4deb8/avatar.jpg', '2024-06-08 13:28:25.980175+00', '2024-06-08 13:13:16.761994+00'),
	('84f5fc4c-529c-40e8-85fb-9713868cbcfc', 'micady', 'http://127.0.0.1:54321/storage/v1/object/public/user_avatars/84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpeg', '2024-06-11 14:28:28.780866+00', '2024-06-08 13:11:13.303711+00');


--
-- Data for Name: scenarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."scenarios" ("id", "trpg_system", "title", "kana", "key_visual_url", "store_url", "author", "created_by", "updated_at", "created_at") VALUES
	('c1bb543d-074e-49f6-b767-319f027ab0ff', 'mm', 'めっちゃ面白いシナリオ', 'メッチャオモシロイシナリオ', NULL, 'https://booth.pm/ja/search/%E3%83%9E%E3%83%BC%E3%83%80%E3%83%BC%E3%83%9F%E3%82%B9%E3%83%86%E3%83%AA%E3%83%BC', 'とてもすごい作者', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 13:32:16.421356+00', '2024-06-08 13:32:16.421356+00'),
	('d1867007-3ed2-4485-98f3-ae7f13b925d1', 'mm', 'Muder Mystery Test Scenario', '', NULL, NULL, 'Writer', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 15:06:05.329444+00', '2024-06-08 15:06:05.329444+00'),
	('d9583a4f-87be-44f6-8daa-b98946db44c0', 'coc6', 'クトゥルフ神話シナリオ', 'クトゥルフシンワシナリオ', NULL, NULL, 'CoC作者', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 15:09:45.683743+00', '2024-06-08 15:09:45.683743+00'),
	('318ae32a-0755-456f-a601-58a485e0bb68', 'coc7', '漢字で始めちゃうよん', 'カンジデハジメチャウヨン', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:27:39.38781+00', '2024-06-11 12:27:24.375177+00'),
	('dd7be510-b08b-492b-a641-8ed5f525f323', 'coc7', '漢字で始めちゃうよん（カナなし）', '', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:28:58.556796+00', '2024-06-11 12:28:58.556796+00'),
	('e57b5828-3387-4424-80d3-faa37d4df0b0', 'mm', 'かなテスト1', 'カナテスト1', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:35:44.352484+00', '2024-06-11 12:35:44.352484+00'),
	('2ad5679c-e78e-4f1f-9b7f-a1805c5f9dec', 'mm', 'かなテスト2', 'カナテスト2', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:38:00.735655+00', '2024-06-11 12:36:19.231603+00'),
	('7031bf05-a991-4d6b-80af-ff96a92ebe4e', 'mm', 'かなテスト3', 'カナテスト', NULL, NULL, NULL, '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:38:06.511677+00', '2024-06-11 12:36:39.449106+00');


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."characters" ("id", "scenario_id", "number", "name", "is_public", "is_customized", "image_url", "updated_at", "created_at") VALUES
	('7cadd063-d7d3-4c94-8dd1-694935438506', 'c1bb543d-074e-49f6-b767-319f027ab0ff', 1, 'たぶんいいやつ', true, false, NULL, '2024-06-08 15:21:56.386904+00', '2024-06-08 15:21:56.386904+00'),
	('b842743e-3eb9-4796-ad81-12fc09e8fddc', 'c1bb543d-074e-49f6-b767-319f027ab0ff', 2, '怪しいやつ', true, false, NULL, '2024-06-08 15:22:45.226773+00', '2024-06-08 15:22:45.226773+00'),
	('bb21c017-81fb-4d0f-904d-c9a42d27a78c', 'c1bb543d-074e-49f6-b767-319f027ab0ff', 3, '犯人じゃない？？', true, false, NULL, '2024-06-08 15:23:33.334885+00', '2024-06-08 15:23:33.334885+00'),
	('1b13ce43-cb57-4e85-971d-77b763b6c669', 'd9583a4f-87be-44f6-8daa-b98946db44c0', NULL, 'カスタマイズキャラですわん', true, true, NULL, '2024-06-08 16:08:56.037894+00', '2024-06-08 16:08:56.037894+00'),
	('d636a1f3-fa70-415d-bdb5-7b000610d7d5', 'd9583a4f-87be-44f6-8daa-b98946db44c0', NULL, '見せられないキャラですわん', false, true, NULL, '2024-06-08 16:09:26.386788+00', '2024-06-08 16:09:26.386788+00');


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."sessions" ("id", "scenario_id", "created_by", "updated_at", "created_at") VALUES
	('448c4760-eecf-4681-b29a-b75248c21bd4', 'c1bb543d-074e-49f6-b767-319f027ab0ff', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 16:10:27.344049+00', '2024-06-08 16:10:27.344049+00'),
	('cf016410-c1a3-4634-8f64-64eccbd74dd8', 'd9583a4f-87be-44f6-8daa-b98946db44c0', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-08 16:10:40.631817+00', '2024-06-08 16:10:40.631817+00'),
	('8d9470aa-b445-4090-8326-58fb267af26d', 'd1867007-3ed2-4485-98f3-ae7f13b925d1', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:25:50.847677+00', '2024-06-11 12:25:50.847677+00'),
	('200927ef-36b6-464b-85a6-4ca4960d44bb', '318ae32a-0755-456f-a601-58a485e0bb68', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:27:56.60387+00', '2024-06-11 12:27:56.60387+00'),
	('5d9ba62c-a0bb-4a2f-bf62-36c0d0dac7c7', 'dd7be510-b08b-492b-a641-8ed5f525f323', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:29:10.811441+00', '2024-06-11 12:29:10.811441+00'),
	('1bf57a38-8e52-45af-98b7-e6fd6c69d0e1', 'e57b5828-3387-4424-80d3-faa37d4df0b0', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:36:58.798719+00', '2024-06-11 12:36:58.798719+00'),
	('e9de8a83-6548-4369-979a-32592714d051', '2ad5679c-e78e-4f1f-9b7f-a1805c5f9dec', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:37:06.524985+00', '2024-06-11 12:37:06.524985+00'),
	('bfbcc0ad-8824-4fe8-b5eb-1554ad582630', '7031bf05-a991-4d6b-80af-ff96a92ebe4e', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-11 12:37:13.70247+00', '2024-06-11 12:37:13.70247+00');


--
-- Data for Name: memos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: participants; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."schedules" ("id", "session_id", "schedule_type", "beginning_time", "playtime", "updated_at", "created_at") VALUES
	('1b97e515-bb35-411e-8288-d59b514b4539', '448c4760-eecf-4681-b29a-b75248c21bd4', 'event', '2024-06-11 13:12:52+00', '02:00:00', '2024-06-11 13:13:42.301461+00', '2024-06-11 13:13:42.301461+00'),
	('5620c79c-1204-4a07-a162-fef00ba3a172', 'cf016410-c1a3-4634-8f64-64eccbd74dd8', 'adjustment', '2024-06-11 13:13:57+00', '00:01:00', '2024-06-11 13:14:05.837141+00', '2024-06-11 13:14:05.837141+00'),
	('4d2c2e51-b7be-4714-b321-de107eca310f', 'cf016410-c1a3-4634-8f64-64eccbd74dd8', 'event', '2024-05-29 13:14:19+00', '08:20:00', '2024-06-11 13:14:32.559888+00', '2024-06-11 13:14:32.559888+00'),
	('e6bb4e8f-6108-487d-bf7c-3ca281b42458', '200927ef-36b6-464b-85a6-4ca4960d44bb', 'event', '2024-06-27 13:14:51+00', '205:45:00', '2024-06-11 13:14:59.477939+00', '2024-06-11 13:14:59.477939+00');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

-- INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
-- 	('user_avatars', 'user_avatars', NULL, '2024-06-02 12:47:46.394138+00', '2024-06-02 12:47:46.394138+00', true, false, NULL, NULL, NULL),
-- 	('scenario_key_visuals', 'scenario_key_visuals', NULL, '2024-06-02 12:47:46.399193+00', '2024-06-02 12:47:46.399193+00', true, false, NULL, NULL, NULL),
-- 	('character_images', 'character_images', NULL, '2024-06-02 12:47:46.415923+00', '2024-06-02 12:47:46.415923+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") VALUES
	('45a2f074-609d-4ad8-84fb-8c1a21121357', 'user_avatars', '81363697-5977-470a-bae8-d4575bc8de06/avatar.jpg', NULL, '2024-06-08 13:18:49.784062+00', '2024-06-08 13:19:01.839282+00', '2024-06-08 13:18:49.784062+00', '{"eTag": "\"2597c2826d9ccff38c9e06a07fbfb8e6\"", "size": 19032, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-08T13:19:01.835Z", "contentLength": 19032, "httpStatusCode": 200}', 'ae9ddb37-2e23-4a3e-bfcb-c5b7dfc0346e', NULL),
	('03263a65-8f15-4290-be7c-386cdf9ca7b7', 'user_avatars', '84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpg', NULL, '2024-06-08 13:20:56.198482+00', '2024-06-08 13:21:46.801884+00', '2024-06-08 13:20:56.198482+00', '{"eTag": "\"051fb88ccab4d70cc5f3daf15005a7b8\"", "size": 8062, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-08T13:21:46.798Z", "contentLength": 8062, "httpStatusCode": 200}', 'ad7cd94d-0352-4203-8913-3055d394bd13', NULL),
	('9be8a61c-6f02-40e3-9123-ce1380c38b59', 'user_avatars', 'f05151be-42b1-4474-a829-38f1ebb4deb8/avatar.jpg', NULL, '2024-06-08 13:28:01.024873+00', '2024-06-08 13:28:07.548399+00', '2024-06-08 13:28:01.024873+00', '{"eTag": "\"e004a5d8e1f6bcb82f708e2ee664bf36\"", "size": 37059, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-08T13:28:07.545Z", "contentLength": 37059, "httpStatusCode": 200}', 'c5c6d9f2-fd17-4736-a5ae-4759f11b1c7d', NULL),
	('5de08791-8bf8-4f74-a420-1ea55703171d', 'user_avatars', '84f5fc4c-529c-40e8-85fb-9713868cbcfc/avatar.jpeg', '84f5fc4c-529c-40e8-85fb-9713868cbcfc', '2024-06-10 02:18:28.2423+00', '2024-06-10 02:18:28.2423+00', '2024-06-10 02:18:28.2423+00', '{"eTag": "\"15e6e0577aab2d5b1ecd457ccc5616fc\"", "size": 296423, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-06-10T02:18:28.235Z", "contentLength": 296423, "httpStatusCode": 200}', '09f54bf8-7923-4e12-903f-b992ae5fadd4', '84f5fc4c-529c-40e8-85fb-9713868cbcfc');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 15, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;

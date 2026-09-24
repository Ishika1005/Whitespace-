ISHIKA STUDY — CROSS-DEVICE SYNC SETUP

1. Create a free Supabase project.
2. In Supabase SQL Editor, run supabase_setup.sql from this repository.
3. In Project Settings / API, copy the Project URL and the Publishable key (or legacy anon public key if that is what the dashboard calls it). Never put a service_role/secret key in the browser app.
4. Open Ishika Study -> Settings -> Cloud sync.
5. Paste the URL and key, then Create account / Sign in.
6. The first device uploads its existing local study data if the cloud row does not exist.
7. On the second device, paste the same URL/key and sign in with the same account. The same study data will sync.

The app keeps local storage for offline use and syncs when online. If two devices make changes while disconnected, the newer local-change timestamp wins. Export a JSON backup occasionally.

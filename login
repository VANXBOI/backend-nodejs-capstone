curl --location 'http://localhost:3060/api/auth/login' \
--header 'Content-Type: application/json' \
--header 'Cookie: jhub-reverse-tool-proxy=s%3Adf8852e8-fe28-47ac-ab62-cb52fc5bbef5.CxZgc7USbJXpxTv4Vs6BH6esBtnhnYv%2FKQ098HtCm5s' \
--data-raw '{
    "email": "lachie@gmail.com",
    "password": "lac123"
}'

Output:
{"userName":"Lachlan","userEmail":"lachie@gmail.com"}

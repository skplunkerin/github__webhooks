# Sample project

Using Github's webhooks (non-local git hooks) to test:

1. if PR merged
2. if was merged to `master`
3. if certain file found in merge (`swagger-bundle.yaml`)
4. trigger action (send file to Postman API)

## Project setup:

```
git clone https://github.com/skplunkerin/github__webhooks.git && cd github__webhooks
npm install -g swagger-cli openapi-to-postmanv2

# Add your Github webhook secret here:
cp .env-sample .env

# Make change to sample-swagger.yaml, then:
npm run build
```

## Github Webhook setup:

1. Go to https://github.com/skplunkerin/[[YOUR REPO]]/settings/hooks
2. Click "Add Webhook"
3. Add your info:
  - **Payload URL:** your webhook URL (for local testing use NGROK)
  - **Content type:** `application/x-www-form-urlencoded` or `application/json` (your preference)
  - **Secret:** [[whatever you want here]]
  - **Which events would you like to trigger this webhook?** `Just the push event.`
  - **Active:** true
4. Click "Add webhook" to save

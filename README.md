Sample project using Github's webhooks (non-local git hooks) to test:

1. if PR merged
2. if was merged to `master`
3. if certain file found in merge (`swagger-bundle.yaml`)
4. trigger action (send file to Postman API)

**Project setup:**

```
git clone https://github.com/skplunkerin/github__webhooks.git && cd github__webhooks
npm install -g swagger-cli openapi-to-postmanv2
# Make change to sample-swagger.yaml, then:
npm run build
```

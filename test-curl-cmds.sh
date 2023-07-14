# OpenAI API Chat Completions Endpoint
curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer {YOUR_OPENAI_API_KEY}" \
  -d '{
    "model": "gpt-3.5-turbo",
    "max_tokens":256,
    "messages": [{"role": "system", "content": "You are a developer."}, {"role": "user", "content": "What is Appsmith?"}]
  }'

# Test without token
curl http://localhost:9080/ask-me-anything -X POST -d ' \
{
    "model": "gpt-3.5-turbo",
    "max_tokens":256,
    "messages": [{"role": "system", "content": "You are a developer."}, {"role": "user", "content": "What is Appsmith?"}]
}'

# Claim a new JWT token
curl -i http://localhost:9080/login?key=appsmithuser@gmail.com -i

# Test with JWT token
curl -i http://localhost:9080/ask-me-anything -H 'Authorization: {YOUR_OPENAI_API_KEY}' -X POST -d '
{
    "model": "gpt-3.5-turbo",
    "max_tokens":256,
    "messages": [{"role": "system", "content": "You are a developer."}, {"role": "user", "content": "What is Appsmith?"}]
}'
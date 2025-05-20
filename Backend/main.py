from openai import OpenAI

client = OpenAI(
    base_url="https://generativelanguage.googleapis.com/v1beta/openai/",
    api_key="AIzaSyA3p2ARwH7nixzzuO5XdMuMqbYVHhbWk4g"
)
response = client.chat.completions.create(
    model="gemini-2.5-flash-preview-04-17",
    messages=[{"role": "user", "content": "Explain quantum computing"}]
)
print(response.choices[0].message.content)

import os
from dotenv import load_dotenv

from  langchain_groq import ChatGroq

load_dotenv()


api = os.getenv("GROQ_API_KEY")

model = ChatGroq(model="openai/gpt-oss-120b",api_key=api)

result = model.invoke("hello")

print(result.content)
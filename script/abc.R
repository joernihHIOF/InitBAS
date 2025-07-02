2+2
library(ellmer)
library(chatgpt)
Sys.getenv("GROQ_API_KEY")
Sys.setenv(GROQ_API_KEY =Sys.getenv("GROQ_API_KEY"))

bc <- chat_groq("")

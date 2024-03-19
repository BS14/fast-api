from fastapi import FastAPI

app = FastAPI()

@app.get("/")

def root():
    return {"response": "Hello World2!!!"}
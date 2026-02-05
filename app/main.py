from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def main():
  return {"message": "Hello Argo!"}


@app.get("/health")
async def health():
    return {"message": "I exists!"}

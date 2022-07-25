import logging
import requests
import time
import os

from fastapi import FastAPI

app = FastAPI()


@app.get("/status", status_code=200)
async def get_status():
    return {"status": "ok"}


@app.post("/generate-token", status_code=201)
async def add_author():
    return {"token": "token1234"}


@app.post("/author", status_code=201)
async def add_author():
    return {"id": 123}


@app.put("/author", status_code=200)
async def update_author():
    return {"id": 123}


@app.post("/post", status_code=201)
async def add_post():
    return {"id": 123}


@app.put("/post", status_code=200)
async def update_post():
    return {"id": 123}


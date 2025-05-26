
from routes import router
from fastapi import FastAPI
from fastapi import APIRouter
from db import save_user
from models import User
from pydantic import BaseModel, EmailStr
from fastapi import FastAPI, HTTPException
import sqlite3

app = FastAPI()


#! ❌ The Wrong Way(All-In-One Mess)

@app.post("/users")
def create_user(name: str, email: str):
    if "@" not in email:
        raise HTTPException(400, "Invalid email")
    conn = sqlite3.connect("db.sqlite")
    conn.execute(
        "INSERT INTO users (name, email) VALUES (?, ?)", (name, email))
    conn.commit()
    return {"msg": "User created"}

# 😬 What’s wrong?
# Validation, DB, and routing all jammed together.
# Hard to test, hard to scale, hard to debug.

# ------------------------------------------------------------


#!✅ The Right Way(SoC-Friendly)


#! model.py 
class User(BaseModel):
    name: str
    email: EmailStr

#! db.py 
def save_user(name, email):
    with sqlite3.connect("db.sqlite") as conn:
        conn.execute(
            "INSERT INTO users (name, email) VALUES (?, ?)", (name, email))

#! router.py
router = APIRouter()

@router.post("/users")
def create_user(user: User):
    save_user(user.name, user.email)
    return {"msg": "User created"}


#! main.py

app = FastAPI()
app.include_router(router)


# ⚡ Why it's better:
# Each file has one responsibility.
# Easier to test and debug.
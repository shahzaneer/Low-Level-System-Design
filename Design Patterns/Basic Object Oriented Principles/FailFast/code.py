from pydantic import BaseModel, EmailStr, validator
from fastapi import FastAPI, HTTPException

app = FastAPI()

#! ❌ What Not to Do(Fail Slow, Be Surprising)

@app.post("/register")
def register_user(request: dict):
    # You accept a raw dict (no model, no validation)
    username = request.get("username")
    email = request.get("email")
    password = request.get("password")
    # You're assuming all fields are present. 
    # Weak password, but no check
    save_to_database(username, email, password)  # Uh-oh!
    return {"message": "User registered"}


# ✅ What to do (Fail Fast Applied)

class UserRegistration(BaseModel):
    username: str
    email: EmailStr
    password: str

    @validator("password")
    def strong_password(cls, value):
        if len(value) < 8:
            raise ValueError("Password must be at least 8 characters long.")
        return value


@app.post("/register")
def register_user(user: UserRegistration):
    # At this point, FastAPI and Pydantic have already validated all fields
    # Simulate check for duplicate user
    if user.username == "admin":
        raise HTTPException(status_code=400, detail="Username already taken.")
    return {"message": f"User {user.username} registered successfully!"}

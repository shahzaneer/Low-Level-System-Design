# Violating YAGNI principle ❌
def calculate_salary(employee_type, hours):
    if employee_type == "full-time":
        return hours * 50
    elif employee_type == "intern":
        return hours * 20
    elif employee_type == "freelancer":
        return hours * 35
    elif employee_type == "alien-from-mars":
        # Might support in the future
        return hours * 999

#! You: "I might add Martians to payroll later…"
#! YAGNI: “Brother, you don’t even have interns yet.”

# Following it ✅

def calculate_salary(hours):
    return hours * 50  # Currently only full-time employees

#! 🎯 When the interns come, then add them. Until then — chill.

#! WRONG WAY ❌
def update_user_profile(user_id, new_data):
    db.update_profile(user_id, new_data)
    send_promotional_email(user_id)  # Unexpected side effect
    log_activity("User profile updated")


#! Why it's surprising:
#! You're just updating a user profile — why send a marketing email? That has nothing to do with the expected operation. This breaks the Principle of Least Astonishment.

#! PREFFERED WAY ✅

def update_user_profile(user_id, new_data):
    db.update_profile(user_id, new_data)
    log_activity("User profile updated")


def send_profile_update_promo(user_id):
    send_promotional_email(user_id)


#! Why it's better:
#! Now the function only does what its name promises. If marketing wants to send emails, they call a separate, explicitly named function.    

# Example 1
# Bad
def f(x): return 1 if x <= 1 else x * f(x - 1)

# Good

def faculty(number: int) -> int:
    if number <= 1:
        return 1
    else:
        return number * faculty(number - 1)

# Sure, the first version is also readable,
# but it is considerably harder to do so.
#  Adding a few descriptive names, type hints, and
# splitting the line into multiple ones gets
# clearly easier to read. The main goal in design
# should always be to be as easy to understand as
# possible. One of many common bad practices of
# developers is to create fancy and unreadable
# "oneliners". There is absolutely no reason to do so.
# This will most certainly lead to someone, if not themself struggling to decipher it.

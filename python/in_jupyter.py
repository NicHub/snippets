in_jupyter = hasattr(__builtins__, "__IPYTHON__")
print(f"In Jupyter ? = {in_jupyter}")

# Autre méthode
in_jupyter = "get_ipython" in globals()
print(f"In Jupyter ? = {in_jupyter}")

# Autre méthode
import sys
in_jupyter = "ipykernel_launcher.py" in sys.argv[0]
print(f"In Jupyter ? = {in_jupyter}")

# Autre méthode
try:
    get_ipython().__class__.__name__
    in_jupyter = True
except NameError:
    in_jupyter = False
print(f"In Jupyter ? = {in_jupyter}")

import matplotlib.pyplot as plt

# Récupération du cycle de couleurs par défaut de Matplotlib
prop_cycle = plt.rcParams["axes.prop_cycle"]
colors = prop_cycle.by_key()["color"]

# Affichage des codes hexadécimaux des couleurs par défaut
for i, color in enumerate(colors[:10]):
    print(f"Code couleur {i+1}: {color}")

# fmt: off
"""
Code couleur 1: #1f77b4
Code couleur 2: #ff7f0e
Code couleur 3: #2ca02c
Code couleur 4: #d62728
Code couleur 5: #9467bd
Code couleur 6: #8c564b
Code couleur 7: #e377c2
Code couleur 8: #7f7f7f
Code couleur 9: #bcbd22
Code couleur 10: #17becf
"""
# fmt: on
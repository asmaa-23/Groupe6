option solver cplex;
# Déclaration des variables de décision
var x1 >= 0;  # Nombre de yaourts de type A à produire
var x2 >= 0;  # Nombre de yaourts de type B à produire

# Fonction objectif : Maximiser le profit total
maximize Profit: 4 * x1 + 5 * x2;

# Contraintes
subject to ContrainteFraises: 2 * x1 + x2 <= 800;  # Contrainte de disponibilité des fraises
subject to ContrainteLait: x1 + 2* x2 <= 700;  # Contrainte de disponibilité du lait
subject to ContrainteSucre:  x2 <= 300;  # Contrainte de disponibilité du sucre

# Résolution du modèle
solve;

# Affichage des résultats
printf "Quantité de yaourts de type A à produire : %.2f\n", x1;
printf "Quantité de yaourts de type B à produire : %.2f\n", x2;
printf "Profit total : %.2f\n", Profit;

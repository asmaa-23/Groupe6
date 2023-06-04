option solver cplex;
# D�claration des variables de d�cision
var x1 >= 0;  # Nombre de yaourts de type A � produire
var x2 >= 0;  # Nombre de yaourts de type B � produire

# Fonction objectif : Maximiser le profit total
maximize Profit: 4 * x1 + 5 * x2;

# Contraintes
subject to ContrainteFraises: 2 * x1 + x2 <= 800;  # Contrainte de disponibilit� des fraises
subject to ContrainteLait: x1 + 2* x2 <= 700;  # Contrainte de disponibilit� du lait
subject to ContrainteSucre:  x2 <= 300;  # Contrainte de disponibilit� du sucre

# R�solution du mod�le
solve;

# Affichage des r�sultats
printf "Quantit� de yaourts de type A � produire : %.2f\n", x1;
printf "Quantit� de yaourts de type B � produire : %.2f\n", x2;
printf "Profit total : %.2f\n", Profit;

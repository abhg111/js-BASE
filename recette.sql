-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Les données exportées n'étaient pas sélectionnées.

-- Les données exportées n'étaient pas sélectionnées.

-- Les données exportées n'étaient pas sélectionnées.

-- Les données exportées n'étaient pas sélectionnées.
-- Insérer des catégories
-- Insérer des ingrédients avec unité de mesure
INSERT INTO ingredient (id_ingredient, ingredient_name, price, unity) VALUES 
(1,'Tomate', 1.50, 'pièce'), 
(2,'Poulet', 5.00, 'kg'), 
(3,'Lait', 0.90, 'litre'), 
(4,'Farine', 0.50, 'kg'), 
(5,'Sucre', 0.80, 'kg'), 
(6,'Sel', 0.10, 'g'), 
(7,'Poivre', 0.15, 'g'), 
(8,'Oignon', 070, 'pièce'), 
(9,'Ail', 0.20, 'gousse'), 
(10,'Beurre', 1.20, 'g');

-- Insérer des recettes
INSERT INTO recipe (id_recipe, recipe_name, preparation_time, instructions, id_category) VALUES 
(1,'Salade de tomates', 10, 'Couper les tomates en dés et assaisonner.', 1),
(2,'Poulet rôti', 90, 'Rôtir le poulet au four.', 2),
(3,'Crêpes', 20, 'Mélanger les ingrédients et cuire les crêpes.', 3),
(4,'Gâteau au chocolat', 60, 'Préparer la pâte et cuire au four.', 3),
(5,'Soupe à l\'oignon', 45, 'Faire revenir les oignons et ajouter le bouillon.', 1),
(6,'Omelette', 15, 'Battre les œufs et cuire à la poêle.', 2),
(7,'Tarte aux pommes', 50, 'Préparer la pâte et ajouter les pommes.', 3),
(8,'Ratatouille', 60, 'Cuire les légumes ensemble.', 2),
(9,'Salade César', 20, 'Mélanger les ingrédients et assaisonner.', 1),
(10,'Pâtes à la carbonara', 30, 'Cuire les pâtes et préparer la sauce.', 2)
(11, 'Pâtes à la carbonara', 20, 'Cuire les pâtes. Préparer la sauce avec du lard, des œufs et du parmesan.', 2);

-- Modifier le nom de la recette ayant comme identifiant id_recipe = 3
UPDATE recipe
SET recipe_name = 'Pancakes'
WHERE id_recipe = 3;

-- Insérer les relations entre recettes et ingrédients
INSERT INTO recipe_ingredients (id_recipe, id_ingredient, quantity) VALUES 
(1, 1, 3), -- Salade de tomates
(2, 2, 1), -- Poulet rôti
(3, 3, 0.5), -- Crêpes
(3, 4, 0.2), -- Crêpes
(3, 5, 0.1), -- Crêpes
(4, 4, 0.3), -- Gâteau au chocolat
(4, 5, 0.2), -- Gâteau au chocolat
(5, 8, 5), -- Soupe à l'oignon
(6, 3, 0.1), -- Omelette
(7, 4, 0.3), -- Tarte aux pommes
(8, 1, 2), -- Ratatouille
(8, 8, 1), -- Ratatouille
(9, 2, 0.5), -- Salade César
(10, 2, 0.3), -- Pâtes à la carbonara
(10, 3, 0.2), -- Pâtes à la carbonara
(11, 2, 0.3), -- Poulet
(11, 3, 0.2), -- Lait
(11, 10, 0.1); -- Beurre

-- Afficher le nombre d'ingrédients nécessaire par recette
SELECT r.recipe_name, COUNT(ri.id_ingredient) AS number_of_ingredients
FROM recipe r
JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe
GROUP BY r.recipe_name;

-- Afficher les recettes qui nécessitent au moins 30 min de préparation
SELECT recipe_name, preparation_time
FROM recipe
WHERE preparation_time >= 30;

-- Afficher les recettes dont le nom contient le mot « Salade »
SELECT recipe_name
FROM recipe
WHERE recipe_name LIKE '%Salade%';

-- Afficher les détails de la recette « Pâtes à la carbonara »
SELECT r.recipe_name, r.preparation_time, r.instructions, i.ingredient_name, ri.quantity
FROM recipe r
JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe
JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
WHERE r.recipe_name = 'Pâtes à la carbonara';

-- Afficher les détails des ingrédients de la recette avec id_recipe = 11
SELECT i.ingredient_name, ri.quantity
FROM recipe_ingredients ri
JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
WHERE ri.id_recipe = 11;

-- Afficher le prix total de la recette n°5
SELECT r.recipe_name, SUM(i.price * ri.quantity) AS total_price
FROM recipe r
JOIN recipe_ingredients ri ON r.id_recipe = ri.id_recipe
JOIN ingredient i ON ri.id_ingredient = i.id_ingredient
WHERE r.id_recipe = 5
GROUP BY r.recipe_name;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

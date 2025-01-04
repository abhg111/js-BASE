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

-- Listage des données de la table recette.category : ~3 rows (environ)
INSERT INTO `category` (`id_category`, `category_name`) VALUES
	(1, 'Entrée'),
	(2, 'Plat'),
	(3, 'Dessert');

-- Listage des données de la table recette.ingredient : ~11 rows (environ)
INSERT INTO `ingredient` (`id_ingredient`, `ingredient_name`, `price`, `unity`) VALUES
	(1, 'Tomate', 1.5, 'pièce'),
	(2, 'Poulet', 5, 'kg'),
	(3, 'Lait', 0.9, 'litre'),
	(4, 'Farine', 0.5, 'kg'),
	(5, 'Sucre', 0.8, 'kg'),
	(6, 'Sel', 0.1, 'g'),
	(7, 'Poivre', 0.15, 'g'),
	(8, 'Oignon', 0.7, 'pièce'),
	(9, 'Ail', 0.2, 'gousse'),
	(10, 'Beurre', 1.2, 'g'),
	(11, 'Poivre', 1.5, 'cuillère à café');

-- Listage des données de la table recette.recipe : ~10 rows (environ)
INSERT INTO `recipe` (`id_recipe`, `recipe_name`, `preparation_time`, `instructions`, `id_category`) VALUES
	(1, 'Salade de tomates', 10, 'Couper les tomates en dés et assaisonner.', 1),
	(3, 'Pancakes', 20, 'Mélanger les ingrédients et cuire les crêpes.', 3),
	(4, 'Gâteau au chocolat', 60, 'Préparer la pâte et cuire au four.', 3),
	(5, 'Soupe à l\'oignon', 45, 'Faire revenir les oignons et ajouter le bouillon.', 1),
	(6, 'Omelette', 15, 'Battre les œufs et cuire à la poêle.', 2),
	(7, 'Tarte aux pommes', 50, 'Préparer la pâte et ajouter les pommes.', 3),
	(8, 'Ratatouille', 60, 'Cuire les légumes ensemble.', 2),
	(9, 'Salade César', 20, 'Mélanger les ingrédients et assaisonner.', 1),
	(10, 'Pâtes à la carbonara', 20, 'Cuire les pâtes et préparer la sauce.', 2),
	(11, 'Pates au pesto', 30, 'Just eat it hot.', 2);

-- Listage des données de la table recette.recipe_ingredients : ~15 rows (environ)
INSERT INTO `recipe_ingredients` (`quantity`, `id_recipe`, `id_ingredient`) VALUES
	(3, 1, 1),
	(1, 2, 2),
	(0.5, 3, 3),
	(0.2, 3, 4),
	(0.1, 3, 5),
	(0.3, 4, 4),
	(0.2, 4, 5),
	(5, 5, 8),
	(0.1, 6, 3),
	(0.3, 7, 4),
	(2, 8, 1),
	(1, 8, 8),
	(0.5, 9, 2),
	(0.3, 10, 2),
	(0.2, 10, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

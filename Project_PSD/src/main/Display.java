package main;

import java.util.ArrayList;
import java.util.Scanner;

import article.Article;
import recipe.Recipe;
import review.Review;
import user.User;

public class Display {
	Scanner sc = new Scanner(System.in);
	public void mainMenu() {
		System.out.println("=====================================================");
		System.out.println("|          	WELCOME TO CALORIES LOG             |");
		System.out.println("=====================================================");
		System.out.println("Please choose role for login");
		System.out.println("1. User");
		System.out.println("2. Admin");
		System.out.println("3. Exit");
	}
	
	public void header() {
		System.out.println();
		System.out.println("=====================================================");
		System.out.println("|          	      CALORIES LOG                  |");
		System.out.println("=====================================================");
		System.out.println();
	}
	
	public void menuUser(String name, ArrayList<User> users) {
		header();
		System.out.println("Welcome, " + name);
		System.out.println();
		System.out.println("Choose menu: ");
		System.out.println("1. Calculate BMI Test");
		System.out.println("2. View Recipes");
		System.out.println("3. View Article");
		System.out.println("4. Review");
		System.out.println("5. Back");
	}
	
	public void menuAdmin(String name) {
		header();
		System.out.println("Welcome, " + name);
		System.out.println();
		System.out.println("Choose menu: ");
		System.out.println("1. View User");
		System.out.println("2. Edit Recipes");
		System.out.println("3. Edit Article");
		System.out.println("4. Edit Review");
		System.out.println("5. Back");
	}

	
	public void BMICategory() {
		System.out.println("=====================================================");
		System.out.println("|          	      BMI Test                      |");
		System.out.println("=====================================================");
		System.out.println("");
		System.out.println("====================================");
		System.out.println("|     Category    |       BMI      |");
		System.out.println("====================================");
		System.out.println("|     Kurang      |      <18,5     |");
		System.out.println("|     Normal      |   18,5 - 22,9  |");
		System.out.println("|    Berlebih     |    23 - 29,9   |");
		System.out.println("|    Obesitas     |       >30      |");
		System.out.println("====================================");
	}
	
	public void viewAllReview(ArrayList<Review> reviews) {
		int i=1;
		for (Review review : reviews) {
			System.out.println(i);
			System.out.println("Review ID : " + review.getId());
			System.out.println("UserId : " + review.getUserId());
			System.out.println("Rating : " + review.getRating());
			System.out.println("Description : " + review.getDescription());
			System.out.println();
			System.out.println();
			System.out.println("==============================================================");
			i++;
		}
	}
	
	public void viewRecipes(ArrayList<Recipe> recipes, int menu) {
		
		System.out.println("================================================");
		System.out.printf("%20s\n",recipes.get(menu).getTitle());
		System.out.println("================================================");
		System.out.println();
		System.out.println("Category: " + recipes.get(menu).getCategory());
		System.out.println("Ingredients: ");
		System.out.println(recipes.get(menu).getIngredients());
		System.out.println("Method: ");
		System.out.println(recipes.get(menu).getMethod());
		System.out.println();
		System.out.println("=================================");
		System.out.printf("| Calorie    | %-16f |\n" , recipes.get(menu).getCalorie());
		System.out.printf("| Sugar      | %-16f |\n" , recipes.get(menu).getSugar());
		System.out.printf("| Fiber      | %-16f |\n" , recipes.get(menu).getFiber());
		System.out.printf("| Protein    | %-16f |\n" , recipes.get(menu).getProtein());
		System.out.printf("| Salt       | %-16f |\n" , recipes.get(menu).getSalt());
		System.out.printf("| Fat        | %-16f |\n" , recipes.get(menu).getFat());
		System.out.printf("| Saturate   | %-16f |\n" , recipes.get(menu).getSaturate());
		System.out.printf("| Carbs      | %-16f |\n" , recipes.get(menu).getCarbs());
		System.out.println("=================================");
		System.out.println();
		System.out.println();
	}
	
	public void viewUser(ArrayList<User> user) {
		System.out.println();
		System.out.println("============================================================");
		System.out.println("|          	            User                           |");
		System.out.println("============================================================");
		System.out.println("| No |         Username      |             Email           |");
		System.out.println("============================================================");
		for (int i = 0 ; i< user.size();i++) {
			System.out.printf("| %-2d | %-22s| %-27s |\n", i+1, user.get(i).getUsername(), user.get(i).getEmail());
		}
		System.out.println("============================================================");
		System.out.println("press enter to back...");
		sc.nextLine();
	}
	
	public void menuRecipes() {
		System.out.println();
		System.out.println("===============================");
		System.out.println("|          Recipes            |");
		System.out.println("===============================");
		System.out.println("|  1. View Recipes            |");
		System.out.println("|  2. Insert Recipes          |");
		System.out.println("|  3. Delete Recipes          |");
		System.out.println("|  4. Back                    |");
		System.out.println("================================");
	}
	
	public void articleHeader(ArrayList<Article> articles) {
		System.out.println();
		System.out.println("=====================================================");
		System.out.println("|          	       Article                     |");
		System.out.println("=====================================================");
		for (int i = 0 ; i< articles.size();i++) {
			System.out.println(articles.get(i).getArticleId() + ". " + articles.get(i).getTitle());
		}
		System.out.println();
	}
	
	public void recipeHeader(ArrayList<Recipe> recipes, String category) {
		System.out.println();
		System.out.println("=====================================================");
		System.out.println("|          	       "+ category +"                   |");
		System.out.println("=====================================================");
		
		for (int i = 0 ; i< recipes.size();i++) {
			if (recipes.get(i).getCategory().equals(category)) {
				System.out.println(i+1 + ". " + recipes.get(i).getTitle());
			}
			
		}
		System.out.println();
	}
	
	public void recipeHeaderAll(ArrayList<Recipe> recipes) {
		System.out.println();
		System.out.println("=====================================================");
		System.out.println("|          	       Recipe                     |");
		System.out.println("=====================================================");
		
		for (int i = 0 ; i< recipes.size();i++) {
			System.out.println(recipes.get(i).getId() + ". " + recipes.get(i).getTitle());
		}
		System.out.println();
	}
	
	public void reviewHeaderAll(ArrayList <Review> review) {
		System.out.println();
		System.out.println("=====================================================");
		System.out.println("|          	       Review                      |");
		System.out.println("=====================================================");
		
		for (int i = 0 ; i< review.size();i++) {
			System.out.println(review.get(i).getId() + ". " + review.get(i).getUserId() +" "+ review.get(i).getRating() + " " + review.get(i).getDescription());
		}
		System.out.println();
	}
	
	
	public void viewArticle(ArrayList<Article> articles, int menu) {
		header();
		System.out.println("Title: "+articles.get(menu).getTitle());
		System.out.println();
		System.out.println();
		System.out.println("Author: "+articles.get(menu).getAuthor());
		System.out.println();
		System.out.println();
		System.out.println("Description: \n"+articles.get(menu).getDescription());
		System.out.println("=========================================================");
		System.out.println();
		System.out.println();
	}
	
	public void menuCategory() {
		System.out.println();
		System.out.println("========================");
		System.out.println("|       Category       |");
		System.out.println("========================");
		System.out.println("| 1 |     appetizer    |");
		System.out.println("| 2 |    main course   |");
		System.out.println("| 3 |     dessert      |");
		System.out.println("| 4 |      snack       |");
		System.out.println("| 5 |     beverage     |");
		System.out.println("| 6 |       back       |");
		System.out.println("========================");
	}
	
	public void menuArticle() {
		System.out.println();
		System.out.println("===============================");
		System.out.println("|          Article            |");
		System.out.println("===============================");
		System.out.println("|  1. View Article            |");
		System.out.println("|  2. Insert Article          |");
		System.out.println("|  3. Delete Article          |");
		System.out.println("|  4. Back                    |");
		System.out.println("================================");
	}
	
	public void menuReview() {
		System.out.println();
		System.out.println("===============================");
		System.out.println("|           Review            |");
		System.out.println("===============================");
		System.out.println("|  1. View Review             |");
		System.out.println("|  2. Delete Review           |");
		System.out.println("|  3. Back                    |");
		System.out.println("================================");
	}
	 
	
}

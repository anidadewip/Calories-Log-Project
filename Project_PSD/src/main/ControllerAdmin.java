package main;

import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Scanner;

import admin.Admin;
import article.Article;
import db.Connect;
import recipe.Recipe;
import review.Review;
import user.User;

public class ControllerAdmin {
	Display display = new Display();
	Scanner sc = new Scanner(System.in);
	Controller con = new Controller();
	Connect connect = Connect.getConnection();
	
	public void handleAdmin(ArrayList<Admin> admin, ArrayList <User> user, ArrayList<Article> article, ArrayList<Recipe> recipes, ArrayList <Review> review) throws ParseException {
		display.header();
		String email, password, username = null;
		int isFound = 0;
		int idx = 0;
		int adminId = 0;
		
		do {
			System.out.print("Email : ");
			email = sc.nextLine();
			System.out.print("Password : ");
			password = sc.nextLine();
			
			int i=0;
			for (Admin admin2 : admin) {
				if(admin2.getEmail().equals(email) && admin2.getPassword().equals(password)) {
					isFound = 1;
					idx = i;
					username = admin2.getName();
					adminId = admin2.getId();
					break;
				}
			}
			if(isFound == 0) {
				System.out.println("Credetials Invalid!");
			}
		} while (isFound == 0);
		
		handleMainAdmin(user, article, recipes, review, username, adminId);
	}

	private void handleMainAdmin(ArrayList <User> user, ArrayList<Article> article, ArrayList<Recipe> recipes, ArrayList <Review> review, String name, int adminId) throws ParseException {
		int menu;
		
		do {
			display.menuAdmin(name);
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
			} while (menu < 1 || menu > 5);
			
			if(menu==5) {
				return;
			}
			
			switch (menu) {
			case 1:
				display.viewUser(user);
				break;
			case 2:
				handleRecipe(recipes, adminId);
				break;
			case 3:
				handleArticle(article, adminId);
				break;
			case 4:
				handleReview(review);
				break;
			
			}
			
		} while (menu!=5);
		
	}
	
	public void handleReview(ArrayList <Review> review) {
		int menu = 0;
		
		display.menuReview();
		
		do {
			System.out.printf(">>");
			menu = sc.nextInt();
			sc.nextLine();
		} while (menu<1 || menu>3);
		
		if(menu==3) {
			return;
		}
		
		switch (menu) {
		case 1:
			display.viewAllReview(review);
			break;

		case 2:
			deleteReview(review);
			break;
		}
		
		
	}
	
	public void deleteReview(ArrayList <Review> review) {
		display.reviewHeaderAll(review);
		int delete;
		
		System.out.printf("Choose index to delete: ");
		delete = sc.nextInt();
		sc.nextLine();
		
		String q = "DELETE FROM review WHERE reviewId=?";
		PreparedStatement ps = connect.prepareStatement(q);
		
		try {
			ps.setInt(1, delete);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		System.out.println("Successfully delete review!");
		System.out.println("Press enter to continue...");
		sc.nextLine();
	}
	
	public void handleArticle(ArrayList<Article> article, int adminId) throws ParseException {
		int menu=0;
		do {
			display.menuArticle();
			do {
				System.out.println(">>");
				menu = sc.nextInt();
				sc.nextLine();
			} while (menu < 1 || menu > 4);
			
			if(menu == 4 ) {
				return;
			}
			switch (menu) {
			case 1:
				display.viewArticle(article, menu);
				break;

			case 2:
				insertArticle(article, adminId);
				break;
				
			case 3:
				deleteArticle(article);
				break;
			}
		}while(menu != 4);
	}
	
	public void deleteArticle(ArrayList<Article> article) {
		display.articleHeader(article);
		int delete;
		
		System.out.printf("Choose index to delete: ");
		delete = sc.nextInt();
		sc.nextLine();
		
		String q = "DELETE FROM article WHERE articleId=?";
		PreparedStatement ps = connect.prepareStatement(q);
		
		try {
			ps.setInt(1, delete);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		System.out.println("Successfully delete recipe!");
		System.out.println("Press enter to continue...");
		sc.nextLine();
		
	}
	
	public void insertArticle(ArrayList<Article> article, int adminId) throws ParseException {
		String title, author, description;
		Date datepost = null;
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		
		System.out.println("INSERT ARTICLES");
		System.out.println("==================");
		
		do {
			System.out.printf("Title: ");
			title = sc.nextLine();
		} while (title.length()<5);
		
		do {
			System.out.printf("Author : ");
			author = sc.nextLine();
		} while (author.length()<0);
		
		do {
			System.out.printf("Description :");
			description = sc.nextLine();
		} while (description.length()<5);
		
		String q = "INSERT INTO article (adminId, title, author, description) VALUES (?,?,?,?)";
		PreparedStatement ps = connect.prepareStatement(q);
		
		try {
			ps.setInt(1, adminId);
			ps.setString(2, title);
			ps.setString(3, author);
			ps.setString(4, description);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Successfully add article!");
		System.out.println("Press enter to Continue...");
		sc.nextLine();
		
	}
	
	public void handleRecipe(ArrayList<Recipe> recipes, int adminId) {
		int menu = 0;
		do {
			do {
				display.menuRecipes();
				System.out.print(">> ");
				menu = sc.nextInt();
				sc.nextLine();
			} while (menu < 1 || menu > 4);
			
			if(menu == 4) {
				return;
			}
			
			switch (menu) {
			case 1:
				con.RecipeMenu(recipes);
				break;
			case 2:
				insertRecipes(recipes, adminId);
				break;
			case 3:
				deleteRecipes(recipes);
				break;
			}
		} while (menu != 4);
	}
	
	public void insertRecipes(ArrayList <Recipe> recipe, int adminId) {
		System.out.println("INSERT RECIPES");
		System.out.println("==================");
		String title, method, ingredients, category;
		double calorie, sugar, fiber, protein, salt, fat, saturate, carbs;
		
		do {
			System.out.print("Title : ");
			title = sc.nextLine();
		} while (title.length() < 5);
		
		do {
			System.out.println("Method : ");
			method = sc.nextLine();
		} while (method.length() < 50);
		
		do {
			System.out.println("Ingredients : ");
			ingredients = sc.nextLine();
		} while (ingredients.length() < 20);
		
		do {
			System.out.println();
			display.menuCategory();
			System.out.print("Category : ");
			category = sc.nextLine();
		} while (!category.equals("main course") && !category.equals("appetizer") && !category.equals("dessert") && !category.equals("snack") && !category.equals("beverage"));
		
		do {
			System.out.print("Calorie : ");
			calorie = sc.nextDouble();
			sc.nextLine();
		} while (calorie < 0);
		
		do {
			System.out.print("Sugar : ");
			sugar = sc.nextDouble();
			sc.nextLine();
		} while (sugar < 0);
		
		do {
			System.out.print("Fiber : ");
			fiber = sc.nextDouble();
			sc.nextLine();
		} while (fiber < 0);
		
		do {
			System.out.print("Protein : ");
			protein = sc.nextDouble();
			sc.nextLine();
		} while (protein < 0);
		
		do {
			System.out.print("Salt : ");
			salt = sc.nextDouble();
			sc.nextLine();
		} while (salt < 0);
		
		do {
			System.out.print("Fat : ");
			fat = sc.nextDouble();
			sc.nextLine();
		} while (fat < 0);
		
		do {
			System.out.print("Saturate : ");
			saturate = sc.nextDouble();
			sc.nextLine();
		} while (saturate < 0);
		
		do {
			System.out.print("Carbs : ");
			carbs = sc.nextDouble();
			sc.nextLine();
		} while (carbs < 0);
		
		String q = "INSERT INTO recipes (adminId, title, method, ingredients, calorie, sugar, fiber, protein, salt, fat, saturate, carbs, category) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = connect.prepareStatement(q);
		
		try {
			ps.setInt(1, adminId);
			ps.setString(2, title);
			ps.setString(3, method);
			ps.setString(4, ingredients);
			ps.setDouble(5, calorie);
			ps.setDouble(6, sugar);
			ps.setDouble(7, fiber);
			ps.setDouble(8, protein);
			ps.setDouble(9, salt);
			ps.setDouble(10, fat);
			ps.setDouble(11, saturate);
			ps.setDouble(12, carbs);
			ps.setString(13, category);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		System.out.println("Successfully add recipe!");
		System.out.println("Press enter to Continue...");
		sc.nextLine();
	}
	
	public void deleteRecipes(ArrayList <Recipe> recipe) {
		display.recipeHeaderAll(recipe);
		int delete = 0;
		
		System.out.print("Choose index to delete : ");
		delete = sc.nextInt();
		sc.nextLine();
		
		String q = "DELETE FROM recipes WHERE recipeId=?";
		PreparedStatement ps = connect.prepareStatement(q);
		
		try {
			ps.setInt(1, delete);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		System.out.println("Successfully delete recipe!");
		System.out.println("Press enter to continue...");
		sc.nextLine();
	}
}

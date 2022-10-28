package main;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import admin.Admin;
import article.Article;
import db.Connect;
import recipe.Recipe;
import review.Review;
import user.User;

public class Controller {
	Scanner sc = new Scanner(System.in);
	Connect con = Connect.getConnection();
	
	Display display = new Display();
	
	public void initUser(ArrayList<User> users) {
		String q = "SELECt * FROM users";
		ResultSet rs = con.executeQuery(q);
		
		try {
			while(rs.next()) {
				String username,email,gender,password;
				int id,age;
				Double weight, height;
				
				id = rs.getInt("userId");
				username = rs.getString("userName");
				email = rs.getString("email");
				weight = rs.getDouble("weight");
				height = rs.getDouble("height");
				gender = rs.getString("gender");
				age = rs.getInt("age");
				password = rs.getString("password");
				
				User newU = new User(id, age, username, email, gender, password, weight, height);
				users.add(newU);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public void initAdmin(ArrayList<Admin> admins) {
		String q = "SELECT * FROM admin";
		ResultSet rs = con.executeQuery(q);
		
		try {
			while(rs.next()) {
				String name,email,password;
				int id;
				
				id = rs.getInt("adminId");
				name = rs.getString("adminName");
				email = rs.getString("email");
				password = rs.getString("password");
				
				Admin newA = new Admin(id, name, email, password);
				admins.add(newA);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void initReview(ArrayList<Review> reviews) {
		String q = "SELECT * FROM review";
		ResultSet rs = con.executeQuery(q);
		
		try {
			while(rs.next()) {
				String desc;
				Double rating;
				int id, userId;
				
				id = rs.getInt("reviewId");
				userId = rs.getInt("userId");
				rating = rs.getDouble("rating");
				desc = rs.getString("description");
				
				
				Review newR = new Review(id, userId, rating, desc);
				reviews.add(newR);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void initArticle (ArrayList<Article>Articles) {
		String q = "SELECT * FROM article";
		ResultSet rs = con.executeQuery(q);
		try {
			while(rs.next()){
				int articleId, adminId;
				String title , author, description;
				
				articleId = rs.getInt("articleId");
				adminId = rs.getInt("adminId");
				title = rs.getString("title");
				author = rs.getString("author");
				description = rs.getString("description");
				
				Article newArticle = new Article(articleId, adminId, title, author, description);
				Articles.add(newArticle);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	public void initRecipe (ArrayList<Recipe>Recipes) {
		String q = "SELECT * FROM recipes";
		ResultSet rs = con.executeQuery(q);
		try {
			while(rs.next()){
				int recipeId, adminId;
				String title , method, ingredients, category;
				double calorie, sugar, fiber, protein, salt, fat, saturate, carbs;
				
				recipeId = rs.getInt("recipeId");
				adminId = rs.getInt("adminId");
				title = rs.getString("title");
				method = rs.getString("method");
				ingredients = rs.getString("ingredients");
				calorie = rs.getDouble("calorie");
				sugar = rs.getDouble("sugar");
				fiber = rs.getDouble("fiber");
				protein = rs.getDouble("protein");
				salt = rs.getDouble("salt");
				fat = rs.getDouble("fat");
				saturate = rs.getDouble("saturate");
				carbs = rs.getDouble("carbs");
				category = rs.getString("category");
				
				Recipe newRecipe = new Recipe(recipeId, adminId, title, method, ingredients, category, sugar, fiber, protein, salt, fat, saturate, carbs, calorie);
				Recipes.add(newRecipe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	public void handleUser(ArrayList<User> users, ArrayList<Review> reviews, ArrayList<Recipe> recipes, ArrayList<Article> articles) {
		display.header();
		
		String menuUser;
		
		do {
			System.out.printf("Please choose method [Login | Register]: ");
			menuUser = sc.nextLine();
		} while (!menuUser.equals("Login") && !menuUser.equals("Register"));
		
		if(menuUser.equals("Login")) {
			String email, password;
			int isFound = 0;
			int idx = 0;
			String username = null;
			
			do {
				System.out.println("");
				System.out.printf("Email: ");
				email = sc.nextLine();
				
				System.out.printf("Password: ");
				password = sc.nextLine();
				
				int i=0;
				for (User user : users) {
					if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
						isFound = 1;
						idx = i;
						username = user.getUsername();
						break;
					}
					i++;
				}
				if(isFound == 0 ) {
					System.out.println("Credentials Invalid!");
				}
			} while (isFound == 0);
			
			handleMainMenuUser(idx, users, username, reviews, articles, recipes);
			
			
		}
		else {
			String username, email, gender, password;
			int age;
			Double weight, height;
			
			System.out.println("Please fill all the credentials");
			
			do {
				System.out.printf("Username: ");
				username = sc.nextLine();
			} while (username.length()<5);
			
			do {
				System.out.printf("Email: ");
				email = sc.nextLine();
			} while (!email.endsWith(".com") && !email.contains("@"));
			
			do {
				System.out.printf("Password: ");
				password = sc.nextLine();
			} while (password.length()<5);
			
			do {
				System.out.printf("Gender: ");
				gender = sc.nextLine();
			} while (!gender.equals("Female") && !gender.equals("Male"));
			
			do {
				System.out.printf("Age: ");
				age = sc.nextInt();
			} while (age < 12);
			
			System.out.printf("Weight: ");
			weight = sc.nextDouble();
			
			System.out.printf("Height: ");
			height = sc.nextDouble();
			
			String q = "INSERT INTO users (userName, email, weight, height, gender, age, password)VALUES(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			
			try {
				ps.setString(1, username);
				ps.setString(2, email);
				ps.setDouble(3, weight);
				ps.setDouble(4, height);
				ps.setString(5, gender);
				ps.setInt(6, age);
				ps.setString(7, password);
				
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			int isFound = 0;
			int idx = 0;
			int i=0;
			
			for (User user : users) {
				if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
					isFound = 1;
					idx = i;
					break;
				}
				i++;
			}
			
			handleMainMenuUser(idx, users, username, reviews, articles, recipes);
			
		}
	}
	
	public void handleMainMenuUser(int idx, ArrayList<User> users, String username, ArrayList<Review> reviews, ArrayList<Article> articles, ArrayList<Recipe> recipes) {
		int menu = 0;
		
		do {
			display.menuUser(username, users);
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
				BMI(users, idx);
				break;
			case 2:
				RecipeMenu(recipes);
				break;
			case 3:
				ArticleMenu(menu, users, articles);
				break;
			case 4:
				reviewMenu(idx,users,reviews);
				break;
			
			}
			
		} while (menu!=5);
		
	}
	
	public void RecipeMenu(ArrayList<Recipe> recipes) {
		
		int menu = 0;
	
		do {
			
			System.out.println();
			System.out.println("Select Menu:");
			System.out.println("1. View All Recipe");
			System.out.println("2. View by Category");
			System.out.println("3. Back");
		
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
			} while (menu < 0 || menu > 3);
			
			if(menu == 3) {
				return;
			}
		
			switch (menu) {
			case 1:
				viewAllRecipe(recipes);
				break;

			case 2:
				viewCategory(recipes);
				break;
			}
		
			
		} while (menu != 3);
		
		
	}

	private void viewCategory(ArrayList<Recipe> recipes) {
		String category;
		int menu = 0;
		int back = -1;
		do {
			
			display.menuCategory();
			
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine(); 
				back = 1;
			} while (menu < 0 || menu > 5);
			
			if(menu == 6) {
				return;
			}
			
			switch (menu) {
			case 1:
				category = "appetizer";
				DetailRecipe(recipes, category);
				break;

			case 2:
				category = "main course";
				DetailRecipe(recipes, category);
				break;
				
			case 3:
				category = "dessert";
				DetailRecipe(recipes, category);
				break;
				
			case 4:
				category = "snack";
				DetailRecipe(recipes, category);
				break;
				
			case 5:
				category = "beverage";
				DetailRecipe(recipes, category);
				break;
			}
		} while (menu == 6);
		
	}

	public void DetailRecipe(ArrayList<Recipe> recipes, String category) {
		
		int back = -1;
		do {
			int menu = 0;
			display.recipeHeader(recipes, category);
			System.out.println("choose 0 to back to menu");
			System.out.println();
		
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
				back = 1;
			} while (menu < 0 || menu > recipes.size());
			
			if(menu == 0) {
				return;
			}
		
			display.viewRecipes(recipes,menu-1);
			
			System.out.println("Press enter to back...");
			sc.nextLine();
			
		} while (back != -1);
		
		
	
	}
	public void viewAllRecipe(ArrayList<Recipe> recipes) {
		
		int back = -1;
		do {
			int menu = 0;
			display.recipeHeaderAll(recipes);
			System.out.println("choose 0 to back to menu");
			System.out.println();
		
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
				back = 1;
			} while (menu < 0 || menu > recipes.size());
			
			if(menu == 0) {
				return;
			}
		
			display.viewRecipes(recipes,menu-1);
			
			System.out.println("Press enter to back...");
			sc.nextLine();
			
		} while (back != -1);
		
		
	
	}
	
	public void reviewMenu(int idx, ArrayList<User> users, ArrayList<Review> reviews) {
		int menu = 0;
		do {
			System.out.println("Select Menu:");
			System.out.println("1. View All Review");
			System.out.println("2. Add Review");
			System.out.println("3. Back");
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
			} while (menu < 1 || menu > 3);
			
			if (menu == 3) {
				return;
			}
			
			switch (menu) {
			case 1:
				display.viewAllReview(reviews);
				break;

			case 2:
				insertReview(idx, users);
				break;
			}
		} while (menu!=3);
		
	}
	
	public void insertReview(int idx, ArrayList<User> users) {
		System.out.println("INSERT REVIEW");
		System.out.println("==================");
		String desc;
		Double rating;
		
		do {
			System.out.printf("Rating: ");
			rating = sc.nextDouble();
			sc.nextLine();
		} while (rating < 1.0 || rating > 5.0);
		
	
		do {
			System.out.printf("Description: ");
			desc = sc.nextLine();
		} while (desc.length() < 0);
		
		String q = "INSERT INTO review (userId, rating, description) VALUES(?,?,?)";
		PreparedStatement ps = con.prepareStatement(q);
		
		try {
			ps.setInt(1, users.get(idx).getId());
			ps.setDouble(2, rating);
			ps.setString(3, desc);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Successfully Added!");
		System.out.println("Press Enter to Continue...");
		sc.nextLine();
	}
	
	public void BMI(ArrayList<User> users, int idx) {
		display.BMICategory();
		System.out.printf("Result BMI Test : " + "%.2f\n",users.get(idx).getBmiTest());
		
		if(users.get(idx).getBmiTest()<18.5) {
			System.out.println("Category : Kekurangan Berat");
		}
		else if(users.get(idx).getBmiTest()>18.5 || users.get(idx).getBmiTest()<22.9) {
			System.out.println("Category : Normal");
		}
		else if(users.get(idx).getBmiTest()>23 || users.get(idx).getBmiTest()<29.9) {
			System.out.println("Category : Kelebihan Berat");
		}
		else if(users.get(idx).getBmiTest()>30) {
			System.out.println("Category : Obesitas");
		}
	}
	
	public void ArticleMenu(int idx, ArrayList<User> users, ArrayList<Article> articles) {
		
		int back = -1;
		do {
			int menu = 0;
			display.articleHeader(articles);
			System.out.println("choose 0 to back to menu");
			System.out.println();
		
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
				back = 1;
			} while (menu < 0 || menu > articles.size());
			
			if(menu == 0) {
				return;
			}
		
			display.viewArticle(articles,menu-1);
			
			System.out.println("Press enter to back...");
			sc.nextLine();
			
		} while (back != -1);
		
	} 
}

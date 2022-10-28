package main;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Scanner;

import admin.Admin;
import article.Article;
import recipe.Recipe;
import review.Review;
import user.User;

public class Main {
	Scanner sc = new Scanner(System.in);
	
	Display display = new Display();
	Controller con = new Controller();
	ControllerAdmin conAdm = new ControllerAdmin();
	
	ArrayList<User> users = new ArrayList<>();
	ArrayList<Admin> admins = new ArrayList<>();
	ArrayList<Review> reviews = new ArrayList<>();
	ArrayList<Recipe> recipes = new ArrayList<>();
	ArrayList<Article> articles = new ArrayList<>();
	
	public Main() throws ParseException {
		
		con.initUser(users);
		con.initAdmin(admins);
		con.initReview(reviews);
		con.initArticle(articles);
		con.initRecipe(recipes);
		int menu = 0;
		
		do {
			
			display.mainMenu();
			
			do {
				System.out.printf(">> ");
				menu = sc.nextInt();
				sc.nextLine();
			} while (menu < 1 || menu > 3);
			
			if(menu == 3 ) {
				break;
			}
			
			switch (menu) {
			case 1:
				con.handleUser(users, reviews, recipes, articles);
				break;

			case 2:
				conAdm.handleAdmin(admins, users, articles, recipes, reviews);
				break;
			}
		}while(menu!=3);
		
	}

	public static void main(String[] args) throws ParseException {
		new Main();
	}

}

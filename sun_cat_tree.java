import java.util.HashMap;
import java.util.ArrayList;
import java.util.Scanner;

public class CommunityGardensForAll {
	
	// HashMap to store garden information with the garden's name as the key
	private static HashMap<String, Garden> gardens = new HashMap<String, Garden>();
	
	public static void main(String[] args) {
		
		// Create menus to navigate user
		System.out.println("Welcome to Community Gardens for All! \nPlease enter a number to begin:");
		System.out.println("1) Add a Garden \n2) View Garden Information \n3) Edit Garden Information \n4) View Garden Volunteers \n5) Search for Gardens \n6) Exit");
		
		// Scan input from user to determine next menu choice
		Scanner scanner = new Scanner(System.in);
		int menuOption = scanner.nextInt();
		
		// Call method to navigate menu
		navigateMenu(menuOption);
		
	}
	
	// Method used to navigate menu based on user choice
	public static void navigateMenu(int menuOption) {
		
		switch(menuOption) {
			case 1:
				// Add a Garden
				addGarden();
				break;
			case 2:
				// View Garden Information
				viewGardenInfo();
				break;
			case 3:
				// Edit Garden Information
				editGardenInfo();
				break;
			case 4:
				// View Garden Volunteers
				viewGardenVolunteers();
				break;
			case 5:
				// Search for Gardens
				searchForGardens();
				break;
			case 6:
				// Exit
				System.exit(0);
				break;
			default:
				System.out.println("Invalid input. Please enter a valid number:");
				Scanner scanner = new Scanner(System.in);
				int menuOption2 = scanner.nextInt();
				navigateMenu(menuOption2);
		}
		
	}
	
	// Method used to add a garden to HashMap
	public static void addGarden() {
		
		System.out.println("Please enter the garden's name:");
		Scanner scanner = new Scanner(System.in);
		String gardenName = scanner.nextLine();
		
		// Check if garden name is already in use
		if (gardens.containsKey(gardenName)) {
			System.out.println("Garden name already in use, please enter a different garden name:");
			String gardenName2 = scanner.nextLine();
			addGarden(gardenName2);
			navigateMenu(2); // Return to View Garden Information menu
		} else {
			Garden garden = new Garden(gardenName);
			gardens.put(gardenName, garden);
			System.out.println("Garden added successfully!");
			navigateMenu(2); // Return to View Garden Information menu
		}
		
	}
	
	// Method used to view garden information
	public static void viewGardenInfo() {
		
		System.out.println("Please enter the garden's name:");
		Scanner scanner = new Scanner(System.in);
		String gardenName = scanner.nextLine();
		
		// Check if garden name is valid
		if (gardens.containsKey(gardenName)) {
			Garden garden = gardens.get(gardenName);
			System.out.println(garden);
			returnToMenu();
		} else {
			System.out.println("Garden name not found, please enter a different garden name:");
			String gardenName2 = scanner.nextLine();
			viewGardenInfo(gardenName2);
		}
		
	}
	
	// Method used to edit garden information
	public static void editGardenInfo() {
		
		System.out.println("Please enter the garden's name:");
		Scanner scanner = new Scanner(System.in);
		String gardenName = scanner.nextLine();
		
		// Check if garden name is valid
		if (gardens.containsKey(gardenName)) {
			Garden garden = gardens.get(gardenName);
			
			// Ask user which information they would like to edit
			System.out.println("What information would you like to edit?");
			System.out.println("1) Garden Name \n2) Garden Location \n3) Garden Manager \n4) Number of Beds \n5) Number of Volunteers \n6) Return to Menu");
			int editOption = scanner.nextInt();
			
			switch(editOption) {
				case 1:
					// Change Garden Name
					System.out.println("Please enter the new garden name:");
					String newName = scanner.nextLine();
					garden.setName(newName);
					System.out.println("Garden name changed successfully!");
					break;
				case 2:
					// Change Garden Location
					System.out.println("Please enter the new garden location:");
					String newLocation = scanner.nextLine();
					garden.setLocation(newLocation);
					System.out.println("Garden location changed successfully!");
					break;
				case 3:
					// Change Garden Manager
					System.out.println("Please enter the new garden manager:");
					String newManager = scanner.nextLine();
					garden.setManager(newManager);
					System.out.println("Garden manager changed successfully!");
					break;
				case 4:
					// Change Number of Beds
					System.out.println("Please enter the new number of beds:");
					int newBeds = scanner.nextInt();
					garden.setNumOfBeds(newBeds);
					System.out.println("Number of beds changed successfully!");
					break;
				case 5:
					// Change Number of Volunteers
					System.out.println("Please enter the new number of volunteers:");
					int newVolunteers = scanner.nextInt();
					garden.setNumOfVolunteers(newVolunteers);
					System.out.println("Number of volunteers changed successfully!");
					break;
				case 6:
					// Return to Menu
					returnToMenu();
					break;
				default:
					System.out.println("Invalid input. Please enter a valid number:");
					int editOption2 = scanner.nextInt();
					editGardenInfo(editOption2);
			}
			
			returnToMenu();
		
		} else {
			System.out.println("Garden name not found, please enter a different garden name:");
			String gardenName2 = scanner.nextLine();
			editGardenInfo(gardenName2);
		}
		
	}
	
	// Method used to view garden volunteers
	public static void viewGardenVolunteers() {
		
		System.out.println("Please enter the garden's name:");
		Scanner scanner = new Scanner(System.in);
		String gardenName = scanner.nextLine();
		
		// Check if garden name is valid
		if (gardens.containsKey(gardenName)) {
			Garden garden = gardens.get(gardenName);
			ArrayList<String> volunteers = garden.getVolunteers();
			
			System.out.println("Volunteers for " + gardenName + ":");
			for (String volunteer : volunteers) {
				System.out.println(volunteer);
			}
			
			returnToMenu();
			
		} else {
			System.out.println("Garden name not found, please enter a different garden name:");
			String gardenName2 = scanner.nextLine();
			viewGardenVolunteers(gardenName2);
		}
		
	}
	
	// Method used to search for gardens
	public static void searchForGardens() {
		
		System.out.println("Please enter search term:");
		Scanner scanner = new Scanner(System.in);
		String searchTerm = scanner.nextLine();
		
		// Check if search term matches any garden names or locations
		for (String gardenName : gardens.keySet()) {
			Garden garden = gardens.get(gardenName);
			
			if (gardenName.contains(searchTerm) || garden.getLocation().contains(searchTerm)) {
				System.out.println("Found: " + garden);
				returnToMenu();
			}
			
		}
		
		System.out.println("No gardens found with that search term. Please enter a different search term:");
		String searchTerm2 = scanner.nextLine();
		searchForGardens(searchTerm2);
		
	}
	
	// Method used to return to main menu
	public static void returnToMenu() {
		
		System.out.println("Return to Menu (Y/N):");
		Scanner scanner = new Scanner(System.in);
		String menuChoice = scanner.nextLine();
		
		if (menuChoice.equalsIgnoreCase("y")) {
			navigateMenu(1); // Return to main menu
		} else {
			System.exit(0);
		}
		
	}
	
}
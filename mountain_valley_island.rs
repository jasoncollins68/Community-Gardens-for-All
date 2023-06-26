//main mod
mod garden {
    use std::collections::HashMap;

    // structure used to store information related to a single garden
    #[derive(Debug)]
    pub struct Garden {
        garden_name: String,
        coord_lat: f64,
        coord_long: f64,
        relationships: HashMap<String, String>,
    }

    impl Garden {
        pub fn new(name: &str, coord_lat: f64, coord_long: f64) -> Garden {
            Garden {
                garden_name: name.into(),
                coord_lat,
                coord_long,
                relationships: HashMap::new(),
            }
        }
    }

    pub fn add_relationship(garden: &mut Garden, key: &str, value: &str) {
        garden.relationships.insert(key.into(), value.into());
    }

    pub fn get_relationships(garden: &Garden) -> &HashMap<String, String> {
        &garden.relationships
    }

    // Create and store an instance of the Garden structure
    pub fn create_garden(name: &str, coord_lat: f64, coord_long: f64) -> Garden {
        let mut g = Garden::new(name, coord_lat, coord_long);
        add_relationship(
            &mut g,
            "Community",
            "To promote healthy living and increase access to food and outdoor spaces in rural and urban communities.",
        );
        add_relationship(
            &mut g,
            "High Quality",
            "Gardens should be designed and managed in a way that promotes a high quality of life for all users.",
        );
        add_relationship(
            &mut g,
            "Inclusion",
            "Gardens should be located in accessible places that promote inclusion.",
        );
        add_relationship(
            &mut g,
            "Education",
            "Gardens should be used to teach about sustainable gardening practices while educating youth about nutrition and the importance of healthy food choices.",
        );
        add_relationship(
            &mut g,
            "Support",
            "Gardens should be supported by local communities to ensure their sustainability.",
        );
        g
    }

    // Print the relationships for the Garden
    pub fn print_relationships(garden: &Garden) {
        let relationships = get_relationships(&garden);
        for (key, value) in relationships {
            println!("{}: {}", key, value);
        }
    }
}

fn main() {
    let garden_name = "Community Garden for All";
    let coord_lat = 42.23;
    let coord_long = -71.15;

    // Create the garden
    let garden = garden::create_garden(garden_name, coord_lat, coord_long);

    // Print relationships
    println!("Garden: {:?}", garden);
    println!("Relationships:");
    garden::print_relationships(&garden);
}
const communityGardens = [];

// Classes
class CommunityGarden {
	constructor(name, location, size, resources) {
		this.name = name;
		this.location = location;
		this.size = size;
		this.resources = resources;
	}
}

// Functions
function createGarden(name, location, size, resources) {
	const newGarden = new CommunityGarden(name, location, size, resources);
	communityGardens.push(newGarden);
}

// User Interface Logic 
function init() {
	$('#submit-garden').click(function(event) {
		event.preventDefault();
		const name = $('#name').val(); 
		const location = $('#location').val();
		const size = $('#size').val();
		const resources = $('#resources').val();
		createGarden(name, location, size, resources);
		$('#name').val(''); 
		$('#location').val('');
		$('#size').val('');
		$('#resources').val('');
		$('#nameLabel').addClass('active');
		$('#locationLabel').addClass('active');
		$('#sizeLabel').addClass('active');
		$('#resourcesLabel').addClass('active');
	})
}

// Event Listeners 
$(document).ready(function() {
	init();
});


// Gardens 
//1
let springGarden = new CommunityGarden("Spring Garden", "Little Italy", "50,000 sq feet", ["Fruit Trees", "Perennial Plants", "Composting Containers"]);
communityGardens.push(springGarden);

//2
let summerGarden = new CommunityGarden("Summer Garden", "Midtown", "50,000 sq feet", ["Perennial Plants", "Herbs", "Composting Containers"]);
communityGardens.push(summerGarden);

//3
let autumnGarden = new CommunityGarden("Autumn Garden", "Downtown", "50,000 sq feet", ["Fruit Trees", "Herbs", "Composting Containers"]);
communityGardens.push(autumnGarden);

//4
let winterGarden = new CommunityGarden("Winter Garden", "Harlem", "50,000 sq feet", ["Fruit Trees", "Perennial Plants", "Composting Containers"]);
communityGardens.push(winterGarden);

// Garden Creator 
function createGardens() {
	for (let i = 0; i < communityGardens.length; i++) {
  	let garden = communityGardens[i];
    $('#gardens').append(`
      <div class="garden">
        <h3>${garden.name}</h3>
        <p>Location: ${garden.location}</p>
        <p>Size: ${garden.size}</p>
        <p>Resources: ${garden.resources.join(', ')}</p>
      </div>
    `);
  }
}

createGardens();
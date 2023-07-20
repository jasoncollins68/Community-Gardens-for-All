// FILE 1: communityGardens.ts

//INTERFACES

interface Site{
    name: string;
    location: string;
    size: number;
    fundingSources: string[];
}

interface Garden{
    site: Site;
    caretakers: string[];
    availability: string;
    features: string[];
}

// CLASSES 

class CommunityGarden{
    name: string;
    gardens: Garden[];
    donations: number;
    constructor(name: string){
        this.name = name;
        this.gardens = [];
        this.donations = 0;
    }
    addGarden(garden: Garden){
        this.gardens.push(garden);
    }
    calculateDonations(){
        this.donations = this.gardens.reduce((acc, garden) => acc + this.calculateGardenDonations(garden), 0);
    }
    calculateGardenDonations(garden: Garden): number{
        let total = 0;
        total += garden.site.fundingSources.reduce((acc, source) => acc + this.calculateSourceDonations(source), 0);
        total += garden.features.reduce((acc, feature) => acc + this.calculateFeatureDonations(feature), 0);
        return total;
    }
    calculateSourceDonations(source: string): number{
        let donation = 0;
        switch(source){
            case "government":
                donation += 2000;
                break;
            case "corporate":
                donation += 5000;
                break;
            case "individual":
                donation += 1000;
                break;
        }
        return donation;
    }
    calculateFeatureDonations(feature: string): number{
        let donation = 0;
        switch(feature){
            case "playground":
                donation += 10000;
                break;
            case "water fountain":
                donation += 5000;
                break;
            case "shade trees":
                donation += 3000;
                break;
            case "raised beds":
                donation += 2000;
                break;
        }
        return donation;
    }
}

// FUNCTIONS

function createGarden (name: string, location: string, size: number, fundingSources: string[], caretakers: string[], availability: string, features: string[]): Garden {
    const site: Site = {
        name,
        location,
        size,
        fundingSources
    };
    const garden: Garden = {
        site,
        caretakers,
        availability,
        features
    };
    return garden;
}

// MAIN

const communityGardens = new CommunityGarden("Community Gardens for All");

const garden1 = createGarden(
    "Garden 1", 
    "123 Main Street",
    10,
    ["government", "corporate", "individual"],
    ["John Smith", "Jane Doe"],
    "open every day",
    ["playground", "water fountain", "shade trees"]
);

const garden2 = createGarden(
    "Garden 2",
    "456 South Street",
    5,
    ["corporate", "individual"],
    ["John Smith"],
    "open weekends",
    ["raised beds"]
);

communityGardens.addGarden(garden1);
communityGardens.addGarden(garden2);

communityGardens.calculateDonations();

console.log(`Total donations for ${communityGardens.name}: $${communityGardens.donations}`)
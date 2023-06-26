// FILE START

//importing modules
import { CommunityGarden } from './community-garden';
import { GardenOwner } from './garden-owner';

//declaring constants
const GARDEN_SIZE = 40;
const MAX_GARDENERS = 10;

//main class
class CommunityGardenForAll {

	//class instances
	public gardens: CommunityGarden[];
	public owners: GardenOwner[];

	//constructor
	constructor(){
		this.gardens = [];
		this.owners = [];
	}

	//function for adding a garden
	public addGarden(name: string): boolean{
		if(this.getGardenByName(name) === undefined){
			let garden = new CommunityGarden(name, GARDEN_SIZE, MAX_GARDENERS);
			this.gardens.push(garden);
			return true;
		}
		return false;
	}

	//function for getting a garden
	public getGardenByName(name: string): CommunityGarden | undefined {
		let garden = this.gardens.find(g => g.name === name);
		return garden;
	}

	//function for adding an owner
	public addOwner(name: string, email: string): boolean{
		let owner: GardenOwner | undefined = this.owners.find(o => o.email === email);
		if(owner === undefined){
			let owner = new GardenOwner(name, email);
			this.owners.push(owner);
			return true;
		}
		return false;
	}

	//function for getting an owner
	public getOwnerByEmail(email: string): GardenOwner | undefined {
		let owner = this.owners.find(o => o.email === email);
		return owner;
	}

	//function for registering a garden owner to a garden
	public registerOwnerToGarden(ownerEmail: string, gardenName: string): boolean{
		let owner = this.getOwnerByEmail(ownerEmail);
		let garden = this.getGardenByName(gardenName);
		if(owner && garden && !garden.isGardener(ownerEmail) && garden.numGardeners < MAX_GARDENERS){
			garden.addGardener(owner);
			return true;
		}
		return false;
	}
}

//export class
export { CommunityGardenForAll };

// FILE END
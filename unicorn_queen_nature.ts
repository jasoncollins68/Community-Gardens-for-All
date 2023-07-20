import { CommunityGardens } from "./communityGardens";

class CommunityGardensForAll {
  private gardens: CommunityGardens;

  constructor(gardens: CommunityGardens) {
    this.gardens = gardens;
  }

  // Create a method to add a community garden
  public addGarden(name: string, location: string): void {
    this.gardens.addGarden(name, location);
  }

  // Create a method to remove a community garden
  public removeGarden(name: string): void {
    this.gardens.removeGarden(name);
  }

  // Create a method to list all community gardens
  public listGardens(): void {
    for (let entry of this.gardens.getGardens()) {
      console.log(entry);
    }
  }
}

let gardenList = new CommunityGardens();
let communityGardensForAll = new CommunityGardensForAll(gardenList);

communityGardensForAll.addGarden("Gardens of Eden", "123 Main Street");
communityGardensForAll.addGarden("Heavenly Gardens", "456 Elm Street");
communityGardensForAll.listGardens();
communityGardensForAll.removeGarden("Heavenly Gardens");
communityGardensForAll.listGardens();
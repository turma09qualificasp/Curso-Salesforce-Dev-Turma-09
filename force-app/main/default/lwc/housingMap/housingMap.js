import { LightningElement, wire, api } from "lwc";
import getHouses from "@salesforce/apex/HouseService.getRecords";
export default class HousingMap extends LightningElement {
    mapMarkers;
    error;
    @api recordId; 

    @wire(getHouses, {houseId: 'a00ak00000GK3VCAA1'})
    wiredHouses({ error, data }) {
        if (data) {
         // Use JavaScript Map function to transform the Apex method response wired to the component into the format required by lightning-map
            this.mapMarkers = data.map((element) => {
                return {
                    location: {
                        Street: element.Address__c,
                        City: element.City__c,
                        State: element.State__c
                    },
                    title: element.Name
                };
            });
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.mapMarkers = undefined;
        }
    }
}


import { LightningElement, api } from 'lwc';
import getPropertys from '@salesforce/apex/TotalValuePropertySalesController.getPropertysByMunicipio';


const COLUMNS = [
    { label: 'Nome', fieldName: 'Name', type: 'text' },
    { label: 'Area Total', fieldName: 'Total_Area__c', type: 'text' },
    { label: 'Cep', fieldName: 'Cep__c', type: 'text' },
    {
        label: 'Price',
        fieldName: 'Price__c',
        type: 'currency',
        typeAttributes: { currencyCode: 'BRL', step: '0.001' },
    },
];

export default class totalValuePropertySales extends LightningElement {
    columns = COLUMNS;
    @api recordId; // ID do município
    data;
    error;
    amountSales;

    renderedCallback() {
        this.getProperty();
    }

    getProperty() {
        getPropertys({ idMunicipio: this.recordId })
            .then(result => {
                this.data = JSON.parse(result);
                this.error = undefined;
            })
            .catch(error => {
                console.error('Apex error:', error);
                this.error = error;
                this.data = undefined;
            });
    }

    getTotalSelled(event){
        const selectedRows = event.detail.selectedRows;
        this.amountSales = 0;
        selectedRows.forEach(element => {
            this.amountSales += element.Price__c;
        });
    }
}

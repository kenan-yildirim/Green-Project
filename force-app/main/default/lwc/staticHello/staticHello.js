import { LightningElement } from 'lwc';

export default class StaticHello extends LightningElement {
    name = "Kenny";

    changeHandler(event){
        this.name = event.target.value;
    };
}
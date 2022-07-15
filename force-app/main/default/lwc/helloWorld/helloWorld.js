import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'World';
  changeHandler() {
    alert("Test");
  }
}

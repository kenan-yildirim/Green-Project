import { LightningElement, track } from 'lwc';

export default class Todo extends LightningElement {

    TodoId = 0;
    todos = [];

   
    taskDetails;

    handleToDoChanges(event){
        this.taskDetails = event.target.value;
   
    }
    handleToDo(){
      this.TodoId = this.TodoId + 1;
        this.todos = [
            ...this.todos,
            {
                id: this.TodoId,
                taskDetails: this.taskDetails,
            }
        ];
    }
}
import { LightningElement, track } from 'lwc';

import GETOBJECTS from '@salesforce/apex/RetrieveQueryData.getAllObject';
import GETFIELDS from '@salesforce/apex/RetrieveQueryData.getAllfields';
import GETDATA from '@salesforce/apex/RetrieveQueryData.getsObjectDataList';

export default class QueryBuilder extends LightningElement {


    @track objsList = [];
    @track selectedObjName='';
    @track fieldList = [];
    @track selectedFieldName='';
    @track selectedFieldValues=[];
    
    @track limit;
    @track queryString = '';
    @track tableData = [];
    
    //To get all objects list from salesforce org
    connectedCallback(){
        console.log('Connected call back method called');
        GETOBJECTS()
        .then(result=>{
            // console.log(result);
            var returnedlist=[];
                for(var key in result){
                       // returnedlist.push({key: key, value: result[key]});
                       returnedlist.push(result[key]);
                    }
                    returnedlist.sort();
                //console.log(returnedlist);
            this.objsList = returnedlist;
        })
        .catch(error=>{
           // console.log(error);
        })
    }
    
    //passing seleccted object- retrieve all its fields set
    handleGetSelectedObjValue(event){
        this.selectedObjName = event.target.value;
        console.log('Selected object value is--'+this.selectedObjName);
        
        //if selected object value change- make selected fields to blank
        this.selectedFieldName='';
        this.selectedFieldValues=[];
    
        GETFIELDS({objName: this.selectedObjName})
        .then(result=>{
            //console.log(result);
            var returnedfieldlist=[];
                for(var key in result){
                        returnedfieldlist.push({label: key, value: result[key]});
                    }
              this.fieldList = returnedfieldlist;
        })
        .catch(error=>{
             // console.log(error);
        })
    }
    
    //create multiple select picklist- push all selected values into an array
    handlefieldChange(event){
        this.selectedFieldName = event.detail.value;
        //console.log('Selected object value is--'+this.selectedFieldName);
    
        if(!this.selectedFieldValues.includes(this.selectedFieldName))
          this.selectedFieldValues.push(this.selectedFieldName);
    }
    //user can remove selected field- with splice at specific index
    handlefieldRemove(event)
      {
        this.selectedFieldName='';
        const valueRemoved=event.target.name;
        this.selectedFieldValues.splice(this.selectedFieldValues.indexOf(valueRemoved),1);
    }
    
    //to get ther parameters required for basic query
    handleLimitValue(event){
        this.limit = event.detail.value;
    }


    // On run query button click::: get data from apex server call
    handleRunQueryClick(){
        if(this.selectedObjName){
            if(this.selectedFieldValues){
                
                this.queryString ='SELECT '+this.selectedFieldValues+' FROM '+this.selectedObjName;
                if(this.limit){
                    this.queryString += ' LIMIT '+this.limit;
                }
            }            
        }
        console.log('Query Text in Run query:::'+this.queryString);

        GETDATA({ queryString: this.queryString})
        .then(result=>{
            console.log(result);
            this.tableData = result;
        })
        .catch(error=>{
           console.log(error);
        })
    }
}
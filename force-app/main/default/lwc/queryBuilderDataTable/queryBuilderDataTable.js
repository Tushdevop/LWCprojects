import { LightningElement, track, api, wire} from 'lwc';

export default class QueryBuilderDataTable extends LightningElement {

    childTableData = [];

    @api set queryData(data){
        if(data){
            this.childTableData = data;
        }
    }

    get queryData(){
        return this.childTableData;
    }
}
    
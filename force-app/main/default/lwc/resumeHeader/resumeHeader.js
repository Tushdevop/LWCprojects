import { LightningElement, api } from 'lwc';

export default class ResumeHeader extends LightningElement {

    @api socialLinks
    @api profileImage
    @api userDetails

    get phoneLink(){
        return `tel:${this.userDetails.PHONE}`
    }
    get emailLink() {
        return `mailto:${this.userDetails.EMAIL}`
    }
}
import { LightningElement } from 'lwc';
import * as RESUME_DATA from './resumeContainerData'

export default class ResumeContainer extends LightningElement {

    PROFILE_IMAGE = RESUME_DATA.PROFILE_IMAGE
    SOCIAL_LINKS = RESUME_DATA.SOCIAL_LINKS
    RESUME_DATA = RESUME_DATA
}
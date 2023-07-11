import SOCIAL from '@salesforce/resourceUrl/SOCIAL'
import PROFILE from '@salesforce/resourceUrl/PROFILE';

export const PROFILE_IMAGE = PROFILE;

export const SOCIAL_LINKS = [ 
    {
        type:'twitter',
        label:"twitter/JohnSmith",
        link:"https://twitter.com/link",
        icon:SOCIAL+'/SOCIAL/twitter.svg'
    },
    {
        type: "facebook",
        label: "facebook/JohnSmith",
        link: "https://facebook.com/link",
        icon: SOCIAL + '/SOCIAL/facebook.svg'
    },
    {
        type: "github",
        label: "github/JohnSmith",
        link: "https://github.com/link",
        icon: SOCIAL + '/SOCIAL/github.svg'
    },
    {
        type: "linkedin",
        label: "linkedin/JohnSmith",
        link: "https://www.linkedin.com/in/link",
        icon: SOCIAL + '/SOCIAL/linkedin.svg'
    },
    {
        type: "trailhead",
        label: "trailhead/JohnSmith",
        link: "https://trailblazer.me/id/link",
        icon: SOCIAL + '/SOCIAL/trailhead.svg'
    }
]
export const USER_DETAILS={
    NAME:'John Smith',
    ROLE:'Salesforce Developer',
    EMAIL:'jsmith@salesforce.com',
    PHONE:'+91 12345 67890'
}
using {
    cuid,
    managed
} from '@sap/cds/common';

namespace pophire.talents;

entity Companies : cuid, managed {
    name     : String(127);
    descr    : String(1023);
    phone    : String(255);
    fax      : String(255);
    homepage : String(255);
    address  : String(255);
    note     : String;
    contacts : Association to many Employees
                   on contacts.company = $self;
}

entity Employees : cuid, managed {
    firstName : String;
    lastName  : String;
    email     : String;
    phone     : String;
    birthdate : Date;
    address   : String;
    notes     : String;
    company   : Association to Companies;
}

entity WorkExperiences : cuid {
    dateFrom : Date;
    dateTo   : Date;
    employee : Association to Candidates;
    company  : Association to Companies;
    position : String;
    notes    : String;
}

entity CommunicationRecords : cuid, managed {
    candidate : Association to Candidates;
    content   : LargeString;
}

@odata.draft.enabled
@odata.draft.bypass
entity Candidates : Employees {
    workExperiences      : Composition of many WorkExperiences
                               on workExperiences.employee = $self;
    communicationRecords : Composition of many CommunicationRecords
                               on communicationRecords.candidate = $self;
}

extend Employees with {
    printName : String = concat(
        lastName, ' ', firstName
    )
}

@odata.draft.enabled
@odata.draft.bypass
entity JobOrders : cuid, managed {
    title       : String;
    description : String;
    company     : Association to one Companies;
    candidates  : Composition of many JobApplications
                      on candidates.jobOrder = $self;
    status      : String;
    notes       : String;
}

@odata.draft.bypass
entity JobApplications : cuid, managed {
    candidate : Association to one Candidates;
    jobOrder  : Association to one JobOrders;
    status    : String;
    notes     : String;
}

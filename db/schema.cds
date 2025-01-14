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
    company  : Association to Companies;
    position : String;
    notes    : String;
}

entity CommunicationRecords : cuid, managed {
    candidate : Association to Candidates;
    content   : LargeString;
}

entity Candidates : Employees {
    communicationRecords : Association to many CommunicationRecords
                               on communicationRecords.candidate = $self;
}

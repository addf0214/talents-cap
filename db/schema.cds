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
    name    : String;
    email   : String;
    phone   : String;
    address : String;
    notes   : String;
    role    : String;
    company : Association to Companies;
}

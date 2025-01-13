using { cuid, managed } from '@sap/cds/common';
namespace pophire.talents; 

entity Companies : cuid, managed { 
  name  : String(127);
  descr  : String(1023);
  phone: String(255);
  fax: String(255);
  homepage: String(255);
  address: String(255);
  note: String;
}

entity Contracts: cuid, managed {
    descr: String(1023);
    startDate: DateTime;
    endDate: DateTime;
    minimumRevenue: Integer;
    ratio: Decimal(2,2);
}

entity Clients : Companies {
    contact: String(255);
    contract: Association to Contracts;
}

entity Persons: cuid, managed {
    name: String;
    email: String;
    phone: String;
    address: String;
}
using { pophire.talents as talents } from '../db/schema';
service AdminService { 
  entity Companies as projection on talents.Companies;
  entity Employees as projection on talents.Employees;
}
using {pophire.talents as talents} from '../db/schema';

service AdminService {
  entity Companies  as projection on talents.Companies;

  entity Candidates as projection on talents.Candidates;

  entity JobOrders as projection on talents.JobOrders;

  entity JobApplications as projection on talents.JobApplications;
}

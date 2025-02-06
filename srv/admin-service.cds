using {pophire.talents as talents} from '../db/schema';

service AdminService {
  @odata.draft.enabled
  entity Companies  as projection on talents.Companies;

  @odata.draft.enabled
  entity Candidates as projection on talents.Candidates;

  @odata.draft.enabled
  entity JobOrders as projection on talents.JobOrders;

  @odata.draft.enabled
  entity JobApplications as projection on talents.JobApplications;
}

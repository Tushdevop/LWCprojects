/*

*/
public class ClinicalDataParser {
    
    public class StartDateStruct {
		public String StartDate;
		public String StartDateType;
	}

	public class StatusModule {
		public String StatusVerifiedDate;
		public String OverallStatus;
		public ExpandedAccessInfo ExpandedAccessInfo;
		public StartDateStruct StartDateStruct;
		public PrimaryCompletionDateStruct PrimaryCompletionDateStruct;
		public CompletionDateStruct CompletionDateStruct;
		public String StudyFirstSubmitDate;
		public String StudyFirstSubmitQCDate;
		public StudyFirstPostDateStruct StudyFirstPostDateStruct;
		public String LastUpdateSubmitDate;
		public LastUpdatePostDateStruct LastUpdatePostDateStruct;
	}

	public class BioSpec {
		public String BioSpecRetention;
		public String BioSpecDescription;
	}

	public class EligibilityModule {
		public String EligibilityCriteria;
		public String HealthyVolunteers;
		public String Gender;
		public String MinimumAge;
		public String MaximumAge;
		public StdAgeList StdAgeList;
		public String StudyPopulation;
		public String SamplingMethod;
	}

	public class StdAgeList {
		public List<String> StdAge;
	}

	public class ArmGroupInterventionList {
		public List<String> ArmGroupInterventionName;
	}

	public class ProtocolSection {
		public IdentificationModule IdentificationModule;
		public StatusModule StatusModule;
		public SponsorCollaboratorsModule SponsorCollaboratorsModule;
		public OversightModule OversightModule;
		public DescriptionModule DescriptionModule;
		public ConditionsModule ConditionsModule;
		public DesignModule DesignModule;
		public ArmsInterventionsModule ArmsInterventionsModule;
		public OutcomesModule OutcomesModule;
		public EligibilityModule EligibilityModule;
		public ContactsLocationsModule ContactsLocationsModule;
		public ReferencesModule ReferencesModule;
		public IPDSharingStatementModule IPDSharingStatementModule;
	}

	public class InterventionMesh {
		public String InterventionMeshId;
		public String InterventionMeshTerm;
	}

	public class SponsorCollaboratorsModule {
		public ResponsibleParty ResponsibleParty;
		public LeadSponsor LeadSponsor;
		public CollaboratorList CollaboratorList;
	}

	public class ConditionsModule {
		public ConditionList ConditionList;
		public KeywordList KeywordList;
	}

	public class ConditionAncestorList {
		public List<ConditionAncestor> ConditionAncestor;
	}

	public class ConditionBrowseBranch {
		public String ConditionBrowseBranchAbbrev;
		public String ConditionBrowseBranchName;
	}

	public class ReferencesModule {
		public ReferenceList ReferenceList;
	}

	public class ArmGroupList {
		public List<ArmGroup> ArmGroup;
	}

	public class MiscInfoModule {
		public String VersionHolder;
	}

	public class InterventionBrowseBranch {
		public String InterventionBrowseBranchAbbrev;
		public String InterventionBrowseBranchName;
	}

	public class DesignObservationalModelList {
		public List<String> DesignObservationalModel;
	}

	public class InterventionBrowseLeafList {
		public List<InterventionBrowseLeaf> InterventionBrowseLeaf;
	}

	public class DesignInfo {
		public DesignObservationalModelList DesignObservationalModelList;
		public DesignTimePerspectiveList DesignTimePerspectiveList;
	}

	public class LeadSponsor {
		public String LeadSponsorName;
		public String LeadSponsorClass;
	}

	public class ConditionBrowseModule {
		public ConditionMeshList ConditionMeshList;
		public ConditionAncestorList ConditionAncestorList;
		public ConditionBrowseLeafList ConditionBrowseLeafList;
		public ConditionBrowseBranchList ConditionBrowseBranchList;
	}

	public class CollaboratorList {
		public List<Collaborator> Collaborator;
	}

	public class FullStudiesResponse {
		public String APIVrs;
		public String DataVrs;
		public String Expression;
		public Integer NStudiesAvail;
		public Integer NStudiesFound;
		public Integer MinRank;
		public Integer MaxRank;
		public Integer NStudiesReturned;
		public List<FullStudies> FullStudies;
	}

	public class DesignTimePerspectiveList {
		public List<String> DesignTimePerspective;
	}

	public class PrimaryCompletionDateStruct {
		public String PrimaryCompletionDate;
		public String PrimaryCompletionDateType;
	}

	public class IPDSharingStatementModule {
		public String IPDSharing;
	}

	public class DescriptionModule {
		public String BriefSummary;
		public String DetailedDescription;
	}

	public class StudyFirstPostDateStruct {
		public String StudyFirstPostDate;
		public String StudyFirstPostDateType;
	}

	public class ConditionBrowseLeaf {
		public String ConditionBrowseLeafId;
		public String ConditionBrowseLeafName;
		public String ConditionBrowseLeafAsFound;
		public String ConditionBrowseLeafRelevance;
	}

	public class InterventionList {
		public List<Intervention> Intervention;
	}

	public class Intervention {
		public String InterventionType;
		public String InterventionName;
		public String InterventionDescription;
		public InterventionArmGroupLabelList InterventionArmGroupLabelList;
	}

	public class Organization {
		public String OrgFullName;
		public String OrgClass;
	}

	public class SecondaryOutcome {
		public String SecondaryOutcomeMeasure;
		public String SecondaryOutcomeDescription;
		public String SecondaryOutcomeTimeFrame;
	}

	public class OverallOfficial {
		public String OverallOfficialName;
		public String OverallOfficialAffiliation;
		public String OverallOfficialRole;
	}

	public class ConditionBrowseLeafList {
		public List<ConditionBrowseLeaf> ConditionBrowseLeaf;
	}

	public class InterventionBrowseModule {
		public InterventionMeshList InterventionMeshList;
		public InterventionAncestorList InterventionAncestorList;
		public InterventionBrowseLeafList InterventionBrowseLeafList;
		public InterventionBrowseBranchList InterventionBrowseBranchList;
	}

	public class EnrollmentInfo {
		public String EnrollmentCount;
		public String EnrollmentType;
	}

	public class InterventionAncestor {
		public String InterventionAncestorId;
		public String InterventionAncestorTerm;
	}

	public class ConditionList {
		public List<String> Condition;
	}

	public class DerivedSection {
		public MiscInfoModule MiscInfoModule;
		public ConditionBrowseModule ConditionBrowseModule;
		public InterventionBrowseModule InterventionBrowseModule;
	}

	public class InterventionAncestorList {
		public List<InterventionAncestor> InterventionAncestor;
	}

	public class ArmsInterventionsModule {
		public ArmGroupList ArmGroupList;
		public InterventionList InterventionList;
	}

	public class ConditionMeshList {
		public List<ConditionMesh> ConditionMesh;
	}

	public class ConditionBrowseBranchList {
		public List<ConditionBrowseBranch> ConditionBrowseBranch;
	}

	public class InterventionMeshList {
		public List<InterventionMesh> InterventionMesh;
	}

	public class InterventionBrowseLeaf {
		public String InterventionBrowseLeafId;
		public String InterventionBrowseLeafName;
		public String InterventionBrowseLeafRelevance;
		public String InterventionBrowseLeafAsFound;
	}

	public class FullStudies {
		public Integer Rank;
		public Study Study;
	}

	public class PrimaryOutcomeList {
		public List<PrimaryOutcome> PrimaryOutcome;
	}

	public class ConditionAncestor {
		public String ConditionAncestorId;
		public String ConditionAncestorTerm;
	}

	public class OrgStudyIdInfo {
		public String OrgStudyId;
	}

	public class DesignModule {
		public String StudyType;
		public String PatientRegistry;
		public DesignInfo DesignInfo;
		public BioSpec BioSpec;
		public EnrollmentInfo EnrollmentInfo;
	}

	public FullStudiesResponse FullStudiesResponse;

	public class SecondaryOutcomeList {
		public List<SecondaryOutcome> SecondaryOutcome;
	}

	public class OverallOfficialList {
		public List<OverallOfficial> OverallOfficial;
	}

	public class LocationList {
		public List<Location> Location;
	}

	public class LastUpdatePostDateStruct {
		public String LastUpdatePostDate;
		public String LastUpdatePostDateType;
	}

	public class Study {
		public ProtocolSection ProtocolSection;
		public DerivedSection DerivedSection;
	}

	public class ExpandedAccessInfo {
		public String HasExpandedAccess;
	}

	public class ConditionMesh {
		public String ConditionMeshId;
		public String ConditionMeshTerm;
	}

	public class ContactsLocationsModule {
		public OverallOfficialList OverallOfficialList;
		public LocationList LocationList;
	}

	public class Reference {
		public String ReferencePMID;
		public String ReferenceType;
		public String ReferenceCitation;
	}

	public class CompletionDateStruct {
		public String CompletionDate;
		public String CompletionDateType;
	}

	public class OversightModule {
		public String IsFDARegulatedDrug;
		public String IsFDARegulatedDevice;
	}

	public class ResponsibleParty {
		public String ResponsiblePartyType;
	}

	public class InterventionArmGroupLabelList {
		public List<String> InterventionArmGroupLabel;
	}

	public class ReferenceList {
		public List<Reference> Reference;
	}

	public class ArmGroup {
		public String ArmGroupLabel;
		public String ArmGroupDescription;
		public ArmGroupInterventionList ArmGroupInterventionList;
	}

	public class Collaborator {
		public String CollaboratorName;
		public String CollaboratorClass;
	}

	public class PrimaryOutcome {
		public String PrimaryOutcomeMeasure;
		public String PrimaryOutcomeDescription;
		public String PrimaryOutcomeTimeFrame;
	}

	public class KeywordList {
		public List<String> Keyword;
	}

	public class InterventionBrowseBranchList {
		public List<InterventionBrowseBranch> InterventionBrowseBranch;
	}

	public class IdentificationModule {
		public String NCTId;
		public OrgStudyIdInfo OrgStudyIdInfo;
		public Organization Organization;
		public String BriefTitle;
		public String OfficialTitle;
	}

	public class OutcomesModule {
		public PrimaryOutcomeList PrimaryOutcomeList;
		public SecondaryOutcomeList SecondaryOutcomeList;
	}

	public class Location {
		public String LocationFacility;
		public String LocationCity;
		public String LocationState;
		public String LocationZip;
		public String LocationCountry;
	}

	
	public static ClinicalDataParser parse(String json) {
		return (ClinicalDataParser) System.JSON.deserialize(json, ClinicalDataParser.class);
	}


}
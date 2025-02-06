using AdminService as service from '../../srv/admin-service';
annotate service.JobOrders with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Title}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : company.name,
                Label : '{i18n>Name7}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Description2}',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Status}',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Notes}',
                Value : notes,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Candidates}',
            ID : 'Candidates',
            Target : 'Candidates/@UI.LineItem#Candidates',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Description1}',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Status}',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Notes}',
            Value : notes,
        },
    ],
);

annotate service.JobOrders with {
    company @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Companies',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : company_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descr',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'phone',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'fax',
            },
        ],
    }
};

annotate service.JobApplications with @(
    UI.LineItem #Candidates : [
        {
            $Type : 'UI.DataField',
            Value : candidate.printName,
            Label : '{i18n>Printname}',
        },
        {
            $Type : 'UI.DataField',
            Value : candidate.company.name,
            Label : '{i18n>Name6}',
        },
        {
            $Type : 'UI.DataField',
            Value : status,
            Label : '{i18n>Status}',
        },
    ]
);


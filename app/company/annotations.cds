using AdminService as service from '../../srv/admin-service';
annotate service.Companies with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name2}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Descr}',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Phone}',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Fax}',
                Value : fax,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Homepage}',
                Value : homepage,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Address}',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Note}',
                Value : note,
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
            Label : '{i18n>Contacts}',
            ID : 'Contacts',
            Target : 'contacts/@UI.LineItem#Contacts',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name1}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Descr}',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Phone}',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Fax}',
            Value : fax,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Homepage}',
            Value : homepage,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.FieldGroup #CommunicationRecords : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);

annotate service.Employees with @(
    UI.LineItem #Contacts : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : '{i18n>Name3}',
        },
        {
            $Type : 'UI.DataField',
            Value : role,
            Label : 'role',
        },
        {
            $Type : 'UI.DataField',
            Value : phone,
            Label : 'phone',
        },
        {
            $Type : 'UI.DataField',
            Value : email,
            Label : 'email',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Information}',
            ID : 'Information',
            Target : '@UI.FieldGroup#Information',
        },
    ],
    UI.FieldGroup #Information : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>Name4}',
            },
            {
                $Type : 'UI.DataField',
                Value : address,
                Label : '{i18n>Address}',
            },
            {
                $Type : 'UI.DataField',
                Value : company.name,
                Label : '{i18n>Name5}',
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : '{i18n>Email}',
            },
            {
                $Type : 'UI.DataField',
                Value : phone,
                Label : '{i18n>Phone}',
            },
            {
                $Type : 'UI.DataField',
                Value : role,
                Label : '{i18n>Role}',
            },
        ],
    },
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);


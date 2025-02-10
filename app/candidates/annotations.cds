using AdminService as service from '../../srv/admin-service';
using from '../../db/schema';

annotate service.Candidates with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Firstname}',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Lastname}',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Email}',
                Value: email,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Phone}',
                Value: phone,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Birthdate}',
                Value: birthdate,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Address1}',
                Value: address,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>Notes}',
                Value: notes,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Communications}',
            ID    : 'Communications',
            Target: 'communicationRecords/@UI.LineItem#Communications',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: printName,
            Label: 'printName',
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Email}',
            Value: email,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Phone}',
            Value: phone,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Birthdate}',
            Value: birthdate,
        },
    ],
    UI.DeleteHidden              : true,
    UI.HeaderInfo                : {
        TypeName      : '',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: printName,
        },
    },
);

annotate service.CommunicationRecords with @(UI.LineItem #Communications: [
    {
        $Type: 'UI.DataField',
        Value: createdAt,
        Label: '{i18n>CreatedAt}',
    },
    {
        $Type: 'UI.DataField',
        Value: content,
        Label: '{i18n>Content}',
    },
]);

annotate service.CommunicationRecords with {
    content @UI.MultiLineText: true
};

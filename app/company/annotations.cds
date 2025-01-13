using AdminService as service from '../../srv/admin-service';
annotate service.Companies with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fax',
                Value : fax,
            },
            {
                $Type : 'UI.DataField',
                Label : 'homepage',
                Value : homepage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'note',
                Value : note,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Contacts',
            ID : 'Contacts',
            Target : 'contacts/@UI.LineItem#Contacts',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'fax',
            Value : fax,
        },
        {
            $Type : 'UI.DataField',
            Label : 'homepage',
            Value : homepage,
        },
    ],
);

annotate service.Employees with @(
    UI.LineItem #Contacts : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Information',
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
                Label : 'name',
            },
            {
                $Type : 'UI.DataField',
                Value : address,
                Label : 'address',
            },
            {
                $Type : 'UI.DataField',
                Value : company.name,
                Label : 'name',
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : 'email',
            },
            {
                $Type : 'UI.DataField',
                Value : phone,
                Label : 'phone',
            },
            {
                $Type : 'UI.DataField',
                Value : role,
                Label : 'role',
            },
        ],
    },
);


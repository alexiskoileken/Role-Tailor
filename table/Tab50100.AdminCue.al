/// <summary>
/// Table Admin Cue (ID 50100).
/// </summary>
table 50100 "Admin Cue"
{
    Caption = 'Admin Cue';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "No Of Users Logged"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
        field(3; "OpenInvoices"; Integer)
        {
            fieldclass = flowfield;
            CalcFormula = count("Sales Header" where("Document Type" = filter(Invoice), Status = filter(Open)));
        }

    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}

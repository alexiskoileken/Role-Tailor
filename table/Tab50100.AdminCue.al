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
        field(4; "No Of Minutes Logged On"; Decimal)
        {

        }
        field(5; "Sales this month"; Decimal)
        {

        }
        field(6; "Requests Sent for Approval"; integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Approval Entry" where(Status = const(Created)));
        }
        field(7; "Requests to  Approve"; integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Approval Entry" where(Status = const(Open), "Approver ID" = const('UserId')));
            Editable = false;
        }


    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    /// <summary>
    /// NoOfMinutesLoggedOnUsers.
    /// </summary>
    /// <returns>Return variable MonthlyMinutes of type Decimal.</returns>
    procedure NoOfMinutesLoggedOnUsers() MonthlyMinutes: Decimal
    var
        UserTimeReg: Record "User Time Register";
    begin
        UserTimeReg.Reset();
        UserTimeReg.SetRange(Date, CalcDate('-cm', Today), CalcDate('<cm>', Today));
        if UserTimeReg.FindFirst() then begin
            UserTimeReg.CalcSums(Minutes);
            MonthlyMinutes := UserTimeReg.Minutes;
        end;
    end;

    /// <summary>
    /// GetPendingUserTasks.
    /// </summary>
    procedure GetPendingUserTasks()
    var

    begin

    end;
}

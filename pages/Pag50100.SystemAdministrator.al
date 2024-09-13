/// <summary>
/// Page System Administrator (ID 50100).
/// </summary>
page 50100 "System Administrator"
{
    ApplicationArea = All;
    Caption = 'System Administrator';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "RC system Administrator")
            {
                ApplicationArea = basic, suite;
            }
            part(Cues; "Admin cue")
            {
                ApplicationArea = basic, suite;
            }
        }

    }
    actions
    {
        area(Sections)
        {
            group("Users Management")
            {
                Caption = 'Users Management';
                action(users)
                {
                    Caption = 'users';
                    ApplicationArea = basic, suite;
                    RunObject = page Users;
                }
                action("Users Group")
                {
                    Caption = 'Users Groups';
                    ApplicationArea = basic, suite;
                    RunObject = page "User Groups";
                }
                action("Permission Sets")
                {
                    Caption = 'Permission Sets';
                    ApplicationArea = basic, suite;
                    RunObject = page "Permission Set";
                }
                action(Plans)
                {
                    Caption = 'Plans';
                    ApplicationArea = basic, suite;
                    RunObject = page Plans;
                }

            }
            group("App Management")
            {
                Caption = 'App Managment';
                action(apps)
                {
                    Caption = 'apps';
                    ApplicationArea = basic, suite;
                    RunObject = page "App Setup List";
                }
            }
            group("Data Privacy")
            {
                Caption = 'Data Privacy';
                action("Data Classification")
                {
                    Caption = 'Data Classification';
                    ApplicationArea = basic, suite;
                    RunObject = page "Data Classification Worksheet";
                }
                action("Data Subjects")
                {
                    Caption = 'Data Subjects';
                    ApplicationArea = basic, suite;
                    RunObject = page "Data Administration";
                }
                action("Change Log Entries")
                {
                    Caption = 'Change Log Entries';
                    ApplicationArea = basic, suite;
                    RunObject = page "Change Log Entries";
                }
            }
        }
        area(Creation)
        {
            action("User Setup")
            {
                Caption = 'User Setup';
                ApplicationArea = basic, suite;
                RunObject = page "User Setup";
            }
            action(sessions)
            {
                Caption = 'sessions';
                ApplicationArea = basic, suite;
                RunObject = page "Concurrent Session List";
            }
        }
        area(Embedding)
        {
            action("Chart Of Acounts")
            {
                Caption = 'Chart Of Acounts';
                ApplicationArea = basic, suite;
                RunObject = page "Chart of Accounts";
            }
            action(customers)
            {
                Caption = 'customers';
                ApplicationArea = basic, suite;
                RunObject = page "Customer List";
            }
        }
        area(Reporting)
        {
            action("G/L Registers")
            {
                Caption = 'G/L Registers';
                ApplicationArea = basic, suite;
                RunObject = report "G/L Register";
            }
        }
    }
}



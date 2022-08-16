page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    Caption = 'Seminar List';
    UsageCategory = Lists;
    CardPageId = 50101;
    Editable = false;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }

                field("Seminar Duration"; Rec."Seminar Duration")
                {
                    ApplicationArea = All;

                }

                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = All;

                }

                field("Minimum Participants"; Rec."Minimum Participants")
                {
                    ApplicationArea = All;

                }

                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;

                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
                ApplicationArea = all;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar),
                        "No." = field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ApplicationArea = all;

                }
                //>> Lab 8-2
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                    ApplicationArea = all;
                }
                action("&Registrations")
                {
                    Caption = '&Registrations';
                    RunObject = page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                    ApplicationArea = all;
                }
                //>> Lab 8-2
            }
        }
        //>> Lab 8-2
        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;
                ApplicationArea = all;
            }
        }
        //>> Lab 8-2
    }

}
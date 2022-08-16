page 50141 "CSD My Seminars"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 10 - Lab 1 - 4
// - Created new page

{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD My Seminar";
    Caption = 'CSD My Seminars';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar No.';
                }
                field(Name; Seminar.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Duration; Seminar."Seminar Duration")
                {
                    ApplicationArea = All;
                    Caption = 'Duration';
                }
                field(Price; Seminar."Seminar Price")
                {
                    ApplicationArea = All;
                    Caption = 'Price';
                }


            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Open)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    OpenSeminarCard();
                end;
            }
        }
    }
    var
        Seminar: Record "CSD Seminar";

    trigger OnOpenPage()
    begin
        Rec.SetRange("User ID", UserId);
    end;

    trigger OnAfterGetRecord()
    begin
        if Seminar.Get(Rec."Seminar No.") then;
    end;

    trigger OnNewRecord(BelowRec: Boolean)
    begin
        Clear(Seminar);
    end;

    local procedure OpenSeminarCard();
    begin
        if Seminar."No." <> '' then
            page.Run(page::"CSD Seminar Card", Seminar);
    end;

}
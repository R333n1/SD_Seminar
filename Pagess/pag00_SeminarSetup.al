page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'Seminar Setup';
    UsageCategory = Administration;
    ApplicationArea = all;
    SourceTable = "CSD Seminar Setup";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; Rec."Seminar Nos.")
                {
                    ApplicationArea = all;
                }

                field("Seminar Registrations Nos."; Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = all;
                }

                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }



    trigger OnOpenPage();
    begin
        if not Rec.get then begin
            Rec.init;
            Rec.insert;
        end;

    end;
}
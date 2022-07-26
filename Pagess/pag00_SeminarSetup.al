page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'Seminar Setup';
    UsageCategory = Administration;
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


                }

                field("Seminar Registrations Nos."; Rec."Seminar Registration Nos.")
                {


                }

                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {


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
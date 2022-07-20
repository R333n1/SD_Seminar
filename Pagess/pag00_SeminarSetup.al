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
                field("Seminar Nos."; "Seminar Nos.")
                {


                }

                field("Seminar Registrations Nos."; "Seminar Registration Nos.")
                {


                }

                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {


                }
            }
        }
    }



    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;

    end;
}
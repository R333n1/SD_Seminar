table 50140 "CSD Seminar Cue"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 10 - Lab 1 - 1
// - Created new page
{
    Caption = 'CSD Seminar Cue';
    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }

        field(20; "Planned"; Integer)
        {
            Caption = 'Planned';
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Planning)));
            FieldClass = FlowField;
        }

        field(30; "Registered"; Integer)
        {
            Caption = 'Registered';
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Registration)));
            FieldClass = FlowField;
        }

        field(40; "Closed"; Integer)
        {
            Caption = 'Closed';
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Closed)));
            FieldClass = FlowField;
        }

        /////////////
        field(50; "Posted Closed"; Integer)
        {
            Caption = 'Posted Closed';
            CalcFormula = count("CSD Posted Seminar Reg. Header" where(Status = const(Closed)));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }



}
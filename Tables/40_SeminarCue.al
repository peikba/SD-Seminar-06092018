table 123456740 "CSD Seminar Cue"
{
    Caption='Seminar Cue';
    
    fields
    {
        field(10;"Primary Key";Code[10])
        {
            Caption='Primary Key';
        }
        field(20;"Planned";Integer)
        {
            Caption='Planned';
            FieldClass=FlowField;
            CalcFormula=count("CSD Seminar Reg. Header" where(Status=const(Planning)));
            Editable=false;
        }
        field(30;"Registration";Integer)
        {
            Caption='Registration';
            FieldClass=FlowField;
            CalcFormula=count("CSD Seminar Reg. Header" where(Status=const(Registration)));
            Editable=false;
        }
        field(40;"Closed";Integer)
        {
            Caption='Closed';
            FieldClass=FlowField;
            CalcFormula=count("CSD Seminar Reg. Header" where(Status=const(Closed)));
            Editable=false;
        }
    }

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }

}
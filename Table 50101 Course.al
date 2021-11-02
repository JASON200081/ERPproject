
table 50101 Course
{
    DataClassification = ToBeClassified;

    fields
    {

        field(10; Code; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(20; Name; text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(30; description; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(40; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Instructor Led","e-learning","Remote Training";
        }

        field(50; Duration; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(60; price; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(80; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(90; PassingRate; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {

        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
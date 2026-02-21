IMPLEMENTATION MODULE M2LZ;

CONST ROUNDS = 1000000000;

PROCEDURE CalcLeibniz() :LONGREAL;
VAR
    i       :INTEGER;
    pi      :LONGREAL;
    x       :LONGREAL;
BEGIN
    pi := 1.0;
    x  := 1.0;

    FOR i := 2 TO ROUNDS + 1 DO
        x  := -1.0 * x;
        pi := pi + x / LONGREAL(2 * i - 1)
    END;

    pi := pi * 4.0;
    
    RETURN pi;
    
END CalcLeibniz;

END M2LZ.
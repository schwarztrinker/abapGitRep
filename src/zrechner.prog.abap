REPORT zrechner.

DATA:   vara Type INT8,
        varb Type INT8,
        resultaddition1 TYPE INT8,
        resultpotenz1 TYPE INT8,
        resultmultiplikation1 TYPE INT8,

        resultaddition2 TYPE INT8,
        resultpotenz2 TYPE INT8,
        resultmultiplikation2 TYPE INT8.

vara = 5.
varb = 0.

DATA: data1 TYPE REF TO zad_cl_addition.
      CREATE OBJECT data1.
      resultaddition1 = data1->zif_if_interface~addition( value1 = vara
      value2 = varb ).
      resultmultiplikation1 = data1->zif_if_interface~multiplikation( value1 = vara
      value2 = varb ).
      resultpotenz1 = data1->zif_if_interface~potenz( basis = vara
      varexponent = varb ).

DATA: data2 TYPE REF TO zad_cl_addition_singleoperatio.
      CREATE OBJECT data2.
      resultaddition2 = data2->zif_if_interface~addition( value1 = vara
      value2 = varb ).
      resultmultiplikation2 = data2->zif_if_interface~multiplikation( value1 = vara
      value2 = varb ).
      resultpotenz2 = data2->zif_if_interface~potenz( basis = vara
      varexponent = varb ).


WRITE 'Variable 1: '.
WRITE vara.
WRITE 'Variable 2: '.
WRITE varb.
NEW-LINE.
WRITE 'Multiple Operation: '.



NEW-LINE.
WRITE 'ADDITON: '.
WRITE resultaddition1.
WRITE 'MULTIPLIKATION: '.
WRITE resultmultiplikation1.
WRITE 'POTENZRECHNUNG: '.
WRITE resultpotenz1.
NEW-LINE.
WRITE 'NUR Add Operation: '.
NEW-LINE.
WRITE 'ADDITON: '.
WRITE resultaddition2.
WRITE 'MULTIPLIKATION: '.
WRITE resultmultiplikation2.
WRITE 'POTENZRECHNUNG: '.
WRITE resultpotenz2.

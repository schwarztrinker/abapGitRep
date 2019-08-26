CLASS zad_cl_addition DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
       INTERFACES ZIF_IF_INTERFACE.
ENDCLASS.




CLASS zad_cl_addition IMPLEMENTATION.

    METHOD zif_if_interface~addition.
    result = value1 + value2.
    ENDMETHOD.

    METHOD zif_if_interface~multiplikation.
    result = value1 * value2.
    ENDMETHOD.


    METHOD zif_if_interface~potenz.
    TRY.
    result = basis ** varexponent.

    CATCH CX_SY_CONVERSION_OVERFLOW.
    ENDTRY.
    ENDMETHOD.

ENDCLASS.




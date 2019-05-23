*"* use this source file for your ABAP unit test classes
CLASS zad_cl_addition_test DEFINITION FOR TESTING
RISK LEVEL HARMLESS
DURATION SHORT.

PRIVATE SECTION.
DATA: obj TYPE REF TO zad_cl_addition.
METHODS: addition FOR TESTING  RAISING cx_static_check,
        multiplikation FOR TESTING  RAISING cx_static_check,
        potenz FOR TESTING  RAISING cx_static_check,
      potenz_exp_zero FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS zad_cl_addition_test IMPLEMENTATION.

   method addition.
   CREATE OBJECT obj.
   data(result) = obj->zif_if_interface~addition( value1 = 5 value2 = 2 ).
   cl_abap_unit_assert=>assert_equals( act = result
      exp = '7'
      msg = 'wrong integer').
   ENDMETHOD.

  METHOD MULTIPLIKATION.
  CREATE OBJECT obj.
     data(result) = obj->zif_if_interface~multiplikation( value1 = 6 value2 = 2 ).
     cl_abap_unit_assert=>assert_equals( act = result
        exp = '12'
        msg = 'wrong integer').
  ENDMETHOD.

  METHOD POTENZ.
  CREATE OBJECT obj.
     data(result) = obj->zif_if_interface~potenz( basis = 7 varexponent = 2 ).
     cl_abap_unit_assert=>assert_equals( act = result
        exp = '49'
        msg = 'wrong integer').
  ENDMETHOD.
  METHOD POTENZ_exp_zero.
  CREATE OBJECT obj.
     data(result) = obj->zif_if_interface~potenz( basis = 2 varexponent = 0 ).
     cl_abap_unit_assert=>assert_equals( act = result
        exp = '1'
        msg = 'wrong integer').
  ENDMETHOD.

ENDCLASS.

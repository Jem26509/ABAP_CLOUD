CLASS zjem_cl_hola_mundo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjem_cl_hola_mundo IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write( 'Hola Mundo del ABAP Cloud, Atte: JEM' ).

  ENDMETHOD.
ENDCLASS.

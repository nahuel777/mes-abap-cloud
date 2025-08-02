class zcl_01_hola_cloud definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun.

  protected section.
  private section.
endclass.



class zcl_01_hola_cloud implementation.
  method if_oo_adt_classrun~main.
    out->write( 'Hola Cloud' ).
  endmethod.

endclass.

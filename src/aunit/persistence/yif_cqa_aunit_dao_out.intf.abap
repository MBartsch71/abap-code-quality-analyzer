INTERFACE yif_cqa_aunit_dao_out
  PUBLIC.

  TYPES: BEGIN OF ts_aunit_data,
           execution_date      TYPE ycqa_aunit_exec_date,
           package_name        TYPE devclass,
           object_name         TYPE sobj_name,
           object_type         TYPE ycqa_aunit_objtype,
           tests_total         TYPE ycqa_aunit_tests_total,
           tests_failed        TYPE ycqa_aunit_tests_failed,
           cov_branch_total    TYPE ycqa_cov_branch_total,
           cov_branch_exec     TYPE ycqa_cov_branch_exec,
           cov_proc_total      TYPE ycqa_cov_proc_total,
           cov_proc_exec       TYPE ycqa_cov_proc_exec,
           cov_statement_total TYPE ycqa_cov_statement_total,
           cov_statement_exec  TYPE ycqa_cov_statement_exec,
         END OF ts_aunit_data,
         tt_aunit_result TYPE STANDARD TABLE OF ts_aunit_data WITH DEFAULT KEY.

  METHODS:
    read_unit_tests_results
      IMPORTING
                iv_execution_date    TYPE datum
                iv_package_name      TYPE devclass
      RETURNING VALUE(rt_aunit_data) TYPE tt_aunit_result.

ENDINTERFACE.

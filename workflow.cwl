cwlVersion: v1.0

class: Workflow

inputs:

  the_input: File

outputs:

  the_output:
    type: File
    outputSource: three/output

steps:

  one:
    run: ./one.cwl
    in:
      input: the_input
    out:
      [output]

  two:
    run: ./two.cwl
    in:
      input: one/output
    out:
      [output]

  three:
    run: ./three.cwl
    in:
      input: two/output
    out:
      [output]

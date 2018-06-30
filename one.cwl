cwlVersion: v1.0

class: CommandLineTool

requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(inputs.input)
    writable: true

baseCommand: [echo]

arguments:
- '1'

stdout: 1.txt

inputs:

  input: File

outputs:

  output:
    type: File
    outputBinding:
      glob: '1.txt'

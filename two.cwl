cwlVersion: v1.0

class: CommandLineTool

requirements:
- class: InlineJavascriptRequirement
- class: ShellCommandRequirement
- class: InitialWorkDirRequirement
  listing:
  - $(inputs.input)

baseCommand: [cat]

arguments:
- shellQuote: false
  valueFrom: '* > 2.txt'

inputs:

  input: File

outputs:

  output:
    type: Directory
    outputBinding:
      glob: .

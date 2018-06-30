cwlVersion: v1.0

class: CommandLineTool

requirements:
- class: InlineJavascriptRequirement
- class: ShellCommandRequirement
- class: InitialWorkDirRequirement
  listing: $(inputs.input.listing)

baseCommand: [python, '/Users/johnsoni/Desktop/initial_wd_dir_test/asdf.py']

inputs:

  input: Directory

outputs:

  output:
    type: File
    outputBinding:
      glob: $('3.txt')

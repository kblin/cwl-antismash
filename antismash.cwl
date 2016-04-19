#!/usr/bin/env cwl-runner
cwlVersion: cwl:draft-3

class: CommandLineTool

description: "Run antiSMASH"

baseCommand: run_antismash.py

hints:
  - class: DockerRequirement
    dockerPull: antismash/antismash

inputs:
  - id: sequence
    type: File
    inputBinding:
      position: 1
  - id: outputfolder
    type: string
    inputBinding:
      prefix: "--outputfolder"
  - id: verbose
    type: ["null", boolean]
    inputBinding:
      prefix: "--verbose"


outputs:
  - id: result
    type: File
    outputBinding:
      glob: "$(inputs.outputfolder)/*.final.gbk"

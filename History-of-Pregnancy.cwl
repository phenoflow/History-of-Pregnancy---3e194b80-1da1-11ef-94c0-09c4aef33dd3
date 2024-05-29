cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  history-of-pregnancy-specified---primary:
    run: history-of-pregnancy-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  history-of-pregnancy-deliv---primary:
    run: history-of-pregnancy-deliv---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-specified---primary/output
  single-history-of-pregnancy---primary:
    run: single-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-deliv---primary/output
  history-of-pregnancy-postdelivery---primary:
    run: history-of-pregnancy-postdelivery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: single-history-of-pregnancy---primary/output
  history-of-pregnancy-vertex---primary:
    run: history-of-pregnancy-vertex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-postdelivery---primary/output
  history-of-pregnancy---primary:
    run: history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-vertex---primary/output
  history-of-pregnancy-stillbirth---primary:
    run: history-of-pregnancy-stillbirth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy---primary/output
  severe-history-of-pregnancy---primary:
    run: severe-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-stillbirth---primary/output
  history-of-pregnancy-placentae---primary:
    run: history-of-pregnancy-placentae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: severe-history-of-pregnancy---primary/output
  premature-history-of-pregnancy---primary:
    run: premature-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-placentae---primary/output
  fetalmaternal-history-of-pregnancy---primary:
    run: fetalmaternal-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: premature-history-of-pregnancy---primary/output
  venous-history-of-pregnancy---primary:
    run: venous-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: fetalmaternal-history-of-pregnancy---primary/output
  maternal-history-of-pregnancy---primary:
    run: maternal-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: venous-history-of-pregnancy---primary/output
  history-of-pregnancy-childbirth---primary:
    run: history-of-pregnancy-childbirth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: maternal-history-of-pregnancy---primary/output
  history-of-pregnancy-labour---primary:
    run: history-of-pregnancy-labour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-childbirth---primary/output
  history-of-pregnancy-emergency---primary:
    run: history-of-pregnancy-emergency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-labour---primary/output
  history-of-pregnancy-retardation---primary:
    run: history-of-pregnancy-retardation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-emergency---primary/output
  history-of-pregnancy-antepartum---primary:
    run: history-of-pregnancy-antepartum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-retardation---primary/output
  retroplacental-history-of-pregnancy---primary:
    run: retroplacental-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-antepartum---primary/output
  history-of-pregnancy-puerperium---primary:
    run: history-of-pregnancy-puerperium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: retroplacental-history-of-pregnancy---primary/output
  history-of-pregnancy-gestation---primary:
    run: history-of-pregnancy-gestation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-puerperium---primary/output
  cerebral-history-of-pregnancy---primary:
    run: cerebral-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-gestation---primary/output
  history-of-pregnancy-problem---primary:
    run: history-of-pregnancy-problem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cerebral-history-of-pregnancy---primary/output
  history-of-pregnancy-vagin---primary:
    run: history-of-pregnancy-vagin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-problem---primary/output
  antenatal-history-of-pregnancy---primary:
    run: antenatal-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-vagin---primary/output
  obstetric-history-of-pregnancy---primary:
    run: obstetric-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antenatal-history-of-pregnancy---primary/output
  history-of-pregnancy-eclampsia---primary:
    run: history-of-pregnancy-eclampsia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: obstetric-history-of-pregnancy---primary/output
  history-of-pregnancy-following---primary:
    run: history-of-pregnancy-following---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-eclampsia---primary/output
  history-of-pregnancy-preexisting---primary:
    run: history-of-pregnancy-preexisting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-following---primary/output
  history-of-pregnancy-proteinuria---primary:
    run: history-of-pregnancy-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-preexisting---primary/output
  history-of-pregnancy-malnutrition---primary:
    run: history-of-pregnancy-malnutrition---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-proteinuria---primary/output
  transient-history-of-pregnancy---primary:
    run: transient-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-malnutrition---primary/output
  history-of-pregnancy-aborter---primary:
    run: history-of-pregnancy-aborter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: transient-history-of-pregnancy---primary/output
  history-of-pregnancy-uterine---primary:
    run: history-of-pregnancy-uterine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-aborter---primary/output
  lower-history-of-pregnancy---primary:
    run: lower-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-uterine---primary/output
  history-of-pregnancy-complication---primary:
    run: history-of-pregnancy-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lower-history-of-pregnancy---primary/output
  history-of-pregnancy-oedema---primary:
    run: history-of-pregnancy-oedema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-complication---primary/output
  history-of-pregnancy-abnorm---primary:
    run: history-of-pregnancy-abnorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-oedema---primary/output
  history-of-pregnancy-mention---primary:
    run: history-of-pregnancy-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-abnorm---primary/output
  fresh-history-of-pregnancy---primary:
    run: fresh-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-mention---primary/output
  history-of-pregnancy-abortion---primary:
    run: history-of-pregnancy-abortion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: fresh-history-of-pregnancy---primary/output
  upper-history-of-pregnancy---primary:
    run: upper-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-abortion---primary/output
  renal-history-of-pregnancy---primary:
    run: renal-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: upper-history-of-pregnancy---primary/output
  history-of-pregnancy-section---primary:
    run: history-of-pregnancy-section---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: renal-history-of-pregnancy---primary/output
  history-of-pregnancy-threatened---primary:
    run: history-of-pregnancy-threatened---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-section---primary/output
  elective-history-of-pregnancy---primary:
    run: elective-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-threatened---primary/output
  trial-history-of-pregnancy---primary:
    run: trial-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: elective-history-of-pregnancy---primary/output
  history-of-pregnancy-fetus---primary:
    run: history-of-pregnancy-fetus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: trial-history-of-pregnancy---primary/output
  history-of-pregnancy-anoxia---primary:
    run: history-of-pregnancy-anoxia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-fetus---primary/output
  history-of-pregnancy-hypertension---primary:
    run: history-of-pregnancy-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-anoxia---primary/output
  history-of-pregnancy-thrombosis---primary:
    run: history-of-pregnancy-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-hypertension---primary/output
  early-history-of-pregnancy---primary:
    run: early-history-of-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: history-of-pregnancy-thrombosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: early-history-of-pregnancy---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

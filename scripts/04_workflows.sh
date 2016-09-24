#!/bin/bash
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-BS-seq_01.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-ChIP-seq_02_v002.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-ChIP-seq_03_v001.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-ChIP-seq_04_v001.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-DNApod_v001.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-MeGAP_v001.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-MiGAP_v001.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-RNA-seq_01_v003.ga
python ~/galaxy/scripts/api/workflow_import.py $1 http://localhost:8080 ../workflows/Galaxy-Workflow-RNA-seq_02_v001.ga

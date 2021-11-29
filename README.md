In this project ECG data was classified usign the ResNet 
Both the JupyterLab instance and the database were created in one Docker container.  Code for machine learning algorithm for classification of ECG data was largely sourced from https://github.com/spdrnl/ecg/blob/master/ECG.ipynb.

## Running the project
The project is started by running **run_project.bat**. This will:  <br />
1. Build the docker_jl image <br />
   Image contains all of the packages needed to run the code (~3.45 GB)
3. Run a container jlc of the docker_jl image
4. Download the ECG Rhythm LEAD 1 database and import it into MongoDB
5. Open the code in Jupyter Lab <br />
   You can choose to train the ResNet again or load the weights with whom the best validation loss was achieved. 


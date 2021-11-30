In this project ECG data was classified using the ResNet. Both the JupyterLab instance and the database were created in one Docker container.

## Running the project
All files must be in the same directory. The project is started by running **run_project.bat**. This will:  <br />
1. Build the docker_jl image <br />
   Image contains all of the packages needed to run the code (~3.45 GB)
3. Run a container jlc of the docker_jl image
4. Download the ECG Rhythm LEAD 1 database and import it into MongoDB
5. Open the code in Jupyter Lab <br />
   Code was largely sourced from https://github.com/spdrnl/ecg/blob/master/ECG.ipynb.
   Data is imported from MongoDB, minority classes are oversampled, the Resnet is trained and the results are tested. 
   You can choose to train the ResNet again or load the weights with whom the best validation loss was achieved.


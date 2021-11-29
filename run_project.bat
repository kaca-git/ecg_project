docker build -t docker_jl .
docker run -dit --name jlc -p 8888:8888 docker_jl
docker exec -it cc wget https://zenodo.org/record/5711347/files/ECG_Rhythm_Lead_I.csv?download=1
docker exec -it jlc mongoimport -d ecg_database -c ecg_signals --type csv --file ECG_Rhythm_Lead_I.csv --headerline
docker exec -it jlc jupyter lab --port=8888 --no-browser --ip=0.0.0.0 --allow-root
# Here is an example about how to restore the benchmark dataset 
# to a local PostgresSQL DB

# unzip the dumped file, resulted file name is "dataset_v1.0"
unzip dataset_v1.0.zip

# create a DB to store the dataset, DB name is "benchmark_1"
sudo -u postgres createdb benchmark_v1

# recover the dataset to the new DB
cat dataset_v1.0 | sudo -u postgres psql benchmark_v1


# MONGO-PERF:

Mongo-perf (not to be confused with mongoperf) is a micro benchmarking tool for the MongoDB server. It measures throughput of commands with regards to the number of threads.

### OVERVIEW:
This repo contains scripts to run benchmark tests for MongoDB.

### DEPENDENCIES:
*General Benchmarking Dependencies*  
Python >= 2.7.X < 3.0  
git  
mongo shell >= 2.7.0-pre- (at revision 56f3a5f0f10377b8dc13a22d59b7f90bd173411f or newer)  

*Python Benchmarking Dependencies*  
argparse  
pymongo  
subprocess  
GitPython  

*Python Reporting Dependencies*  
bottle  
GitPython  
boto (optional)  

### HOW TO RUN:
*To run a micro benchmarking test or tests:*  
`python benchrun.py -f <list of testfiles> -t <list of thread configs> [-m <number of dbs>] [-l <report label>] [-s <shell path>]`  

For example, to run the `simple_insert.js` test case on 1, 2, and 4 threads, no multi-db, generating a report called *insert01* and using the basic mongo shell:  
`python benchrun.py -f testcases/simple_insert.js -t 1 2 4 -l insert01`

*To run the GUI interface to view results in a graph:*  
```
cd gui  
python server.py  
```
Go to http://localhost:8080 to see the results.  

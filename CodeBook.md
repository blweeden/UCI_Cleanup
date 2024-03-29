Data Dictionary
======
Original Data
------
This is a cleaned and summarized data set based on data from the **Human Activity Recognition Using Smartphones Data Set**.  The original data set contains data regarding measurements taken from the accelerometers and gyrosopes in smartphones carried by test subjects while performing various activitites.  More information can be found in the README.md file, and also in the run_analysis.R
script.

Processing
------
More information can be found in the README.md file, and also in the run_analysis.R script.

Each of the variables described here is the average of the variable over all the measurments taken for a particular subject (person) performing a particular activity (like walking up stairs).  Units here have all been normalized to numbers ranging from -1 to 1 (this was how the original data was represented).

Variables
------
1 Subject - Index number of the test subject
2 Activity - Activitiy being performed

3-8: Mean and standard deviation of body acccelarations taken along the X, Y, and Z axis.
3   tBodyAccMeanX
4   tBodyAccMeanY
5   tBodyAccMeanZ
6   tBodyAccStdX
7   tBodyAccStdY
8   tBodyAccStdZ

9-14: Mean and standard deviation of graviational acceleration along the X, Y, and Z axis
9   tGravityAccMeanX
10  tGravityAccMeanY
11  tGravityAccMeanZ
12  tGravityAccStdX
13  tGravityAccStdY
14  tGravityAccStdZ

15-20: Mean and standard deviation of body jerk along the X, Y, and Z axis
15	tBodyAccJerkMeanX
16	tBodyAccJerkMeanY
17	tBodyAccJerkMeanZ
18	tBodyAccJerkStdX
19	tBodyAccJerkStdY
20	tBodyAccJerkStdZ

21-26: Mean and standard deviation of gyroscope position along the X, Y, and Z axis
21	tBodyGyroMeanX
22	tBodyGyroMeanY
23	tBodyGyroMeanZ
24	tBodyGyroStdX
25	tBodyGyroStdY
26	tBodyGyroStdZ

27-32: Mean and standard deviation of the gyroscope jerk along the X, Y, and Z axis
27	tBodyGyroJerkMeanX
28	tBodyGyroJerkMeanY
29	tBodyGyroJerkMeanZ
30	tBodyGyroJerkStdX
31	tBodyGyroJerkStdY
32	tBodyGyroJerkStdZ

33-42: Magnitude values: the magnitude of these three-dimensional signals were calculated using the Euclidean norm.
33	tBodyAccMagMean
34	tBodyAccMagStd
35	tGravityAccMagMean
36	tGravityAccMagStd
37	tBodyAccJerkMagMean
38	tBodyAccJerkMagStd
39	tBodyGyroMagMean
40	tBodyGyroMagStd
41	tBodyGyroJerkMagMean
42	tBodyGyroJerkMagStd

43-68: Fast Fourier Transform variables.  A Fast Fourier Transform (FFT) was applied to some of these signals.Note the 'f' to indicate frequency domain signals.
43	fBodyAccMeanX
44	fBodyAccMeanY
45	fBodyAccMeanZ
46	fBodyAccStdX
47	fBodyAccStdY
48	fBodyAccStdZ
49	fBodyAccJerkMeanX
50	fBodyAccJerkMeanY
51	fBodyAccJerkMeanZ
52	fBodyAccJerkStdX
53	fBodyAccJerkStdY
54	fBodyAccJerkStdZ
55	fBodyGyroMeanX
56	fBodyGyroMeanY
57	fBodyGyroMeanZ
58	fBodyGyroStdX
59	fBodyGyroStdY
60	fBodyGyroStdZ
61	fBodyAccMagMean
62	fBodyAccMagStd
63	fBodyAccJerkMagMean
64	fBodyAccJerkMagStd
65	fBodyGyroMagMean
66	fBodyGyroMagStd
67	fBodyGyroJerkMagMean
68	fBodyGyroJerkMagStd
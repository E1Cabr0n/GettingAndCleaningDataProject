# Code book of the dataset for the Coursera Getting and Cleaning Data course

This codebook contains a description of the dataset from the tidy_ata.txt file. Additional information can be found
in the README.md file. The decription includes descriptions of the dataset, its variables and transformation steps by which this dataset was obtained 
from the initial dataset.

## Dataset
Dataset is saved in the tidy_data.txt file as a text file with space-separated values. The first row is the list of 
variables names that are decribed below. Other rows contains values of the variables.

## Variables

Each row contains for a  subject and activity 79 averaged signal measurements.

### Identifiers

- *Subject*

	Subject identifier, integer, ranges from 1 to 30.

- *Activity*

	Activity identifier, string with 6 possible values: 
	- WALKING: subject was walking
	- WALKING_UPSTAIRS: subject was walking upstairs
	- WALKING_DOWNSTAIRS: subject was walking downstairs
	- SITTING: subject was sitting
	- STANDING: subject was standing
	- LAYING: subject was laying

### Average of measurements

All measurements are floating-point values, normalised and bounded within [-1,1]. Prior to normalisation, acceleration 
measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements 
(variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹). Magnitudes of three-dimensional signals 
(variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by *time*), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by *frequency*), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- timeBodyAccelerometerMeanX
	- timeBodyAccelerometerMeanY
	- timeBodyAccelerometerMeanZ

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- timeBodyAccelerometerStandardDeviationX
	- timeBodyAccelerometerStandardDeviationY
	- timeBodyAccelerometerStandardDeviationZ

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- timeGravityAccelerometerMeanX
	- timeGravityAccelerometerMeanY
	- timeGravityAccelerometerMeanZ

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- timeGravityAccelerometerStandardDeviationX
	- timeGravityAccelerometerStandardDeviationY
	- timeGravityAccelerometerStandardDeviationZ

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- timeBodyAccelerometerJerkMeanX
	- timeBodyAccelerometerJerkMeanY
	- timeBodyAccelerometerJerkMeanZ

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- timeBodyAccelerometerJerkStandardDeviationX
	- timeBodyAccelerometerJerkStandardDeviationY
	- timeBodyAccelerometerJerkStandardDeviationZ

- Average time-domain body angular velocity in the X, Y and Z directions:

	- timeBodyGyroscopeMeanX
	- timeBodyGyroscopeMeanY
	- timeBodyGyroscopeMeanZ

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- timeBodyGyroscopeStandardDeviationX
	- timeBodyGyroscopeStandardDeviationY
	- timeBodyGyroscopeStandardDeviationZ

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- timeBodyGyroscopeJerkMeanX
	- timeBodyGyroscopeJerkMeanY
	- timeBodyGyroscopeJerkMeanZ

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- timeBodyGyroscopeJerkStandardDeviationX
	- timeBodyGyroscopeJerkStandardDeviationY
	- timeBodyGyroscopeJerkStandardDeviationZ

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- timeBodyAccelerometerMagnitudeMean
	- timeBodyAccelerometerMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- timeGravityAccelerometerMagnitudeMean
	- timeGravityAccelerometerMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- timeBodyAccelerometerJerkMagnitudeMean
	- timeBodyAccelerometerJerkMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- timeBodyGyroscopeMagnitudeMean
	- timeBodyGyroscopeMagnitudeStandardDeviation

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- timeBodyGyroscopeJerkMagnitudeMean
	- timeBodyGyroscopeJerkMagnitudeStandardDeviation

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- frequencyBodyAccelerometerMeanX
	- frequencyBodyAccelerometerMeanY
	- frequencyBodyAccelerometerMeanZ

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- frequencyBodyAccelerometerStandardDeviationX
	- frequencyBodyAccelerometerStandardDeviationY
	- frequencyBodyAccelerometerStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- frequencyBodyAccelerometerMeanFrequencyX
	- frequencyBodyAccelerometerMeanFrequencyY
	- frequencyBodyAccelerometerMeanFrequencyZ

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- frequencyBodyAccelerometerJerkMeanX
	- frequencyBodyAccelerometerJerkMeanY
	- frequencyBodyAccelerometerJerkMeanZ

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- frequencyBodyAccelerometerJerkStandardDeviationX
	- frequencyBodyAccelerometerJerkStandardDeviationY
	- frequencyBodyAccelerometerJerkStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- frequencyBodyAccelerometerJerkMeanFrequencyX
	- frequencyBodyAccelerometerJerkMeanFrequencyY
	- frequencyBodyAccelerometerJerkMeanFrequencyZ

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- frequencyBodyGyroscopeMeanX
	- frequencyBodyGyroscopeMeanY
	- frequencyBodyGyroscopeMeanZ

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- frequencyBodyGyroscopeStandardDeviationX
	- frequencyBodyGyroscopeStandardDeviationY
	- frequencyBodyGyroscopeStandardDeviationZ

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- frequencyBodyGyroscopeMeanFrequencyX
	- frequencyBodyGyroscopeMeanFrequencyY
	- frequencyBodyGyroscopeMeanFrequencyZ

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- frequencyBodyAccelerometerMagnitudeMean
	- frequencyBodyAccelerometerMagnitudeStandardDeviation
	- frequencyBodyAccelerometerMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- frequencyBodyAccelerometerJerkMagnitudeMean
	- frequencyBodyAccelerometerJerkMagnitudeStandardDeviation
	- frequencyBodyAccelerometerJerkMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- frequencyBodyGyroscopeMagnitudeMean
	- frequencyBodyGyroscopeMagnitudeStandardDeviation
	- frequencyBodyGyroscopeMagnitudeMeanFrequency

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- frequencyBodyGyroscopeJerkMagnitudeMean
	- frequencyBodyGyroscopeJerkMagnitudeStandardDeviation
	- frequencyBodyGyroscopeJerkMagnitudeMeanFrequency

## Transformations

The zip file with the initial data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The initial dataset was transformed by the next operations:

1. The training and test sets were merged into one data set.
2. The values of the mean and standard deviation (i.e. variables with the strings *mean* and *std* as the part of the nae) 
were selected for each measurement.
3. The activity identifiers coded as integers from 1 to 6 were replaced with the activity names.
4. The variable names were replaced with understandable variable names by the next rules:
	- mean and mean() -> Mean, std() -> StandartDeviation, Acc -> Acceleration, Mag -> Magnitude, Freq() - > Frequency, Gyro -> Gyroscope
	- The initial *f* and *t* were replaced by *frequency* and *time* respectively.
	- Special character - was removed
	- Typos *BodyBody* were replaced with *Body*.
5. The final data set was created with the average of each variable for each activity and each subject.

The steps above were inplemented as R script run_analysis.R (see details in README.md file).
# EEG_analysis

FUNDAMENTALS OF
ELECTROENCEPHALOGRAPHY (EEG) DATA
ACQUISITION AND INTERPRETATION (2021)

Delivery task

Data. Data .mat are in format of .mat files or .xlsx. There are three different types of movements named
‘Close’, ‘Reach’ and ‘Mouth’. In each file there are 27/28 rows which shows total number of trials done by
the subject. The number of samples in each row is 7200 which is correspond to 6 sec with sampling frequency
of 1200. The first three seconds (samples 1:3600) is the rest range of each trial ( -5:-2 sec regarding to
movement onsets obtained from EMG signals). That last three seconds is the movement phase of each trial (
-2:1 sec regarding to movement onsets obtained from EMG signals).

Tasks:

T1. Plot both average of all trials in movement phase (-2:1) sec and average across good trials in the same
range for each task in one figure and compere them. What was the criteria to select good trials? Is there any
difference between two averages? If yes, how can you explain these differences?

T2. Compare MRCPs (in movement phase) of three different movements and explain differences regarding to
MRCP morphology such as amplitude, place and time of peak negativity, negativity slope,….

T3. Extract the features from the movement and rest phase of each task and compare them. It should be done
for each task separately. How is the variability of the features across trials? How these features differed among
movements?

T4. (Optional) By extracting features from good trials, classify among three movements. The features can be
negativity slope, variability of the trials, place and amplitude of peak negativity and mean value of MRCP
negativity
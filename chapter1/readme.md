Chapter One
===========

"Do we understand the outlines of literary history?"

To understand how to reproduce a given figure, use the key below. If you want to reproduce the last stage of analysis and visualization, you can do that using code and data provided here. To reproduce everything from volume-level wordcounts, you'll need to unzip data_for_chapter_one.tar.gz and put it in /sourcefiles. To reproduce everything from raw texts, you'll need to contact HathiTrust.

Figure 1.1
-----------
Created by rplots/C1Fig1colors.R. This immediately uses plotdata/colorfic.csv. If you want to recreate that summary from the original volumes, read code/createcolorfic.py for the needed data.

Figure 1.2
----------
Created by rplots/C1Fig2Stanford.R. This immediately uses plotdata/hardaverages.csv. If you want to recreate that summary from the original volumes, read code/createhardaverages.py for the needed data.

Figure 1.3
----------
Created by rplots/C1Fig3boxplot.R. This immediately uses plotdata/biopredictsII.csv. If you want to recreate that from original data, you'll need to consult code/biomodel.py, and probably change some paths in that code.

Figure 1.4
----------
Created by rplots/C1Fig3boxplot.R. This immediately uses plotdata/allsubset2.csv. If you want to recreate that from original data, you'll need to consult code/biomodel.py, and probably change some paths in that code.

**A description of the directories:**

code
----
Code used to produce intermediate data files, not final code for viz.

lexicons
--------
Wordlists used in this chapter.

metadata
--------
Lists of volumes.

modeloutput
----------
Files directly produced by code/biomodel.py; these were concatenated to produce two files in plotdata.

plotdata
--------
Final versions of data to be used in visualization.

rplots
------
Scripts for visualization.

sourcefiles
-----------
Empty folder. To be filled with files from data_for_chapter1.tar.gz if you want to recreate analyses from raw volume wordcounts. That file is going to be too large to include here and may be linked via Dropbox or figshare.
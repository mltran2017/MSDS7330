# DS 7330 Project

### Websites of interest
```
General information about Data Cleaning/Clensing
	https://en.wikipedia.org/wiki/Data_cleansing
Some possible steps in a cleaning process
	https://www.invensis.net/blog/data-processing/5-steps-data-cleansing-customer-data/
A business that cleans data, probably nothing interesting
	https://www.trifacta.com/data-cleansing/
Precursor to trifacta (stanford project), has a video, already included features form it
	http://vis.stanford.edu/wrangler/
Brief spelling corrector
	https://norvig.com/spell-correct.html
```
### Issues
```
Name subset	(American Airlines Tokyo -> American Airlines)
Name spelling	(Amrican Airlnes -> American Airlines)
Both 		(Amrican Airlnes Tokyo -> American Airlines)
Missing		(           )
Other		?
```
### Physical Requirements
```
MySQL
Python
Python to MySQL connection
Python library pandas
Spell check algorithm
```
### Other Requirements
```
Logging of changes saved to file (what format, how detailed)
Batch processing of data to prevent loss of data
Way to measure and define Data Quality (Validity, Accuracy, Completeness, Consistency, Uniformity)
	(or Validity, Integrity, Precision and Accuracy, Consistency, Uniformity, etc...)
Time to complete for paper (with/without previous lookup table?)
Workflow visualization
Write the paper
```
### Project Timeline
```
Week 5: Data exploration and resources identified.
Week 6-7: Python solution in development.	
Week 8: Lightning Talk given during class time.
Week 10: Python solution testing completed.
Week 12: Complete draft due.
Week 15: Final presentation.
Week 16: Final paper due.
```
### Program Workflow
##### Initial steps
```
1. Put data into MySQL database
2. Make lookup table from prior entries in 'Audit_Dashboard Vendor'
3. Fix any erroneous lookup table entries
4. Automatic entries gets a flag
```
##### Main Program
```
4. Import lookup table from MySQL
5. Import datatofix from MySQL
6. From lookup table find name subsets for 'Sub Vendor'
7. From lookup table find misspelling for 'Sub Vendor'
	(need criteria on how badly misspelled something can be for an automatic fix)
8. From lookup table find name subsets + misspelling for 'Sub Vendor'
	(need some criteria here again)
9. NULL gets automatic entry from 'Supplier name'
	(is it possible for the supplier name to be wrong?)
NOTE: currently ignore all data that does not satisfy these criteria
10. Insert the changes to datatofix back into MySQL database
11. Import datatofix from MySQL, if none exist we are done
	(these could not be completed by previous algorithm)
LOOP
12. Display a row of 'Supplier name', 'Vendor Id', and 'Sub Vendor'
	a. If any entries have been added to lookup table, do steps 6-8 with just those new lookup entries.
		1. If row is complete skip to step 12
13. Manually add entry for 'Audit_Dashboard Vendor'
14. Entry is added to lookup table
END LOOP
15. Go to step 11
```



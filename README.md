# MSDS7330

https://en.wikipedia.org/wiki/Data_cleansing
Data Quality
	Validity
	Accuracy
	Completeness
	Consistency
	Uniformity
Data Scrubbing/Cleansing

Look-up tables

Batch Processing

https://www.invensis.net/blog/data-processing/5-steps-data-cleansing-customer-data/

https://www.trifacta.com/data-cleansing/
http://vis.stanford.edu/wrangler/

Data cleaning script history
Workflow visualization

Validity, Integrity, Precision and Accuracy, Consistency, Uniformity

https://norvig.com/spell-correct.html

###### Issues
###### Name subset	(American Airlines Tokyo -> American Airlines)
###### Name spelling	(Amrican Airlnes -> American Airlines)
###### Both 		(Amrican Airlnes Tokyo -> American Airlines)
###### Missing		(           )
###### Other		?

```
### Project Workflow
##### Initial steps
1. Put data into MySQL database
2. Make lookup table from prior entries
3. Fix any erroneous lookup table entries
##### Main Program
4. Import lookup table from MySQL
Import data (1000 rows) from MySQL
5a. Enter known values from lookup table
6.  
```



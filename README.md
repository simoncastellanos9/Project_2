<h1> Project_2 </h1>
<hr>
<h3>Team</h3>
<ul>
  <li>Simon Castellanos</li>
  <li>Elijah Abuel</li>
  <li>Morteza Akbari</li>
  <li>Joseph Mills</li>
  <li>Karla Flores</li>
</ul>
<br>
<h3>Topic and Rationale</h3>
Topic:
<ul>
  <li></li>
  <li></li>
</ul>
<br>
<h3>Datasets</h3>
<ul>
  <li>Houston National Weather Service Office, TX US | Source:<a href="https://www.ncdc.noaa.gov/cdo-web/datasets/GHCND/stations/GHCND:USC00414333/detail"> National Centers for Environmental Information - National Oceanic and Atmospheric Administration((NOAA)</a>
  </li>
  <li>Electricity Per KWH in Houston | Source: <a href="https://fred.stlouisfed.org/series/APUS37B72610">Economic Research - Federal Reserve Bank of St. Louis FRED</a></li>
  <li>Crude Oil Prices: West Texas Intermediate (WTI) | Source: <a href="https://fred.stlouisfed.org/series/DCOILWTICO"></a>Economic Research - Federal Reserve Bank of St. Louis FRED</li>
</ul>
<h3>Architecture Diagram</h3>
<hr>
<img src= https://github.com/simoncastellanos9/Project_2/blob/main/Resources/Schema.png>
<hr>
<h3>ETL Process</h3>
<ul>
<strong>Extract</strong>
<hr>
	<ul>
		<li>Houston Weather Dataset: CSV file</li>
		<li>WTI(West Texas Intermediate): CSV file</li>
		<li>Huston KWH Electricity CPI: CSV file</li>
	</ul>
<br>
<strong>Transform</strong>
<hr>
	<ul>
		<li>Pulling the CSV files from the sources, we then used pd.read_csv to pull these into readable tables.</li>
		<li>Our main column in which we linked our datasets was using "Date" as a common denominator.</li>
		<li>Using pd.to_datetime, we then formatted all date information to be the same.</li>
		<li>One major data cleaning method we used was converting data types of our Cost_KWH column in our KWH dataset.</li>
		<li>Originally formatted as a "string", we wanted the data to be floats.</li>
		<li>Running df.applymap(np.isreal), we checked to see which rows were and weren't holding usable numerical data.</li>
		<li>Then creating a new DataFrame, the problem column data was converted into "float64".</li>
		<li>We then built dataframes to store the cleaned data which were stored in new CSVs.</li>
	</ul>
<br>
<strong>Load</strong>
<hr>
  	<ul>
		<li>Loading our cleaned datasets onto SQL/Postgres was the first task.</li>
		<li>Building table schema, we created three tables in postgres to store our cleaned data from Jupyter Lab.</li>
		<li>Our final database was built based on the Weather table by appending the relevant columns from the KWH and WTI datasets onto the Weather table.</li>
	</ul>
</ul>

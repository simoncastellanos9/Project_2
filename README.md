<h1> Project_2 </h1>
<hr>
<h3>Team</h3>
<ul>
  <li>Simon Castellanos</li>
  <li>Elijah Abuel</li>
  <li>Morteza Akbari</li>
  <li>Morteza Akbari</li>
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
  <li>HOUSTON NATIONAL WEATHER SERVICE OFFICE, TX US | Source:<a href="https://www.ncdc.noaa.gov/cdo-web/datasets/GHCND/stations/GHCND:USC00414333/detail"> National Centers for Environmental Information - National Oceanic and Atmospheric Administration((NOAA)</a>
  </li>
  <li><a href="#">Source:</a></li>
  <li><a href="#">Source:</a></li>
</ul>
<h3>Architecture Diagram</h3>
<ul>
  <li></li>
  <li></li>
</ul>
<h3>ETL Process</h3>
<ul>
  <li>Extract</li>
	<li>Houston Weather Dataset: CSV file</li>
	<li>WTI(West Texas Intermediate): CSV file</li>
	<li>Huston KWH Electricity CPI: CSV file</li>
  <li>Transform</li>
	<li>Pulling the CSV files from the sources, we then used pd.read_csv to pull these into readable tables.</li>
	<li>Our main column in which we linked our datasets was using "Date" as a common denominator.</li>
	<li>Using pd.to_datetime, we then formatted all date information to be the same.</li>
	<li>One major data cleaning method we used was converting data types of our Cost_KWH column in our KWH dataset.</li>
	<li>Originally formatted as a "string", we wanted the data to be floats.</li>
	<li>Running df.applymap(np.isreal), we checked to see which rows were and weren't holding usable numerical data.</li>
	<li>Then creating a new DataFrame, the problem column data was converted into "float64".</li>
	<li>We then built dataframes to store the cleaned data which were stored in new CSVs.</li>
  <li>Load</li>
	<li>Loading our cleaned datasets onto SQL/Postgres was the first task.</li>
	<li>Building table schema, we created three tables in postgres to store our cleaned data from Jupyter Lab.</li>
	<li>Our final database was built based on the Weather table by appending the relevant columns from the KWH and WTI datasets onto the Weather table.</li>
	<li></li>

</ul>

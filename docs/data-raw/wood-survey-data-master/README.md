This data package been produced by and downloaded from the National Ecological Observatory Network, managed cooperatively by Battelle. These data are provided under the terms of the NEON data policy at http://data.neonscience.org/data-policy. 

DATA PRODUCT INFORMATION
------------------------

ID: NEON.DOM.SITE.DP1.10098.001

Name: Woody plant vegetation structure

Description: Structure measurements, including height, canopy diameter, and stem diameter, as well as mapped position of individual woody plants

NEON Science Team Supplier: TOS

Abstract: This data product contains the quality-controlled, native sampling resolution data from in-situ measurements of live and standing dead woody individuals and shrub groups, from all terrestrial NEON sites with qualifying woody vegetation. The exact measurements collected per individual depend on growth form, and these measurements are focused on enabling biomass and productivity estimation, estimation of shrub volume and biomass, and calibration / validation of multiple NEON airborne remote-sensing data products. In general, comparatively large individuals that are visible to remote-sensing instruments are mapped, tagged and measured, and other smaller individuals are tagged and measured but not mapped. Smaller individuals may be subsampled according to a nested subplot approach in order to standardize the per plot sampling effort. Structure and mapping data are reported per individual per plot; sampling metadata, such as per growth form sampling area, are reported per plot. For additional details, see protocol [NEON.DOC.000987vG](http://data.neonscience.org/api/v0/documents/NEON.DOC.000987vG): TOS Protocol and Procedure: Measurement of Vegetation Structure, and Science Design [NEON.DOC.000914](http://data.neonscience.org/api/v0/documents/NEON.DOC.000914vA): TOS Science Design for Plant Biomass, Productivity and Leaf Area Index.

Latency:
The expected time from data and/or sample collection in the field to data publication is as follows, for each of the data tables (in days) in the downloaded data package. See the Data Product User Guide for more information.

vst_apparentindividual:  90

vst_mappingandtagging:  90

vst_perplotperyear:  300

vst_shrubgroup:  90

Brief Design Description: Woody Plant Vegetation Structure data are collected from distributed and/or tower plots. Each distributed plot is then sampled if at least one tree with DBH ≥ 10 cm is present, or if trees with DBH ≥ 10 cm are absent, distributed Plots are sampled if smaller woody individuals constitute ≥ 10% cover of the plot. Tower plots are sampled if at least one tree with DBH ≥ 10 cm is present in ≥ 10% of Tower Plots, or if smaller woody individuals constitute ≥ 10% of cover averaged across all Tower Plots. Within a plot, all individuals with DBH ≥ 10 cm are mapped and measured throughout the plot sampling area. Individuals with DBH < 10 cm may be mapped if they are visible to airborne remote-sensing instruments, and if stem density thresholds are met, individuals with DBH < 10 cm may be measured within nested subplots in order to standardize sampling effort across plots.
 
 At relatively mesic sites, distributed Plots are sampled every 3 years, and a minimum of n=5 tower plots are sampled annually. At continental cold and/or dry sites, distributed plots and tower plots are sampled every 3 years. At boreal sites in Alaska, distributed and tower plots are sampled every 6 years, and relocatable sites are sampled a minimum of 3 time points. At sites with seasonal senescence, the onset of sampling in a given year is triggered by senescence of canopy or understory individuals, and must be completed before growth begins the following season. At sites with no distinct season, sampling begins within ± 2 weeks of the same date, and must be completed within 4 months of onset. See NEON.DOC.000987 for more details.

Brief Study Area Description: These data are collected at all NEON terrestrial sites at which qualifying smaller woody individuals (individuals with DBH < 10 cm) are present at 10% cover or greater, or when larger individuals (individuals with DBH ≥ 10 cm) are present in 10% or more of designated plots . Functionally, sampling occurs at forested sites, and sites with shrub/scrub vegetation.

Keywords: shrubs, productivity, canopy height, plants, saplings, plant productivity, trees, woody plants, carbon cycle, vegetation, net primary productivity (NPP), lianas, vegetation structure, biomass, production, tree height, annual net primary productivity (ANPP)

QUERY INFORMATION
-----------------

Date-Time for Data Publication: 2019-08-06 14:30 (UTC)
Start Date-Time for Queried Data: 2018-08-15 16:00 (UTC)
End Date-Time for Queried Data: 2018-08-29 16:00 (UTC)

Site: BART
Geographic coordinates (lat/long datum): 44.063889 -71.287375 WGS 84
Domain: D01

This zip package was generated on: 2019-08-06 14:30 (UTC)

DATA PACKAGE CONTENTS
---------------------

This zip package contains the following documentation files:

- This readme file: NEON.D01.BART.DP1.10098.001.readme.20190806T143026Z.txt
- Term descriptions, data types, and units: NEON.D01.BART.DP1.10098.001.variables.20190806T143026Z.csv
- Data entry validation and parsing rules: NEON.D01.BART.DP1.10098.001.validation.20190806T143026Z.csv
- Machine-readable metadata file describing the data package: NEON.D01.BART.DP1.10098.001.EML.20180815-20180829.20190806T143026Z.xml. This file uses the Ecological Metadata Language schema. Learn more about this specification and tools to parse it at http://data.neonscience.org/faq.
- Other related documents, such as engineering specifications, field protocols and data processing documentation: 
NEON_vegStructure_userGuide_vA
NEON.DOC.000914vA
NEON.DOC.000987vG

Additional documentation for this data product or other related documentation are available at http://data.neonscience.org/documents.

This zip package also contains 2 data files:
NEON.D01.BART.DP1.10098.001.vst_mappingandtagging.basic.20190806T143026Z.csv - Mapping, identifying and tagging of individual stems for remeasurement
NEON.D01.BART.DP1.10098.001.vst_apparentindividual.2018-08.basic.20190806T143026Z.csv - Biomass and productivity measurements of apparent individuals

Basic download package definition: The basic data package contains all measurements. An expanded data package is not available for this data product.

FILE NAMING CONVENTIONS
-----------------------

NEON data files are named using a series of component abbreviations separated by periods. File naming conventions for NEON data files differ between NEON science teams. A file will have the same name whether it is accessed via the data portal or the API.

NEON observational systems (OS) data files: NEON.DOM.SITE.DPL.PRNUM.REV.DESC.YYYY-MM.PKGTYPE.GENTIME.csv

The definitions of component abbreviations are below. See NEON.DOC.002651: NEON Data Product Numbering Convention, located at http://data.neonscience.org/documents for more information.

General conventions, used for all data products:
   NEON: denotes the organizational origin of the data product and identifies the product as operational; data collected as part of a special data collection exercise are designated by a separate, unique alphanumeric code created by the PI.

   DOM: a three-character alphanumeric code, referring to the domain of data acquisition (D01 - D20).

   SITE: a four-character alphanumeric code, referring to the site of data acquisition; all sites are designated by a standardized four-character alphabetic code.

   DPL: a three-character alphanumeric code, referring to data product processing level;

   PRNUM: a five-character numeric code, referring to the data product number (see the Data Product Catalog at http://data.neonscience.org/data-product-catalog).

   REV: a three-digit designation, referring to the revision number of the data product. The REV value is incremented by 1 each time a major change is made in instrumentation, data collection protocol, or data processing such that data from the preceding revision is not directly comparable to the new.

   HOR: a three-character designation, referring to measurement locations within one horizontal plane. For example, if five surface measurements were taken, one at each of the five soil array plots, the number in the HOR field would range from 001-005. 

   VER: a three-character designation, referring to measurement locations within one vertical plane. For example, if eight air temperature measurements are collected, one at each tower vertical level, the number in the VER field would range from 010-080. If five soil temperature measurements are collected below the soil surface, the number in the VER field would range from 501-505. 

   TMI: a three-character designation, referring to the temporal representation, averaging period, or coverage of the data product (e.g., minute, hour, month, year, sub-hourly, day, lunar month, single instance, seasonal, annual, multi-annual). 000 = native resolution, 001 = native resolution (variable or regular) or 1 minute, 002 = 2 minute, 005 = 5 minute, 015 = 15 minute, 030 = 30 minute, 060 = 60 minutes or 1 hour, 100 = approximately once per minute at stream sites and once every 5-10 minutes at buoy sites (lakes/rivers), 101-103 = native resolution of replicate sensor 1, 2, and 3 respectively, 999 = Sensor conducts measurements at varied interval depending on air mass, 01D = 1 day, 01M = 1 month, 01Y = 1 year.

   DESC: an abbreviated description of the data file or table.

   YYYY-MM: the year and month of the data in the file.

   PKGTYPE: the type of data package downloaded. Options are 'basic', representing the basic download package, or 'expanded',representing the expanded download package (see more information below).

   GENTIME: the date-time stamp when the file was generated, in UTC. The format of the date-time stamp is YYYYMMDDTHHmmSSZ.

Time stamp conventions:
   YYYY: Year
   YY: Year, last two digits only
   MM: Month: 01-12
   DD: Day: 01-31
   T: Indicator that the time stamp is beginning
   HH: Hours: 00-23
   mm: Minutes: 00-59
   SS: Seconds: 00-59
   Z: Universal Time Coordinated (Universal Coordinated Time), or UTC

ADDITIONAL INFORMATION
----------------------

Data products that are a source of this data product:

Data products that are derived from this data product:

Other related data products (by sensor, protocol, or variable measured):
NEON.DOM.SITE.DP1.10026.001, Plant foliar physical and chemical properties
NEON.DOM.SITE.DP1.10045.001, Non-herbaceous perennial vegetation structure
NEON.DOM.SITE.DP1.10053.001, Plant foliar stable isotopes
NEON.DOM.SITE.DP3.30015.001, Ecosystem structure

Protection of species of concern: At most sites, taxonomic IDs of species of concern have been 'fuzzed', i.e., reported at a higher taxonomic rank than the raw data, to avoid publishing locations of sensitive species. For a few sites with stricter regulations (e.g., Great Smoky Mountains National Park (GRSM)), records for species of concern are not published. 

Obfuscation of Personnel Information: At times it is important to know which data were collected by particular observers. In order to protect privacy of NEON technicians while also providing a way to consistently identify different observers, we obfuscate each NEON personnel name by internally linking it to a unique string identifier (e.g., Jane Doe=ByrziN0LguMJHnInl2NM/trZeA5h+c0) and publishing only the identifier.

CHANGE LOG
----------

ADDITIONAL REMARKS
------------------

Queries for this data product will return data from all dates for vst_mappingandtagging (since individuals maybe tagged and mapped many years before a given vegetation structure sampling bout), whereas the vst_perplotperyear, vst_apparentindividual and vst_shrubgroup tables will be subset to data collected during the date range specified. Data are provided in monthly download files; queries including any part of a month will return data from the entire month. In the vst_perplotperyear table, there should be one record per plotID per eventID, and data in this table describe the presence/absence of woody growth forms, as well as the sampling area utilized for each growth form. The vst_mappingandtagging table contains at least one record per individualID, and provides data that are invariant through time, including tagID, taxonID and mapped location (if applicable). Duplicates in vst_mappingandtagging may exist at the individualID level if errors have been corrected after ingest of the original record; in this instance, users are advised to use the most recent record. Records in vst_mappingandtagging may be linked to vst_perplotperyear via the plotID and eventID fields. The vst_apparentindividual table contains one record per individualID per eventID, and includes growth form, structure and status data that may be linked to vst_mappingandtagging records via individualID; records may also be linked to vst_perplotperyear via the plotID and eventID fields. For allometric measurements on tree palms and other large, nonwoody individuals, users must download the nst_perindividual table from the related Non-herbaceous perennial vegetation structure data product (NEON.DP1.10045), and join on the individualID variable. The vst_shrubgroup table contains a minimum of one record per groupID per plotID per eventID; multiple records with the same groupID may exist if a given shrub group is comprised of more than one taxonID. Data provided in the vst_shrubgroup table allow calculation of live and dead volume per taxonID within each shrub group, and records may be linked with vst_perplotperyear via the plotID and eventID fields.
 
 For all tables, duplicates may exist where protocol and/or data entry aberrations have occurred; users should check data carefully for anomalies before joining tables. Taxonomic IDs of species of concern have been 'fuzzed'; see data package readme files for more information.

NEON DATA POLICY AND CITATION GUIDELINES
----------------------------------------

Please visit http://data.neonscience.org/data-policy for more information about NEON's data policy and citation guidelines.

DATA QUALITY AND VERSIONING
---------------------------

The data contained in this file are considered provisional. Updates to the data, QA/QC and/or processing algorithms over time will occur on an as-needed basis.  Please check back to this site for updates tracked in change logs.  Query reproducibility on provisional data cannot be guaranteed. 
 
Starting in 2020 or earlier, NEON will begin to offer static versions of each data product, annotated with a globally unique identifier. Versioned IS and OS data will be produced by reprocessing each IS and OS data product from the beginning of the data collection period to approximately 12-18 months prior to the reprocessing date (to allow for calibration checks, return of external lab data, etc.). The reprocessing step will use the most recent QA/QC methods and processing algorithms. Versioned AOP data will be produced by reprocessing the entire AOP archive as advances in algorithms and processing technology are incorporated. This will typically occur in the northern winter months, between flight season peaks, and will be on the order of every 3 to 5 years in frequency.


# ecolm3
Repository for ECOLM III project - crowd-sourced data-correction of TabCode encodings of lute music
## About ECOLM III
The ECOLM III project (Goldsmiths, University of London) used scanned microfilm images of lute music prints from the Early Music Online project (based at Royal Holloway and the British Library). These images were used as input to Optical Tab Recognition software written by Chritoph Dalitz using the Gamera OCR library. The resulting transcriptions were then corrected (using an online editor) by volunteers, including members of the UK Lute Society.

## About the data
This repository presents data as it stood at the end of the project, in the `/data` folder:
 * `ecolmIII.mysql` is a dump of the full database (with user logging removed)
 * `/codes` contains transcriptions in TabCode format
 * `/MEI` has the same transcriptions, converted to the MEI format
 * `pages` is a complete set of images from the project.

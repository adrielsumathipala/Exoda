# Exoda

Check out [Exoda here!](http://refugee-project.s3-website-us-west-2.amazonaws.com/)

## Exoda's Origin: How Refugees and Migrants Move

I built Exoda with a single question in mind—how do **people move** on a global scale? Human migration, as it turns out, is a phenomenon as complex as it is data-rich. I focused on refugees, because of their inherent vulnerability, and their central importance to current discussions around immigration, national sovereignty, and human rights. Exoda came out as a final project for a seminar, called Writing and Reporting on the War, that I took at Yale, and the seminar was taught by renowned war reporter [Janine di Giovanni](https://en.wikipedia.org/wiki/Janine_di_Giovanni). 

While there are many migration data sources online, few provide accurate data at a global scale, and even fewer provide tools to explore this data. With Exoda, I tried to do something different. 

I integrated and cleaned multiple public migration data sources to create a singular ground truth on human migration. I combined this data with what I hope is a powerful, useful, and intuitive set of visual tools to explore the myriad nuances of human movement. Happy searching and feel free to drop me a line with any feedback!

## Data Analysis and Visualization Stack:

**Data Analysis:**

To clean, aggregate, and prepare the data, I used R and Python with its standard data science libraries (Numpy, Pandas, etc.). This code is in the R script and Jupyter notebook files in this repo. 


**Data Visualization:**

I custom-built all of the visualizations in Exoda using [D3](https://d3js.org/), the JavaScript web visualization package. The rest of the frontend was structured using Bootstrap (HTML, CSS).
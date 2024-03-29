    # Load libraries ----------------------------------------------------------

    # Utilities
    library(tidytuesdayR)

    ## Warning: package 'tidytuesdayR' was built under R version 3.6.3

    # Data wrangling
    library(dplyr)

    ## Warning: package 'dplyr' was built under R version 3.6.3

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    # plotting libraries
    library(ggplot2)

    ## Warning: package 'ggplot2' was built under R version 3.6.3

    # Summary tables
    library(gt)


    # Load data ---------------------------------------------------------------

    tuesdata <- tidytuesdayR::tt_load("2020-08-11")

    ## --- Compiling #TidyTuesday Information for 2020-08-11 ----

    ## --- There are 2 files available ---

    ## --- Starting Download ---

    ## 
    ##  Downloading file 1 of 2: `avatar.csv`
    ##  Downloading file 2 of 2: `scene_description.csv`

    ## --- Download complete ---

    avatar <- tuesdata$avatar


    # Summary tables ----------------------------------------------------------

    # Summarize number of elements per book chapter
    avatar %>%
      select(-c(full_text, character_words, writer)) %>%
      group_by(book_num) %>%
      summarize(Lines = n()) %>%
      rename(`Book Number` = book_num) %>%
      gt() %>%
      tab_header(title = "Avatar the Last Airbender", subtitle = "Lines per Book")

    ## `summarise()` ungrouping output (override with `.groups` argument)

<!--html_preserve-->
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#mgtmzejjgo .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#mgtmzejjgo .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#mgtmzejjgo .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#mgtmzejjgo .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#mgtmzejjgo .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mgtmzejjgo .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#mgtmzejjgo .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#mgtmzejjgo .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#mgtmzejjgo .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#mgtmzejjgo .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#mgtmzejjgo .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#mgtmzejjgo .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#mgtmzejjgo .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#mgtmzejjgo .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#mgtmzejjgo .gt_from_md > :first-child {
  margin-top: 0;
}

#mgtmzejjgo .gt_from_md > :last-child {
  margin-bottom: 0;
}

#mgtmzejjgo .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#mgtmzejjgo .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#mgtmzejjgo .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mgtmzejjgo .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#mgtmzejjgo .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mgtmzejjgo .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#mgtmzejjgo .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mgtmzejjgo .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#mgtmzejjgo .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#mgtmzejjgo .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#mgtmzejjgo .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#mgtmzejjgo .gt_left {
  text-align: left;
}

#mgtmzejjgo .gt_center {
  text-align: center;
}

#mgtmzejjgo .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#mgtmzejjgo .gt_font_normal {
  font-weight: normal;
}

#mgtmzejjgo .gt_font_bold {
  font-weight: bold;
}

#mgtmzejjgo .gt_font_italic {
  font-style: italic;
}

#mgtmzejjgo .gt_super {
  font-size: 65%;
}

#mgtmzejjgo .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="mgtmzejjgo" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<table class="gt_table">
<thead class="gt_header">
<tr>
<th colspan="2" class="gt_heading gt_title gt_font_normal" style>
Avatar the Last Airbender
</th>
</tr>
<tr>
<th colspan="2" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>
Lines per Book
</th>
</tr>
</thead>
<thead class="gt_col_headings">
<tr>
<th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">
Book Number
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">
Lines
</th>
</tr>
</thead>
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_right">
1
</td>
<td class="gt_row gt_center">
4620
</td>
</tr>
<tr>
<td class="gt_row gt_right">
2
</td>
<td class="gt_row gt_center">
4412
</td>
</tr>
<tr>
<td class="gt_row gt_right">
3
</td>
<td class="gt_row gt_center">
4353
</td>
</tr>
</tbody>
</table>
</div>
<!--/html_preserve-->

    # Exploration and engineering ---------------------------------------------

TODO

    # Data visualizations and analysis ----------------------------------------

TODO

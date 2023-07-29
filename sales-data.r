{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "4926c494",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:55.335402Z",
     "iopub.status.busy": "2023-07-29T16:09:55.332516Z",
     "iopub.status.idle": "2023-07-29T16:09:57.042424Z",
     "shell.execute_reply": "2023-07-29T16:09:57.040513Z"
    },
    "papermill": {
     "duration": 1.720588,
     "end_time": "2023-07-29T16:09:57.045182",
     "exception": false,
     "start_time": "2023-07-29T16:09:55.324594",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.2     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.2     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.1     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "library(rio)\n",
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d78f2b43",
   "metadata": {
    "papermill": {
     "duration": 0.00451,
     "end_time": "2023-07-29T16:09:57.054709",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.050199",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "we will use those packages. the tidyverse very useful because this package has nearly 6 packages. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "ec5363b0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.128027Z",
     "iopub.status.busy": "2023-07-29T16:09:57.065962Z",
     "iopub.status.idle": "2023-07-29T16:09:57.215883Z",
     "shell.execute_reply": "2023-07-29T16:09:57.213850Z"
    },
    "papermill": {
     "duration": 0.159645,
     "end_time": "2023-07-29T16:09:57.218674",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.059029",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [],
      "text/latex": [],
      "text/markdown": [],
      "text/plain": [
       "character(0)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "list.files(path = \"/kaggle/input/motorcycle-sales-analysis/sales_data.csv\") "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "355bbe49",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.231989Z",
     "iopub.status.busy": "2023-07-29T16:09:57.230193Z",
     "iopub.status.idle": "2023-07-29T16:09:57.331095Z",
     "shell.execute_reply": "2023-07-29T16:09:57.328686Z"
    },
    "papermill": {
     "duration": 0.110543,
     "end_time": "2023-07-29T16:09:57.334017",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.223474",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "data <- import(\"/kaggle/input/motorcycle-sales-analysis/sales_data.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "918d5a2c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.347072Z",
     "iopub.status.busy": "2023-07-29T16:09:57.345273Z",
     "iopub.status.idle": "2023-07-29T16:09:57.380923Z",
     "shell.execute_reply": "2023-07-29T16:09:57.378956Z"
    },
    "papermill": {
     "duration": 0.045384,
     "end_time": "2023-07-29T16:09:57.383935",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.338551",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>date</th><th scope=col>warehouse</th><th scope=col>client_type</th><th scope=col>product_line</th><th scope=col>quantity</th><th scope=col>unit_price</th><th scope=col>total</th><th scope=col>payment</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;IDate&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2021-06-01</td><td>Central</td><td>Retail   </td><td>Miscellaneous        </td><td> 8</td><td>16.85</td><td> 134.83</td><td>Credit card</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2021-06-01</td><td>North  </td><td>Retail   </td><td>Breaking system      </td><td> 9</td><td>19.29</td><td> 173.61</td><td>Cash       </td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2021-06-01</td><td><span style=white-space:pre-wrap>North  </span></td><td><span style=white-space:pre-wrap>Retail   </span></td><td>Suspension &amp; traction</td><td> 8</td><td>32.93</td><td> 263.45</td><td>Credit card</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2021-06-01</td><td><span style=white-space:pre-wrap>North  </span></td><td>Wholesale</td><td><span style=white-space:pre-wrap>Frame &amp; body         </span></td><td>16</td><td>37.84</td><td> 605.44</td><td><span style=white-space:pre-wrap>Transfer   </span></td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2021-06-01</td><td>Central</td><td>Retail   </td><td>Engine               </td><td> 2</td><td>60.48</td><td> 120.96</td><td>Credit card</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2021-06-01</td><td><span style=white-space:pre-wrap>North  </span></td><td>Wholesale</td><td>Suspension &amp; traction</td><td>40</td><td>37.37</td><td>1494.80</td><td><span style=white-space:pre-wrap>Transfer   </span></td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & date & warehouse & client\\_type & product\\_line & quantity & unit\\_price & total & payment\\\\\n",
       "  & <IDate> & <chr> & <chr> & <chr> & <int> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & 2021-06-01 & Central & Retail    & Miscellaneous         &  8 & 16.85 &  134.83 & Credit card\\\\\n",
       "\t2 & 2021-06-01 & North   & Retail    & Breaking system       &  9 & 19.29 &  173.61 & Cash       \\\\\n",
       "\t3 & 2021-06-01 & North   & Retail    & Suspension \\& traction &  8 & 32.93 &  263.45 & Credit card\\\\\n",
       "\t4 & 2021-06-01 & North   & Wholesale & Frame \\& body          & 16 & 37.84 &  605.44 & Transfer   \\\\\n",
       "\t5 & 2021-06-01 & Central & Retail    & Engine                &  2 & 60.48 &  120.96 & Credit card\\\\\n",
       "\t6 & 2021-06-01 & North   & Wholesale & Suspension \\& traction & 40 & 37.37 & 1494.80 & Transfer   \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | date &lt;IDate&gt; | warehouse &lt;chr&gt; | client_type &lt;chr&gt; | product_line &lt;chr&gt; | quantity &lt;int&gt; | unit_price &lt;dbl&gt; | total &lt;dbl&gt; | payment &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2021-06-01 | Central | Retail    | Miscellaneous         |  8 | 16.85 |  134.83 | Credit card |\n",
       "| 2 | 2021-06-01 | North   | Retail    | Breaking system       |  9 | 19.29 |  173.61 | Cash        |\n",
       "| 3 | 2021-06-01 | North   | Retail    | Suspension &amp; traction |  8 | 32.93 |  263.45 | Credit card |\n",
       "| 4 | 2021-06-01 | North   | Wholesale | Frame &amp; body          | 16 | 37.84 |  605.44 | Transfer    |\n",
       "| 5 | 2021-06-01 | Central | Retail    | Engine                |  2 | 60.48 |  120.96 | Credit card |\n",
       "| 6 | 2021-06-01 | North   | Wholesale | Suspension &amp; traction | 40 | 37.37 | 1494.80 | Transfer    |\n",
       "\n"
      ],
      "text/plain": [
       "  date       warehouse client_type product_line          quantity unit_price\n",
       "1 2021-06-01 Central   Retail      Miscellaneous          8       16.85     \n",
       "2 2021-06-01 North     Retail      Breaking system        9       19.29     \n",
       "3 2021-06-01 North     Retail      Suspension & traction  8       32.93     \n",
       "4 2021-06-01 North     Wholesale   Frame & body          16       37.84     \n",
       "5 2021-06-01 Central   Retail      Engine                 2       60.48     \n",
       "6 2021-06-01 North     Wholesale   Suspension & traction 40       37.37     \n",
       "  total   payment    \n",
       "1  134.83 Credit card\n",
       "2  173.61 Cash       \n",
       "3  263.45 Credit card\n",
       "4  605.44 Transfer   \n",
       "5  120.96 Credit card\n",
       "6 1494.80 Transfer   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "85004252",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.398057Z",
     "iopub.status.busy": "2023-07-29T16:09:57.396349Z",
     "iopub.status.idle": "2023-07-29T16:09:57.414819Z",
     "shell.execute_reply": "2023-07-29T16:09:57.412890Z"
    },
    "papermill": {
     "duration": 0.028785,
     "end_time": "2023-07-29T16:09:57.417790",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.389005",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "tibbled_data <- as_tibble(data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "d7241345",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.431694Z",
     "iopub.status.busy": "2023-07-29T16:09:57.430002Z",
     "iopub.status.idle": "2023-07-29T16:09:57.470119Z",
     "shell.execute_reply": "2023-07-29T16:09:57.468274Z"
    },
    "papermill": {
     "duration": 0.049735,
     "end_time": "2023-07-29T16:09:57.472792",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.423057",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>warehouse</th><th scope=col>client_type</th><th scope=col>product_line</th><th scope=col>quantity</th><th scope=col>unit_price</th><th scope=col>total</th><th scope=col>payment</th></tr>\n",
       "\t<tr><th scope=col>&lt;IDate&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2021-06-01</td><td>Central</td><td>Retail   </td><td>Miscellaneous        </td><td> 8</td><td>16.85</td><td> 134.83</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-01</td><td>North  </td><td>Retail   </td><td>Breaking system      </td><td> 9</td><td>19.29</td><td> 173.61</td><td>Cash       </td></tr>\n",
       "\t<tr><td>2021-06-01</td><td><span style=white-space:pre-wrap>North  </span></td><td><span style=white-space:pre-wrap>Retail   </span></td><td>Suspension &amp; traction</td><td> 8</td><td>32.93</td><td> 263.45</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-01</td><td><span style=white-space:pre-wrap>North  </span></td><td>Wholesale</td><td><span style=white-space:pre-wrap>Frame &amp; body         </span></td><td>16</td><td>37.84</td><td> 605.44</td><td><span style=white-space:pre-wrap>Transfer   </span></td></tr>\n",
       "\t<tr><td>2021-06-01</td><td>Central</td><td>Retail   </td><td>Engine               </td><td> 2</td><td>60.48</td><td> 120.96</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-01</td><td><span style=white-space:pre-wrap>North  </span></td><td>Wholesale</td><td>Suspension &amp; traction</td><td>40</td><td>37.37</td><td>1494.80</td><td><span style=white-space:pre-wrap>Transfer   </span></td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 8\n",
       "\\begin{tabular}{llllllll}\n",
       " date & warehouse & client\\_type & product\\_line & quantity & unit\\_price & total & payment\\\\\n",
       " <IDate> & <chr> & <chr> & <chr> & <int> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2021-06-01 & Central & Retail    & Miscellaneous         &  8 & 16.85 &  134.83 & Credit card\\\\\n",
       "\t 2021-06-01 & North   & Retail    & Breaking system       &  9 & 19.29 &  173.61 & Cash       \\\\\n",
       "\t 2021-06-01 & North   & Retail    & Suspension \\& traction &  8 & 32.93 &  263.45 & Credit card\\\\\n",
       "\t 2021-06-01 & North   & Wholesale & Frame \\& body          & 16 & 37.84 &  605.44 & Transfer   \\\\\n",
       "\t 2021-06-01 & Central & Retail    & Engine                &  2 & 60.48 &  120.96 & Credit card\\\\\n",
       "\t 2021-06-01 & North   & Wholesale & Suspension \\& traction & 40 & 37.37 & 1494.80 & Transfer   \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 8\n",
       "\n",
       "| date &lt;IDate&gt; | warehouse &lt;chr&gt; | client_type &lt;chr&gt; | product_line &lt;chr&gt; | quantity &lt;int&gt; | unit_price &lt;dbl&gt; | total &lt;dbl&gt; | payment &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 2021-06-01 | Central | Retail    | Miscellaneous         |  8 | 16.85 |  134.83 | Credit card |\n",
       "| 2021-06-01 | North   | Retail    | Breaking system       |  9 | 19.29 |  173.61 | Cash        |\n",
       "| 2021-06-01 | North   | Retail    | Suspension &amp; traction |  8 | 32.93 |  263.45 | Credit card |\n",
       "| 2021-06-01 | North   | Wholesale | Frame &amp; body          | 16 | 37.84 |  605.44 | Transfer    |\n",
       "| 2021-06-01 | Central | Retail    | Engine                |  2 | 60.48 |  120.96 | Credit card |\n",
       "| 2021-06-01 | North   | Wholesale | Suspension &amp; traction | 40 | 37.37 | 1494.80 | Transfer    |\n",
       "\n"
      ],
      "text/plain": [
       "  date       warehouse client_type product_line          quantity unit_price\n",
       "1 2021-06-01 Central   Retail      Miscellaneous          8       16.85     \n",
       "2 2021-06-01 North     Retail      Breaking system        9       19.29     \n",
       "3 2021-06-01 North     Retail      Suspension & traction  8       32.93     \n",
       "4 2021-06-01 North     Wholesale   Frame & body          16       37.84     \n",
       "5 2021-06-01 Central   Retail      Engine                 2       60.48     \n",
       "6 2021-06-01 North     Wholesale   Suspension & traction 40       37.37     \n",
       "  total   payment    \n",
       "1  134.83 Credit card\n",
       "2  173.61 Cash       \n",
       "3  263.45 Credit card\n",
       "4  605.44 Transfer   \n",
       "5  120.96 Credit card\n",
       "6 1494.80 Transfer   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(tibbled_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "037aa451",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.487049Z",
     "iopub.status.busy": "2023-07-29T16:09:57.485418Z",
     "iopub.status.idle": "2023-07-29T16:09:57.518782Z",
     "shell.execute_reply": "2023-07-29T16:09:57.516824Z"
    },
    "papermill": {
     "duration": 0.044691,
     "end_time": "2023-07-29T16:09:57.522690",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.477999",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,000 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ date        : IDate[1:1000], format: \"2021-06-01\" \"2021-06-01\" ...\n",
      " $ warehouse   : chr [1:1000] \"Central\" \"North\" \"North\" \"North\" ...\n",
      " $ client_type : chr [1:1000] \"Retail\" \"Retail\" \"Retail\" \"Wholesale\" ...\n",
      " $ product_line: chr [1:1000] \"Miscellaneous\" \"Breaking system\" \"Suspension & traction\" \"Frame & body\" ...\n",
      " $ quantity    : int [1:1000] 8 9 8 16 2 40 2 10 40 6 ...\n",
      " $ unit_price  : num [1:1000] 16.9 19.3 32.9 37.8 60.5 ...\n",
      " $ total       : num [1:1000] 135 174 263 605 121 ...\n",
      " $ payment     : chr [1:1000] \"Credit card\" \"Cash\" \"Credit card\" \"Transfer\" ...\n"
     ]
    }
   ],
   "source": [
    "str(tibbled_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "f7c5de35",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.537802Z",
     "iopub.status.busy": "2023-07-29T16:09:57.536086Z",
     "iopub.status.idle": "2023-07-29T16:09:57.610064Z",
     "shell.execute_reply": "2023-07-29T16:09:57.607661Z"
    },
    "papermill": {
     "duration": 0.084505,
     "end_time": "2023-07-29T16:09:57.612983",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.528478",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>warehouse</th><th scope=col>client_type</th><th scope=col>product_line</th><th scope=col>quantity</th><th scope=col>unit_price</th><th scope=col>total</th><th scope=col>payment</th></tr>\n",
       "\t<tr><th scope=col>&lt;IDate&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2021-06-01</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 9</td><td>19.29</td><td>173.61</td><td>Cash       </td></tr>\n",
       "\t<tr><td>2021-06-01</td><td>Central</td><td>Retail</td><td>Breaking system</td><td>10</td><td>22.44</td><td>224.38</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-02</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 9</td><td>15.10</td><td>135.92</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-02</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 2</td><td>24.97</td><td> 49.94</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-04</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>19.78</td><td> 79.14</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-05</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 3</td><td>21.01</td><td> 63.03</td><td>Credit card</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 8\n",
       "\\begin{tabular}{llllllll}\n",
       " date & warehouse & client\\_type & product\\_line & quantity & unit\\_price & total & payment\\\\\n",
       " <IDate> & <chr> & <chr> & <chr> & <int> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2021-06-01 & North   & Retail & Breaking system &  9 & 19.29 & 173.61 & Cash       \\\\\n",
       "\t 2021-06-01 & Central & Retail & Breaking system & 10 & 22.44 & 224.38 & Credit card\\\\\n",
       "\t 2021-06-02 & Central & Retail & Breaking system &  9 & 15.10 & 135.92 & Credit card\\\\\n",
       "\t 2021-06-02 & West    & Retail & Breaking system &  2 & 24.97 &  49.94 & Credit card\\\\\n",
       "\t 2021-06-04 & Central & Retail & Breaking system &  4 & 19.78 &  79.14 & Credit card\\\\\n",
       "\t 2021-06-05 & Central & Retail & Breaking system &  3 & 21.01 &  63.03 & Credit card\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 8\n",
       "\n",
       "| date &lt;IDate&gt; | warehouse &lt;chr&gt; | client_type &lt;chr&gt; | product_line &lt;chr&gt; | quantity &lt;int&gt; | unit_price &lt;dbl&gt; | total &lt;dbl&gt; | payment &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 2021-06-01 | North   | Retail | Breaking system |  9 | 19.29 | 173.61 | Cash        |\n",
       "| 2021-06-01 | Central | Retail | Breaking system | 10 | 22.44 | 224.38 | Credit card |\n",
       "| 2021-06-02 | Central | Retail | Breaking system |  9 | 15.10 | 135.92 | Credit card |\n",
       "| 2021-06-02 | West    | Retail | Breaking system |  2 | 24.97 |  49.94 | Credit card |\n",
       "| 2021-06-04 | Central | Retail | Breaking system |  4 | 19.78 |  79.14 | Credit card |\n",
       "| 2021-06-05 | Central | Retail | Breaking system |  3 | 21.01 |  63.03 | Credit card |\n",
       "\n"
      ],
      "text/plain": [
       "  date       warehouse client_type product_line    quantity unit_price total \n",
       "1 2021-06-01 North     Retail      Breaking system  9       19.29      173.61\n",
       "2 2021-06-01 Central   Retail      Breaking system 10       22.44      224.38\n",
       "3 2021-06-02 Central   Retail      Breaking system  9       15.10      135.92\n",
       "4 2021-06-02 West      Retail      Breaking system  2       24.97       49.94\n",
       "5 2021-06-04 Central   Retail      Breaking system  4       19.78       79.14\n",
       "6 2021-06-05 Central   Retail      Breaking system  3       21.01       63.03\n",
       "  payment    \n",
       "1 Cash       \n",
       "2 Credit card\n",
       "3 Credit card\n",
       "4 Credit card\n",
       "5 Credit card\n",
       "6 Credit card"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [230 × 8] (S3: tbl_df/tbl/data.frame)\n",
      " $ date        : IDate[1:230], format: \"2021-06-01\" \"2021-06-01\" ...\n",
      " $ warehouse   : chr [1:230] \"North\" \"Central\" \"Central\" \"West\" ...\n",
      " $ client_type : chr [1:230] \"Retail\" \"Retail\" \"Retail\" \"Retail\" ...\n",
      " $ product_line: chr [1:230] \"Breaking system\" \"Breaking system\" \"Breaking system\" \"Breaking system\" ...\n",
      " $ quantity    : int [1:230] 9 10 9 2 4 3 6 1 4 5 ...\n",
      " $ unit_price  : num [1:230] 19.3 22.4 15.1 25 19.8 ...\n",
      " $ total       : num [1:230] 173.6 224.4 135.9 49.9 79.1 ...\n",
      " $ payment     : chr [1:230] \"Cash\" \"Credit card\" \"Credit card\" \"Credit card\" ...\n"
     ]
    }
   ],
   "source": [
    "product_lined <- filter(tibbled_data, product_line == \"Breaking system\")\n",
    "head(product_lined)\n",
    "str(product_lined)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "414dd36b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-07-29T16:09:57.631060Z",
     "iopub.status.busy": "2023-07-29T16:09:57.629376Z",
     "iopub.status.idle": "2023-07-29T16:09:57.748950Z",
     "shell.execute_reply": "2023-07-29T16:09:57.747035Z"
    },
    "papermill": {
     "duration": 0.131366,
     "end_time": "2023-07-29T16:09:57.752010",
     "exception": false,
     "start_time": "2023-07-29T16:09:57.620644",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 150 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>warehouse</th><th scope=col>client_type</th><th scope=col>product_line</th><th scope=col>quantity</th><th scope=col>unit_price</th><th scope=col>total</th><th scope=col>payment</th></tr>\n",
       "\t<tr><th scope=col>&lt;IDate&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2021-06-01</td><td>Central</td><td>Retail</td><td>Breaking system</td><td>10</td><td>22.44</td><td>224.38</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-02</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 9</td><td>15.10</td><td>135.92</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-02</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 2</td><td>24.97</td><td> 49.94</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-04</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>19.78</td><td> 79.14</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-05</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 3</td><td>21.01</td><td> 63.03</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-05</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 1</td><td>20.66</td><td> 20.66</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-06</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 5</td><td>15.16</td><td> 75.78</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-06</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>21.95</td><td> 87.79</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-06</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 7</td><td>15.43</td><td>108.00</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-07</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 7</td><td>16.33</td><td>114.30</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-07</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 6</td><td>24.60</td><td>147.61</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-08</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 1</td><td>10.46</td><td> 10.46</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-08</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 9</td><td>13.62</td><td>122.60</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-09</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 6</td><td>16.55</td><td> 99.32</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-09</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 5</td><td>14.76</td><td> 73.78</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-10</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 7</td><td>21.64</td><td>151.50</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-11</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 1</td><td>23.28</td><td> 23.28</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-11</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 5</td><td>10.63</td><td> 53.16</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-12</td><td>North  </td><td>Retail</td><td>Breaking system</td><td>10</td><td>13.24</td><td>132.37</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-12</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 9</td><td>11.67</td><td>105.02</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-12</td><td>Central</td><td>Retail</td><td>Breaking system</td><td>10</td><td>22.21</td><td>222.08</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-13</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 1</td><td>20.72</td><td> 20.72</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-14</td><td>North  </td><td>Retail</td><td>Breaking system</td><td>10</td><td>17.67</td><td>176.73</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-14</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>11.35</td><td> 45.39</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-15</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 2</td><td>20.59</td><td> 41.17</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-15</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 2</td><td>22.30</td><td> 44.59</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-16</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>14.87</td><td> 59.47</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-18</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 7</td><td>18.46</td><td>129.20</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-19</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 6</td><td>24.85</td><td>149.10</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-06-19</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 4</td><td>18.26</td><td> 73.06</td><td>Credit card</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>2021-08-09</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 4</td><td>24.11</td><td> 96.45</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-11</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 5</td><td>17.38</td><td> 86.89</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-11</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 8</td><td>10.36</td><td> 82.92</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-11</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 2</td><td>14.12</td><td> 28.23</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-11</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 1</td><td>17.75</td><td> 17.75</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-12</td><td>Central</td><td>Retail</td><td>Breaking system</td><td>10</td><td>18.27</td><td>182.68</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-12</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>12.05</td><td> 48.21</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-12</td><td>West   </td><td>Retail</td><td>Breaking system</td><td>10</td><td>21.26</td><td>212.60</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-13</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 2</td><td>12.86</td><td> 25.73</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-14</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 4</td><td>24.54</td><td> 98.17</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-17</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 9</td><td>21.07</td><td>189.60</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-17</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 8</td><td>12.57</td><td>100.56</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-17</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 1</td><td>10.92</td><td> 10.92</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-17</td><td>West   </td><td>Retail</td><td>Breaking system</td><td>10</td><td>22.10</td><td>221.05</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-18</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 2</td><td>24.88</td><td> 49.75</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-18</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 3</td><td>11.81</td><td> 35.44</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-18</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 1</td><td>13.94</td><td> 13.94</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-19</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 6</td><td>17.88</td><td>107.29</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-20</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 5</td><td>17.76</td><td> 88.80</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-21</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 3</td><td>17.12</td><td> 51.38</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-21</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 4</td><td>23.59</td><td> 94.36</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-21</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 4</td><td>14.52</td><td> 58.10</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-22</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 6</td><td>18.12</td><td>108.75</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-23</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 5</td><td>21.09</td><td>105.43</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-24</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 1</td><td>16.45</td><td> 16.45</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-24</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 1</td><td>17.06</td><td> 17.06</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-25</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 3</td><td>17.06</td><td> 51.17</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-25</td><td>North  </td><td>Retail</td><td>Breaking system</td><td> 2</td><td>21.59</td><td> 43.18</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-25</td><td>West   </td><td>Retail</td><td>Breaking system</td><td> 9</td><td>24.97</td><td>224.73</td><td>Credit card</td></tr>\n",
       "\t<tr><td>2021-08-26</td><td>Central</td><td>Retail</td><td>Breaking system</td><td> 3</td><td>13.40</td><td> 40.18</td><td>Credit card</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 150 × 8\n",
       "\\begin{tabular}{llllllll}\n",
       " date & warehouse & client\\_type & product\\_line & quantity & unit\\_price & total & payment\\\\\n",
       " <IDate> & <chr> & <chr> & <chr> & <int> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2021-06-01 & Central & Retail & Breaking system & 10 & 22.44 & 224.38 & Credit card\\\\\n",
       "\t 2021-06-02 & Central & Retail & Breaking system &  9 & 15.10 & 135.92 & Credit card\\\\\n",
       "\t 2021-06-02 & West    & Retail & Breaking system &  2 & 24.97 &  49.94 & Credit card\\\\\n",
       "\t 2021-06-04 & Central & Retail & Breaking system &  4 & 19.78 &  79.14 & Credit card\\\\\n",
       "\t 2021-06-05 & Central & Retail & Breaking system &  3 & 21.01 &  63.03 & Credit card\\\\\n",
       "\t 2021-06-05 & Central & Retail & Breaking system &  1 & 20.66 &  20.66 & Credit card\\\\\n",
       "\t 2021-06-06 & North   & Retail & Breaking system &  5 & 15.16 &  75.78 & Credit card\\\\\n",
       "\t 2021-06-06 & Central & Retail & Breaking system &  4 & 21.95 &  87.79 & Credit card\\\\\n",
       "\t 2021-06-06 & North   & Retail & Breaking system &  7 & 15.43 & 108.00 & Credit card\\\\\n",
       "\t 2021-06-07 & Central & Retail & Breaking system &  7 & 16.33 & 114.30 & Credit card\\\\\n",
       "\t 2021-06-07 & Central & Retail & Breaking system &  6 & 24.60 & 147.61 & Credit card\\\\\n",
       "\t 2021-06-08 & West    & Retail & Breaking system &  1 & 10.46 &  10.46 & Credit card\\\\\n",
       "\t 2021-06-08 & West    & Retail & Breaking system &  9 & 13.62 & 122.60 & Credit card\\\\\n",
       "\t 2021-06-09 & Central & Retail & Breaking system &  6 & 16.55 &  99.32 & Credit card\\\\\n",
       "\t 2021-06-09 & North   & Retail & Breaking system &  5 & 14.76 &  73.78 & Credit card\\\\\n",
       "\t 2021-06-10 & Central & Retail & Breaking system &  7 & 21.64 & 151.50 & Credit card\\\\\n",
       "\t 2021-06-11 & North   & Retail & Breaking system &  1 & 23.28 &  23.28 & Credit card\\\\\n",
       "\t 2021-06-11 & North   & Retail & Breaking system &  5 & 10.63 &  53.16 & Credit card\\\\\n",
       "\t 2021-06-12 & North   & Retail & Breaking system & 10 & 13.24 & 132.37 & Credit card\\\\\n",
       "\t 2021-06-12 & North   & Retail & Breaking system &  9 & 11.67 & 105.02 & Credit card\\\\\n",
       "\t 2021-06-12 & Central & Retail & Breaking system & 10 & 22.21 & 222.08 & Credit card\\\\\n",
       "\t 2021-06-13 & Central & Retail & Breaking system &  1 & 20.72 &  20.72 & Credit card\\\\\n",
       "\t 2021-06-14 & North   & Retail & Breaking system & 10 & 17.67 & 176.73 & Credit card\\\\\n",
       "\t 2021-06-14 & Central & Retail & Breaking system &  4 & 11.35 &  45.39 & Credit card\\\\\n",
       "\t 2021-06-15 & Central & Retail & Breaking system &  2 & 20.59 &  41.17 & Credit card\\\\\n",
       "\t 2021-06-15 & North   & Retail & Breaking system &  2 & 22.30 &  44.59 & Credit card\\\\\n",
       "\t 2021-06-16 & Central & Retail & Breaking system &  4 & 14.87 &  59.47 & Credit card\\\\\n",
       "\t 2021-06-18 & Central & Retail & Breaking system &  7 & 18.46 & 129.20 & Credit card\\\\\n",
       "\t 2021-06-19 & North   & Retail & Breaking system &  6 & 24.85 & 149.10 & Credit card\\\\\n",
       "\t 2021-06-19 & West    & Retail & Breaking system &  4 & 18.26 &  73.06 & Credit card\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t 2021-08-09 & North   & Retail & Breaking system &  4 & 24.11 &  96.45 & Credit card\\\\\n",
       "\t 2021-08-11 & North   & Retail & Breaking system &  5 & 17.38 &  86.89 & Credit card\\\\\n",
       "\t 2021-08-11 & West    & Retail & Breaking system &  8 & 10.36 &  82.92 & Credit card\\\\\n",
       "\t 2021-08-11 & Central & Retail & Breaking system &  2 & 14.12 &  28.23 & Credit card\\\\\n",
       "\t 2021-08-11 & West    & Retail & Breaking system &  1 & 17.75 &  17.75 & Credit card\\\\\n",
       "\t 2021-08-12 & Central & Retail & Breaking system & 10 & 18.27 & 182.68 & Credit card\\\\\n",
       "\t 2021-08-12 & Central & Retail & Breaking system &  4 & 12.05 &  48.21 & Credit card\\\\\n",
       "\t 2021-08-12 & West    & Retail & Breaking system & 10 & 21.26 & 212.60 & Credit card\\\\\n",
       "\t 2021-08-13 & Central & Retail & Breaking system &  2 & 12.86 &  25.73 & Credit card\\\\\n",
       "\t 2021-08-14 & West    & Retail & Breaking system &  4 & 24.54 &  98.17 & Credit card\\\\\n",
       "\t 2021-08-17 & North   & Retail & Breaking system &  9 & 21.07 & 189.60 & Credit card\\\\\n",
       "\t 2021-08-17 & Central & Retail & Breaking system &  8 & 12.57 & 100.56 & Credit card\\\\\n",
       "\t 2021-08-17 & North   & Retail & Breaking system &  1 & 10.92 &  10.92 & Credit card\\\\\n",
       "\t 2021-08-17 & West    & Retail & Breaking system & 10 & 22.10 & 221.05 & Credit card\\\\\n",
       "\t 2021-08-18 & Central & Retail & Breaking system &  2 & 24.88 &  49.75 & Credit card\\\\\n",
       "\t 2021-08-18 & Central & Retail & Breaking system &  3 & 11.81 &  35.44 & Credit card\\\\\n",
       "\t 2021-08-18 & Central & Retail & Breaking system &  1 & 13.94 &  13.94 & Credit card\\\\\n",
       "\t 2021-08-19 & West    & Retail & Breaking system &  6 & 17.88 & 107.29 & Credit card\\\\\n",
       "\t 2021-08-20 & North   & Retail & Breaking system &  5 & 17.76 &  88.80 & Credit card\\\\\n",
       "\t 2021-08-21 & North   & Retail & Breaking system &  3 & 17.12 &  51.38 & Credit card\\\\\n",
       "\t 2021-08-21 & Central & Retail & Breaking system &  4 & 23.59 &  94.36 & Credit card\\\\\n",
       "\t 2021-08-21 & North   & Retail & Breaking system &  4 & 14.52 &  58.10 & Credit card\\\\\n",
       "\t 2021-08-22 & Central & Retail & Breaking system &  6 & 18.12 & 108.75 & Credit card\\\\\n",
       "\t 2021-08-23 & Central & Retail & Breaking system &  5 & 21.09 & 105.43 & Credit card\\\\\n",
       "\t 2021-08-24 & West    & Retail & Breaking system &  1 & 16.45 &  16.45 & Credit card\\\\\n",
       "\t 2021-08-24 & North   & Retail & Breaking system &  1 & 17.06 &  17.06 & Credit card\\\\\n",
       "\t 2021-08-25 & North   & Retail & Breaking system &  3 & 17.06 &  51.17 & Credit card\\\\\n",
       "\t 2021-08-25 & North   & Retail & Breaking system &  2 & 21.59 &  43.18 & Credit card\\\\\n",
       "\t 2021-08-25 & West    & Retail & Breaking system &  9 & 24.97 & 224.73 & Credit card\\\\\n",
       "\t 2021-08-26 & Central & Retail & Breaking system &  3 & 13.40 &  40.18 & Credit card\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 150 × 8\n",
       "\n",
       "| date &lt;IDate&gt; | warehouse &lt;chr&gt; | client_type &lt;chr&gt; | product_line &lt;chr&gt; | quantity &lt;int&gt; | unit_price &lt;dbl&gt; | total &lt;dbl&gt; | payment &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 2021-06-01 | Central | Retail | Breaking system | 10 | 22.44 | 224.38 | Credit card |\n",
       "| 2021-06-02 | Central | Retail | Breaking system |  9 | 15.10 | 135.92 | Credit card |\n",
       "| 2021-06-02 | West    | Retail | Breaking system |  2 | 24.97 |  49.94 | Credit card |\n",
       "| 2021-06-04 | Central | Retail | Breaking system |  4 | 19.78 |  79.14 | Credit card |\n",
       "| 2021-06-05 | Central | Retail | Breaking system |  3 | 21.01 |  63.03 | Credit card |\n",
       "| 2021-06-05 | Central | Retail | Breaking system |  1 | 20.66 |  20.66 | Credit card |\n",
       "| 2021-06-06 | North   | Retail | Breaking system |  5 | 15.16 |  75.78 | Credit card |\n",
       "| 2021-06-06 | Central | Retail | Breaking system |  4 | 21.95 |  87.79 | Credit card |\n",
       "| 2021-06-06 | North   | Retail | Breaking system |  7 | 15.43 | 108.00 | Credit card |\n",
       "| 2021-06-07 | Central | Retail | Breaking system |  7 | 16.33 | 114.30 | Credit card |\n",
       "| 2021-06-07 | Central | Retail | Breaking system |  6 | 24.60 | 147.61 | Credit card |\n",
       "| 2021-06-08 | West    | Retail | Breaking system |  1 | 10.46 |  10.46 | Credit card |\n",
       "| 2021-06-08 | West    | Retail | Breaking system |  9 | 13.62 | 122.60 | Credit card |\n",
       "| 2021-06-09 | Central | Retail | Breaking system |  6 | 16.55 |  99.32 | Credit card |\n",
       "| 2021-06-09 | North   | Retail | Breaking system |  5 | 14.76 |  73.78 | Credit card |\n",
       "| 2021-06-10 | Central | Retail | Breaking system |  7 | 21.64 | 151.50 | Credit card |\n",
       "| 2021-06-11 | North   | Retail | Breaking system |  1 | 23.28 |  23.28 | Credit card |\n",
       "| 2021-06-11 | North   | Retail | Breaking system |  5 | 10.63 |  53.16 | Credit card |\n",
       "| 2021-06-12 | North   | Retail | Breaking system | 10 | 13.24 | 132.37 | Credit card |\n",
       "| 2021-06-12 | North   | Retail | Breaking system |  9 | 11.67 | 105.02 | Credit card |\n",
       "| 2021-06-12 | Central | Retail | Breaking system | 10 | 22.21 | 222.08 | Credit card |\n",
       "| 2021-06-13 | Central | Retail | Breaking system |  1 | 20.72 |  20.72 | Credit card |\n",
       "| 2021-06-14 | North   | Retail | Breaking system | 10 | 17.67 | 176.73 | Credit card |\n",
       "| 2021-06-14 | Central | Retail | Breaking system |  4 | 11.35 |  45.39 | Credit card |\n",
       "| 2021-06-15 | Central | Retail | Breaking system |  2 | 20.59 |  41.17 | Credit card |\n",
       "| 2021-06-15 | North   | Retail | Breaking system |  2 | 22.30 |  44.59 | Credit card |\n",
       "| 2021-06-16 | Central | Retail | Breaking system |  4 | 14.87 |  59.47 | Credit card |\n",
       "| 2021-06-18 | Central | Retail | Breaking system |  7 | 18.46 | 129.20 | Credit card |\n",
       "| 2021-06-19 | North   | Retail | Breaking system |  6 | 24.85 | 149.10 | Credit card |\n",
       "| 2021-06-19 | West    | Retail | Breaking system |  4 | 18.26 |  73.06 | Credit card |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 2021-08-09 | North   | Retail | Breaking system |  4 | 24.11 |  96.45 | Credit card |\n",
       "| 2021-08-11 | North   | Retail | Breaking system |  5 | 17.38 |  86.89 | Credit card |\n",
       "| 2021-08-11 | West    | Retail | Breaking system |  8 | 10.36 |  82.92 | Credit card |\n",
       "| 2021-08-11 | Central | Retail | Breaking system |  2 | 14.12 |  28.23 | Credit card |\n",
       "| 2021-08-11 | West    | Retail | Breaking system |  1 | 17.75 |  17.75 | Credit card |\n",
       "| 2021-08-12 | Central | Retail | Breaking system | 10 | 18.27 | 182.68 | Credit card |\n",
       "| 2021-08-12 | Central | Retail | Breaking system |  4 | 12.05 |  48.21 | Credit card |\n",
       "| 2021-08-12 | West    | Retail | Breaking system | 10 | 21.26 | 212.60 | Credit card |\n",
       "| 2021-08-13 | Central | Retail | Breaking system |  2 | 12.86 |  25.73 | Credit card |\n",
       "| 2021-08-14 | West    | Retail | Breaking system |  4 | 24.54 |  98.17 | Credit card |\n",
       "| 2021-08-17 | North   | Retail | Breaking system |  9 | 21.07 | 189.60 | Credit card |\n",
       "| 2021-08-17 | Central | Retail | Breaking system |  8 | 12.57 | 100.56 | Credit card |\n",
       "| 2021-08-17 | North   | Retail | Breaking system |  1 | 10.92 |  10.92 | Credit card |\n",
       "| 2021-08-17 | West    | Retail | Breaking system | 10 | 22.10 | 221.05 | Credit card |\n",
       "| 2021-08-18 | Central | Retail | Breaking system |  2 | 24.88 |  49.75 | Credit card |\n",
       "| 2021-08-18 | Central | Retail | Breaking system |  3 | 11.81 |  35.44 | Credit card |\n",
       "| 2021-08-18 | Central | Retail | Breaking system |  1 | 13.94 |  13.94 | Credit card |\n",
       "| 2021-08-19 | West    | Retail | Breaking system |  6 | 17.88 | 107.29 | Credit card |\n",
       "| 2021-08-20 | North   | Retail | Breaking system |  5 | 17.76 |  88.80 | Credit card |\n",
       "| 2021-08-21 | North   | Retail | Breaking system |  3 | 17.12 |  51.38 | Credit card |\n",
       "| 2021-08-21 | Central | Retail | Breaking system |  4 | 23.59 |  94.36 | Credit card |\n",
       "| 2021-08-21 | North   | Retail | Breaking system |  4 | 14.52 |  58.10 | Credit card |\n",
       "| 2021-08-22 | Central | Retail | Breaking system |  6 | 18.12 | 108.75 | Credit card |\n",
       "| 2021-08-23 | Central | Retail | Breaking system |  5 | 21.09 | 105.43 | Credit card |\n",
       "| 2021-08-24 | West    | Retail | Breaking system |  1 | 16.45 |  16.45 | Credit card |\n",
       "| 2021-08-24 | North   | Retail | Breaking system |  1 | 17.06 |  17.06 | Credit card |\n",
       "| 2021-08-25 | North   | Retail | Breaking system |  3 | 17.06 |  51.17 | Credit card |\n",
       "| 2021-08-25 | North   | Retail | Breaking system |  2 | 21.59 |  43.18 | Credit card |\n",
       "| 2021-08-25 | West    | Retail | Breaking system |  9 | 24.97 | 224.73 | Credit card |\n",
       "| 2021-08-26 | Central | Retail | Breaking system |  3 | 13.40 |  40.18 | Credit card |\n",
       "\n"
      ],
      "text/plain": [
       "    date       warehouse client_type product_line    quantity unit_price total \n",
       "1   2021-06-01 Central   Retail      Breaking system 10       22.44      224.38\n",
       "2   2021-06-02 Central   Retail      Breaking system  9       15.10      135.92\n",
       "3   2021-06-02 West      Retail      Breaking system  2       24.97       49.94\n",
       "4   2021-06-04 Central   Retail      Breaking system  4       19.78       79.14\n",
       "5   2021-06-05 Central   Retail      Breaking system  3       21.01       63.03\n",
       "6   2021-06-05 Central   Retail      Breaking system  1       20.66       20.66\n",
       "7   2021-06-06 North     Retail      Breaking system  5       15.16       75.78\n",
       "8   2021-06-06 Central   Retail      Breaking system  4       21.95       87.79\n",
       "9   2021-06-06 North     Retail      Breaking system  7       15.43      108.00\n",
       "10  2021-06-07 Central   Retail      Breaking system  7       16.33      114.30\n",
       "11  2021-06-07 Central   Retail      Breaking system  6       24.60      147.61\n",
       "12  2021-06-08 West      Retail      Breaking system  1       10.46       10.46\n",
       "13  2021-06-08 West      Retail      Breaking system  9       13.62      122.60\n",
       "14  2021-06-09 Central   Retail      Breaking system  6       16.55       99.32\n",
       "15  2021-06-09 North     Retail      Breaking system  5       14.76       73.78\n",
       "16  2021-06-10 Central   Retail      Breaking system  7       21.64      151.50\n",
       "17  2021-06-11 North     Retail      Breaking system  1       23.28       23.28\n",
       "18  2021-06-11 North     Retail      Breaking system  5       10.63       53.16\n",
       "19  2021-06-12 North     Retail      Breaking system 10       13.24      132.37\n",
       "20  2021-06-12 North     Retail      Breaking system  9       11.67      105.02\n",
       "21  2021-06-12 Central   Retail      Breaking system 10       22.21      222.08\n",
       "22  2021-06-13 Central   Retail      Breaking system  1       20.72       20.72\n",
       "23  2021-06-14 North     Retail      Breaking system 10       17.67      176.73\n",
       "24  2021-06-14 Central   Retail      Breaking system  4       11.35       45.39\n",
       "25  2021-06-15 Central   Retail      Breaking system  2       20.59       41.17\n",
       "26  2021-06-15 North     Retail      Breaking system  2       22.30       44.59\n",
       "27  2021-06-16 Central   Retail      Breaking system  4       14.87       59.47\n",
       "28  2021-06-18 Central   Retail      Breaking system  7       18.46      129.20\n",
       "29  2021-06-19 North     Retail      Breaking system  6       24.85      149.10\n",
       "30  2021-06-19 West      Retail      Breaking system  4       18.26       73.06\n",
       "⋮   ⋮          ⋮         ⋮           ⋮               ⋮        ⋮          ⋮     \n",
       "121 2021-08-09 North     Retail      Breaking system  4       24.11       96.45\n",
       "122 2021-08-11 North     Retail      Breaking system  5       17.38       86.89\n",
       "123 2021-08-11 West      Retail      Breaking system  8       10.36       82.92\n",
       "124 2021-08-11 Central   Retail      Breaking system  2       14.12       28.23\n",
       "125 2021-08-11 West      Retail      Breaking system  1       17.75       17.75\n",
       "126 2021-08-12 Central   Retail      Breaking system 10       18.27      182.68\n",
       "127 2021-08-12 Central   Retail      Breaking system  4       12.05       48.21\n",
       "128 2021-08-12 West      Retail      Breaking system 10       21.26      212.60\n",
       "129 2021-08-13 Central   Retail      Breaking system  2       12.86       25.73\n",
       "130 2021-08-14 West      Retail      Breaking system  4       24.54       98.17\n",
       "131 2021-08-17 North     Retail      Breaking system  9       21.07      189.60\n",
       "132 2021-08-17 Central   Retail      Breaking system  8       12.57      100.56\n",
       "133 2021-08-17 North     Retail      Breaking system  1       10.92       10.92\n",
       "134 2021-08-17 West      Retail      Breaking system 10       22.10      221.05\n",
       "135 2021-08-18 Central   Retail      Breaking system  2       24.88       49.75\n",
       "136 2021-08-18 Central   Retail      Breaking system  3       11.81       35.44\n",
       "137 2021-08-18 Central   Retail      Breaking system  1       13.94       13.94\n",
       "138 2021-08-19 West      Retail      Breaking system  6       17.88      107.29\n",
       "139 2021-08-20 North     Retail      Breaking system  5       17.76       88.80\n",
       "140 2021-08-21 North     Retail      Breaking system  3       17.12       51.38\n",
       "141 2021-08-21 Central   Retail      Breaking system  4       23.59       94.36\n",
       "142 2021-08-21 North     Retail      Breaking system  4       14.52       58.10\n",
       "143 2021-08-22 Central   Retail      Breaking system  6       18.12      108.75\n",
       "144 2021-08-23 Central   Retail      Breaking system  5       21.09      105.43\n",
       "145 2021-08-24 West      Retail      Breaking system  1       16.45       16.45\n",
       "146 2021-08-24 North     Retail      Breaking system  1       17.06       17.06\n",
       "147 2021-08-25 North     Retail      Breaking system  3       17.06       51.17\n",
       "148 2021-08-25 North     Retail      Breaking system  2       21.59       43.18\n",
       "149 2021-08-25 West      Retail      Breaking system  9       24.97      224.73\n",
       "150 2021-08-26 Central   Retail      Breaking system  3       13.40       40.18\n",
       "    payment    \n",
       "1   Credit card\n",
       "2   Credit card\n",
       "3   Credit card\n",
       "4   Credit card\n",
       "5   Credit card\n",
       "6   Credit card\n",
       "7   Credit card\n",
       "8   Credit card\n",
       "9   Credit card\n",
       "10  Credit card\n",
       "11  Credit card\n",
       "12  Credit card\n",
       "13  Credit card\n",
       "14  Credit card\n",
       "15  Credit card\n",
       "16  Credit card\n",
       "17  Credit card\n",
       "18  Credit card\n",
       "19  Credit card\n",
       "20  Credit card\n",
       "21  Credit card\n",
       "22  Credit card\n",
       "23  Credit card\n",
       "24  Credit card\n",
       "25  Credit card\n",
       "26  Credit card\n",
       "27  Credit card\n",
       "28  Credit card\n",
       "29  Credit card\n",
       "30  Credit card\n",
       "⋮   ⋮          \n",
       "121 Credit card\n",
       "122 Credit card\n",
       "123 Credit card\n",
       "124 Credit card\n",
       "125 Credit card\n",
       "126 Credit card\n",
       "127 Credit card\n",
       "128 Credit card\n",
       "129 Credit card\n",
       "130 Credit card\n",
       "131 Credit card\n",
       "132 Credit card\n",
       "133 Credit card\n",
       "134 Credit card\n",
       "135 Credit card\n",
       "136 Credit card\n",
       "137 Credit card\n",
       "138 Credit card\n",
       "139 Credit card\n",
       "140 Credit card\n",
       "141 Credit card\n",
       "142 Credit card\n",
       "143 Credit card\n",
       "144 Credit card\n",
       "145 Credit card\n",
       "146 Credit card\n",
       "147 Credit card\n",
       "148 Credit card\n",
       "149 Credit card\n",
       "150 Credit card"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "payment_type <- filter(product_lined, payment == \"Credit card\")\n",
    "payment_type"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 6.27159,
   "end_time": "2023-07-29T16:09:57.883442",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-07-29T16:09:51.611852",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

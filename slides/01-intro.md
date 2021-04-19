---
author: Colin A. Gross
title: BRAVO Development
date: 2021-04-20
---

# Freeze8 BRAVO

## Architecture
- API Flask app
- Browser Flask app
    - Embedded Vue components
    - Handles auth
- Mongo database: 667 GB
- Data files (crams + coverage): 4.1 TB 

## Development
- Multiple projects
- Single repository
- Manual integration testing
- Obligate server side deployment

## Deploy Dir 
Source and config combined

```
bravo2-freeze8/
├── bravo_api
├── bravo_browser
├── config
├── instance
│   ├── api.py
│   ├── client_secret_browser.json
│   └── web.py
├── requirements.txt
├── run_bravo_api.sh
├── run_bravo_browser.sh
├── venv
└── web_components
```

## Data Dir
```
/data/crams/freeze8_hg38/
├── [4.0T]  sequences
│   └── 261158 files in 256 directories
├── [ 10G]  variant_map.tsv.gz
└── [2.6M]  variant_map.tsv.gz.tbi
```



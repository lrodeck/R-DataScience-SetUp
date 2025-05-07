# 🎯 R Data Science & Visualization Environment

A fully-featured R environment for data analytics, machine learning, and deep learning with beautiful, themed data visualizations using `ggplot2`.

---

## 📦 Scripts

### `setup_environment.R`

Sets up your R system with essential packages for:
- Data analysis: `tidyverse`, `data.table`, `lubridate`
- Visualization: `ggplot2`, `plotly`, `patchwork`
- Machine Learning: `caret`, `xgboost`, `lightgbm`, `tidymodels`
- Deep Learning: `tensorflow`, `keras`, `torch`
- Time Series: `forecast`, `prophet`, `fable`
- I/O and Reporting: `arrow`, `DBI`, `rmarkdown`, `quarto`

✅ Automatically installs and loads packages  
✅ Configures TensorFlow with optional GPU  
✅ Initializes project folder structure  
✅ Sets global plot/documentation options

---

### `themes.R`

Adds custom `ggplot2` themes with **Google Fonts via `showtext`**:

#### 1. 🧱 `theme_neo_brutalist()`
> Bold, raw, and structural. Uses **Anton** font.

#### 2. 🌅 `theme_pastel_minimal()`
> Soft, clean minimalism. Uses **Quicksand** font.

#### 3. 🌌 `theme_dark_dashboard()`
> Ideal for dashboards and dark UIs. Uses **Fira Sans**.

#### 4. 🌻 `theme_flat_fun()`
> Playful and vibrant. Uses **Baloo 2**.

Each theme supports DPI-optimized rendering for publication and PDF/PNG export.

---

## 🧪 Quick Start

1. Clone or copy the scripts into your project
2. Open R or RStudio
3. Run:

```r
source("setup_environment.R")  # One-time setup
source("themes.R")             # Load themes
```

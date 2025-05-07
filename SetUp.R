#############################################
# R Environment Setup for Data & ML Projects
# Author: Your Name
# Date: 2025-05-07
# Purpose: Bootstrap R for data analytics, ML, DL
#############################################

# ---- 1. INSTALL PACKAGES ----

required_packages <- c(
  # Core Data Manipulation
  "tidyverse", "data.table", "lubridate", "janitor",
  
  # Visualization
  "ggplot2", "plotly", "ggthemes", "ggridges", "patchwork",
  
  # Statistics & Modeling
  "broom", "car", "effects", "MASS", "lmtest",
  
  # ML & DL
  "caret", "randomForest", "xgboost", "lightgbm",
  "keras", "tensorflow", "torch", "tidymodels",
  
  # Data I/O
  "readxl", "writexl", "arrow", "jsonlite", "DBI", "RSQLite",
  
  # Time Series
  "forecast", "prophet", "tsibble", "fable", "timetk",
  
  # Reporting
  "rmarkdown", "knitr", "quarto", "gt", "DT"
)

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

invisible(lapply(required_packages, install_if_missing))


# ---- 2. LOAD LIBRARIES ----

lapply(required_packages, library, character.only = TRUE)


# ---- 3. SYSTEM OPTIONS ----

options(stringsAsFactors = FALSE)
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Make plots inline in notebooks
if (requireNamespace("knitr", quietly = TRUE)) {
  knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)
}


# ---- 4. TENSORFLOW / KERAS SETUP ----

if (!keras::is_keras_available()) {
  keras::install_keras()
}

if (!tensorflow::tf_version()) {
  tensorflow::install_tensorflow()
}

# Check GPU availability
if (tensorflow::tf_gpu_configured()) {
  cat("✅ TensorFlow is configured with GPU support.\n")
} else {
  cat("⚠️ TensorFlow is using CPU. Consider configuring GPU if available.\n")
}


# ---- 5. CREATE PROJECT STRUCTURE ----

dirs <- c("data/raw", "data/processed", "notebooks", "scripts", "models", "output")

for (dir in dirs) {
  if (!dir.exists(dir)) dir.create(dir, recursive = TRUE)
}


# ---- 6. HELPER FUNCTION EXAMPLE ----

scale_numeric <- function(df) {
  df %>% mutate(across(where(is.numeric), scale))
}

cat("✅ Environment setup complete. Happy analyzing!\n")

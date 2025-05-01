# Conda Environment Setup and Installation Script for Data Science and Machine Learning

This repository contains a script and configuration for setting up a Conda environment tailored for data science, machine learning, and web development. The environment contains popular libraries for data analysis, model building, visualization, and deployment, and the script automates the process of installing Conda on any Linux system.

## Features:
- **Python 3.11**: The environment is set up with Python 3.11 for modern functionality and performance improvements.
- **Data Science Libraries**: Includes essential libraries like `numpy`, `pandas`, `matplotlib`, `seaborn`, `plotly`, and `ydata-profiling` for data analysis and visualization.
- **Machine Learning**: With packages like `pycaret[full]`, `mlflow`, `qdrant-client`, and `openai`, this environment is optimized for machine learning workflows and model management.
- **Web Development**: `streamlit` and additional tools like `streamlit-audiorecorder` for building interactive web applications.
- **Audio and Video Processing**: Includes `ffmpeg` and `pydub` for handling audio and video files, useful for media-based data projects.
- **Cloud Integration**: With `boto3` and `s3fs`, you can easily interact with Amazon S3 and other AWS services directly from your environment.
- **Data Validation**: Using `pandera` to ensure that the data used in analysis and modeling meets expected standards.
- **Financial Data**: The `yfinance` package allows for easy retrieval of historical stock data.
- **Environment Variables**: `python-dotenv` for managing environment variables in your projects.

## Installation Script
To simplify the setup, we've provided an installation script that will automatically download and install Conda on your Linux system.

### Setup Instructions:
1. **Clone this repository** to your local machine:
    ```bash
    git clone <repository-url>
    cd <repository-folder>
    ```

2. **Run the setup script** to install Conda:
    ```bash
    bash install_conda.sh
    ```

### Conda Environment Setup:
After Conda is installed, create the environment from the `environment.yml` file:
```bash
conda env create -f environment.yml
Then, activate the Conda environment:

conda activate <environment-name>
The environment is now ready for use with all dependencies installed.

Additional Installation:
Some additional Python dependencies are installed using pip:

instructor, pydantic, date-a-scientist, streamlit-audiorecorder, itables, langfuse, anthropic.

These packages extend functionality for specific needs such as creating interactive data tables (itables), integrating with language models (langfuse), and more.

Notes:
This environment is specifically designed for data science and machine learning projects and includes both essential libraries and specialized tools.

For additional packages or customization, feel free to edit the environment.yml file and install new dependencies as needed.

install_conda.sh Script Explanation
This script automates the installation of Miniconda (a minimal version of Conda) on any Linux system. It ensures that required tools are available, downloads the Conda installer, installs Miniconda, and configures the system's environment.


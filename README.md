# London Weather Project
It is a regression problem to predict mean temperature in London using historical weather data. The data is really dirty and needs to be cleaned before training the model. The model is trained using a simple linear regression model, Decision Tree Regressor, and Random Forest Regressor. The model is evaluated using RMSE. We will be using Mlflow to track the model performance and hyperparameters.

Credit: [Datacamp](https://app.datacamp.com/learn/projects/predicting_temperature_in_london/guided/Python)       

View notebook in [Data Lab](https://www.datacamp.com/datalab/w/7c5cae29-54f6-4b34-a76c-e27e7d4b698e/edit)    

## Table of Contents
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Structure
.   
├── Dockerfile - Dockerfile to run the project   
├── london_weather.csv - Dataset  
├── Makefile - Makefile for cheatcodes  
├── notebook.ipynb - Jupyter notebook  
├── README.md - Readme file  
├── requirements.txt - Dependencies  
├── tower_bridge.jpg - Image   
└── weather_dataset.html - HTML scan of the dataset   

## Installation

We are using Python 3.12 for the project.      

1. Clone the repository   

```bash
git clone london_weather_prediction
```

2. Make a virtual environment   
```bash
python3 -m venv .venv
```

3. Activate the virtual environment   
```bash
source .venv/bin/activate
```

4. Install the dependencies    
```bash
pip install -r requirements.txt
```

5. In one step   
```bash
make install
```


## Usage
This project uses a jupyter notebook to do the experiments. The key findings are the data contains a lot of missing values, colliear features, and outliers. We use preprocessing techniques:imputation, transformation: box-cox,yeo-johnson, and scaling: standard scaler. Feature engineering is done to extract the day, month, and year from the date. As well as annotating the season of the year. Interactions terms were also created since features are collinear in the dataset.   

The best performance was achieved by Random Forest Regressor with RMSE of 0.4 on the validation set. The model was tracked using Mlflow. The model was saved in the model folder. The model can be loaded and used for prediction.    

The most important features were:
max_min_temperature    
sunshine_global_radiation   
pressure_precipitation   

The model can be improved by using more advanced models like XGBoost, LightGBM, and CatBoost.   

More details can be found in the jupyter notebook.     

## Contributing
Contributions are welcome. Please create a pull request. We encourage you to try out different models and preprocessing techniques.


## License
[License information.](https://github.com/Shuyib/london_weather_prediction/blob/main/LICENSE)

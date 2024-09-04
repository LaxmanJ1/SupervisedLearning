# Seed Classification and Prediction with Decision Tree and K-NN

## Project Overview
This project focuses on classifying different types of seeds based on their physical characteristics using two machine learning algorithms: Decision Tree and K-Nearest Neighbors (K-NN). The dataset consists of various features such as seed width, length, and others, which are used to predict the type of seed. The project includes data preprocessing, model training, testing, evaluation, and visualisation of the results.

## Project Structure
The project is structured as follows:
- **Data Preparation:** The dataset is randomly shuffled and split into training and test sets.
- **Decision Tree Model:** A decision tree is trained on the training data, visualised, and pruned for optimization. The model is then tested for accuracy.
- **K-NN Model:** The K-NN algorithm is applied with different values of 'k' to evaluate the model's accuracy on the test data.
- **Visualization:** Scatter plots are generated to visualise the decision boundaries and the relationship between the seed features.

## Files
- **seeds_dataset_class.csv:** The dataset containing the seed features and class labels.
- **Supervised.R:** The main R script that includes the entire workflow, from data loading to model evaluation and visualisation.

## Results
- The decision tree model provides a visual representation of how the seed types are classified based on their features. The pruning process improves the model's accuracy.
- The K-NN model is evaluated with different 'k' values to find the optimal number for classification accuracy.
- The scatter plots help in understanding the distribution of seed types based on width and length.

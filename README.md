# Data-for-AENSGA-II
This is the official data for our manuscript: Multi-objective path planning for unmanned surface vehicles using adaptive enhanced non-dominated sorting genetic algorithm (AENSGA-II) with fuzzy inference selector. 
 

### Requirements:
MATLAB 2021a environment is preferred.\
The Navigational Toolbox package is required.

### How to use it?
To start using the data, please find the "plotres.m" file in each folder and run it. Then you will see the visualized results of our works. 

### Data description of Static envonment folder
* **xxxxpath#.mat**: Coordinates and heading angles of the solution.
* **Objective_value_xxxx.xls**: Statistical measurements of the objective values for each algorithm. 

### Data description of [Dynamic_environment](https://github.com/LiangZhao13/Data-for-AENSGA-II/tree/main/Dynamic_environment) folder
* [map.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/map.mat): Environment information.
* [chi.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/chi.mat): Course change of the USV model. 
* [chi_d.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/chi_d.mat): Reference course change provided by the guidance system. 
* [omega_chi](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/omega_chi.mat): Turning rate of the USV model.
* [out.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/out.mat): Collection of all the simulation data with replanned path.
* [outoriginal.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/outoriginal.mat): Collection of all the simulation data with original path.
* [position.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/position.mat): Coordinates of the USV trajectory. 
* [speed.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/speed.mat): Forward speed of the USV model.
* [time.mat](https://github.com/LiangZhao13/Data-for-AENSGA-II/blob/main/Dynamic_environment/time.mat): Time steps of the simulation.

_Note: All the data in this category is recorded under the sampling rate of 0.05 s._


If you have any question about the data, please contact the author by email: liamzhao13@zju.edu.cn

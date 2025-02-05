# Customs-risk-early-warning-and-prevention-model-for-cross-border-e-commerce-goods
Customs risk early warning and prevention model for cross-border e-commerce goods based on BP neural network
# abstract 
Cross-border e-commerce goods face multiple risks during customs clearance. How to effectively identify and warn these risks is an important issue in customs management. Traditional risk assessment methods have problems such as complex data processing and low efficiency, and are difficult to adapt to the rapid development needs of current cross-border e-commerce. This study constructs a customs risk warning and prevention model for cross-border e-commerce goods based on BP neural network. First, the risk factors are screened and weighted by cluster analysis and entropy method, and a comprehensive indicator system including management risk, supply chain risk, tax risk, product risk and compliance risk is constructed. Then, the improved radar chart method is used to visualize the risk assessment, and the BP neural network is combined to predict and classify the risk. The model shows a high accuracy rate in the test of 13 samples of 954 cross-border e-commerce transaction data, and can effectively warn cross-border e-commerce goods of different risk levels. The research results show that the training model has good accuracy, and the BP neural network warning model constructed in this paper has a strong reference value for the actual cross-border e-commerce goods customs risk warning decision. This model provides a scientific and efficient risk warning tool for cross-border e-commerce goods for customs management, and complements the research on customs risk warning and prevention and control of cross-border e-commerce goods. It helps to improve customs clearance efficiency, reduce risk losses, enhance customs supervision capabilities, and promote the healthy development of the cross-border e-commerce industry.
# Data Source
We selected [Customs Import Declaration Datasets](https://github.com/Seondong/Customs-Declaration-Datasets?ysclid=m5xxxh5xof444002658) from [Sundong Kim](https://github.com/Seondong) The dataset contains 54,000 artificially generated transactions with 22 key attributes and synthesized with CTGAN while maintaining relevant attributes. The fabrication step minimizes possible identity risks that may exist in trade statistics, and the released data follows a distribution similar to the source data so that it can be used for various downstream tasks. We selected import type=15 (e-commerce import type) from the 54,000 data and found that there are 954 feature data in total. These 954 data were analyzed and sorted.
# Data Adjustment
Of course, in order to make our research more in line with China's current situation, we manually performed some special processing on the 954 synthetic data of cross-border e-commerce trade after screening, such as declaration time C1, declaration customs department C2, high-risk countries C3, transportation method C4, excluding packaging weight C5, risk of delivery service providers (such as DHL, FedEx) C6, person declaring items C7, consumer importing the goods C8, overseas business partners supplying goods to China C9, item tax rate C10, tax type (for example, FTA preferential tax rate) C11, item assessment value C12, country of origin anomaly C13, 6-digit product code (for example, 090121 = coffee, roasted, not decaffeinated) C14, way to indicate the country of origin (for example, mark on the package) C15, distinguish tariff payment type (for example, sight payment forward letter of credit) C16, import purpose code (for example, raw materials for domestic consumption) C17. We changed the units and some countries of these factors to facilitate our experts to score and analyze them.
![image](https://github.com/user-attachments/assets/cf7c9064-2c91-4d11-b3d3-a3aaf5ca3d0a)
# Data collection and processing
When collecting data, the expert scoring method was used to process qualitative indicators, and the quantitative indicators were based on simulated data. The overall risk indicator data of 13 cross-border e-commerce goods are shown in the table.
	|   | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 9  | 10 | 11 | 12 | 13 |
|---|----|----|----|----|----|----|----|----|----|----|----|----|----|
| C1 | 61 | 66 | 62 | 61 | 82 | 81 | 70 | 70 | 78 | 78 | 79 | 50 | 52 |
| C2 | 60 | 63 | 62 | 62 | 62 | 69 | 61 | 74 | 88 | 77 | 86 | 72 | 64 |
| C3 | 62 | 69 | 65 | 62 | 69 | 68 | 63 | 60 | 75 | 66 | 75 | 62 | 63 |
| C4 | 80 | 68 | 82 | 61 | 66 | 85 | 83 | 81 | 69 | 88 | 69 | 61 | 66 |
| C5 | 220 | 4954 | 6048 | 63 | 1 | 7715 | 1 | 36 | 80 | 238 | 6 | 17920 | 4 |
| C6 | 71 | 76 | 71 | 48 | 68 | 67 | 71 | 72 | 79 | 77 | 76 | 43 | 70 |
| C7 | 40 | 77 | 44 | 70 | 68 | 96 | 66 | 65 | 95 | 74 | 77 | 43 | 60 |
| C8 | 42 | 86 | 43 | 55 | 87 | 84 | 51 | 53 | 89 | 85 | 89 | 51 | 51 |
| C9 | 53 | 88 | 68 | 50 | 89 | 88 | 52 | 54 | 85 | 89 | 69 | 52 | 55 |
| C10 | 13 | 0 | 0 | 13 | 0 | 8 | 0 | 8 | 0 | 0 | 7 | 27 | 8 |
| C11 | 71 | 100 | 73 | 71 | 85 | 79 | 73 | 70 | 100 | 88 | 76 | 71 | 70 |
| C12 | 30866 | 1676760 | 7276 | 5837 | 1116 | 20059 | 64 | 350 | 1240 | 51884 | 46 | 5254144 | 163 |
| C13 | 63 | 66 | 65 | 64 | 64 | 66 | 64 | 51 | 66 | 65 | 69 | 60 | 61 |
| C14 | 62 | 78 | 64 | 68 | 87 | 73 | 66 | 60 | 94 | 97 | 87 | 61 | 64 |
| C15 | 80 | 62 | 90 | 52 | 55 | 87 | 81 | 60 | 75 | 68 | 79 | 60 | 65 |
| C16 | 60 | 79 | 82 | 62 | 69 | 65 | 63 | 65 | 66 | 89 | 88 | 65 | 72 |
| C17 | 60 | 67 | 66 | 62 | 68 | 62 | 65 | 62 | 61 | 69 | 64 | 60 | 61 |

Then, we used the entropy method to calculate the weights, and used the improved radar chart method with the help of standard samples to calculate the risk threshold of cross-border e-commerce goods. Based on this, we measured the 13 samples we randomly selected.

| Evaluation Level | Safety Zone | General Risk Zone | Severe Risk Zone |
|------------------|-------------|-------------------|------------------|
| Risk Relationship Coefficient Value | [0, 0.2619) | [0.2619, 0.6831) | [0.6831, 1) |

The collection of standard samples and random samples is shown in the following table

| Sample order | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 |
|--------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|
| C1           | 0 | 65 | 85 | 100 | 61 | 66 | 62 | 61 | 82 | 81 | 70 | 70 | 78 | 78 | 79 | 50 | 52 |
| C2           | 0 | 65 | 85 | 100 | 60 | 63 | 62 | 62 | 62 | 69 | 61 | 74 | 88 | 77 | 86 | 72 | 64 |
| C3           | 0 | 65 | 85 | 100 | 62 | 69 | 65 | 62 | 69 | 68 | 63 | 60 | 75 | 66 | 75 | 62 | 63 |
| C4           | 0 | 65 | 85 | 100 | 80 | 68 | 82 | 61 | 66 | 85 | 83 | 81 | 69 | 88 | 69 | 61 | 66 |
| C5           | 1630000 | 24 | 3 | 0 | 220 | 4953.5 | 6048.2 | 62.9 | 0.6 | 7715 | 0.7 | 36.1 | 79.5 | 238 | 6 | 17920 | 3.8 |
| C6           | 0 | 65 | 85 | 100 | 71 | 76 | 71 | 48 | 68 | 67 | 71 | 72 | 79 | 77 | 76 | 43 | 70 |
| C7           | 0 | 65 | 85 | 100 | 40 | 77 | 44 | 70 | 68 | 96 | 66 | 65 | 95 | 74 | 77 | 43 | 60 |
| C8           | 0 | 65 | 85 | 100 | 42 | 86 | 43 | 55 | 87 | 84 | 51 | 53 | 89 | 85 | 89 | 51 | 51 |
| C9           | 0 | 65 | 85 | 100 | 53 | 88 | 68 | 50 | 89 | 88 | 52 | 54 | 85 | 89 | 69 | 52 | 55 |
| C10          | 0 | 6.5 | 10 | 377.5 | 13 | 0 | 0 | 13 | 0 | 8 | 0 | 8 | 0 | 0 | 6.5 | 27 | 8 |
| C11          | 0 | 65 | 85 | 100 | 71 | 100 | 73 | 71 | 85 | 79 | 73 | 70 | 100 | 88 | 76 | 71 | 70 |
| C12          | 0 | 36575 | 884698.36 | 630810000 | 30866.00004 | 1676760 | 7275.84 | 5837.12 | 1116.06 | 20059 | 63.84 | 350.17 | 1240.2 | 51884 | 45.6 | 5254144 | 162.64 |
| C13          | 0 | 65 | 85 | 100 | 63 | 66 | 65 | 64 | 64 | 66 | 64 | 51 | 66 | 65 | 69 | 60 | 61 |
| C14          | 0 | 65 | 85 | 100 | 62 | 78 | 64 | 68 | 87 | 73 | 66 | 60 | 94 | 97 | 87 | 61 | 64 |
| C15          | 0 | 65 | 85 | 100 | 80 | 62 | 90 | 52 | 55 | 87 | 81 | 60 | 75 | 68 | 79 | 60 | 65 |
| C16          | 0 | 65 | 85 | 100 | 60 | 79 | 82 | 62 | 69 | 65 | 63 | 65 | 66 | 89 | 88 | 65 | 72 |
| C17          | 0 | 65 | 85 | 100 | 60 | 67 | 66 | 62 | 68 | 62 | 65 | 62 | 61 | 69 | 64 | 60 | 61 |
| Risk value (fi) | 0 | 0.261914974 | 0.683076773 | 1 | 0.255514723 | 0.386310211 | 0.257917625 | 0.240452245 | 0.31423126 | 0.412417886 | 0.260192659 | 0.256299209 | 0.359079757 | 0.424141301 | 0.39420297 | 0.25823946 | 0.253266758 |
# Test results display
| Sample number | Expected output value | Network output value | Absolute error |
|---------------|-----------------------|----------------------|----------------|
| 1             | 0                     | 0.0004               | -0.0004        |
| 2             | 0.261914974           | 0.2583               | 0.003614974    |
| 3             | 0.683076773           | 0.6561               | 0.026976773    |
| 4             | 1                     | 1.0013               | -0.0013        |
| 5             | 0.255514723           | 0.2025               | 0.053014723    |
| 6             | 0.386310211           | 0.3793               | 0.007010211    |
| 7             | 0.257917625           | 0.2587               | -0.000782375   |
| 8             | 0.240452245           | 0.2409               | -0.000447755   |
| 9             | 0.31423126            | 0.3857               | -0.07146874    |
| 10            | 0.412417886           | 0.3419               | 0.070517886    |
| 11            | 0.260192659           | 0.2609               | -0.000707341   |
| 12            | 0.256299209           | 0.3143               | -0.058000791   |
| 13            | 0.359079757           | 0.3516               | 0.007479757    |
| 14            | 0.424141301           | 0.5274               | -0.103258699   |
| 15            | 0.39420297            | 0.4279               | -0.03369703    |
| 16            | 0.25823946            | 0.1962               | 0.06203946     |
| 17            | 0.253266758           | 0.2069               | 0.046366758    |

The comparison of the risk inspection sample results and the actual operation results of cross-border e-commerce goods is shown in the table. It can be found that the inspection samples are very close to the actual operation evaluation values. This training model maintains a high accuracy rate. Therefore, the trained BP neural network early warning model can be applied to the risk early warning of real cross-border e-commerce goods, providing a scientific theoretical basis for risk management decision makers and has strong practical value.
# Contact
Zhang Shuhan,Undergraduate student of Shanghai Customs University(zhangshuhan1031@163.com)



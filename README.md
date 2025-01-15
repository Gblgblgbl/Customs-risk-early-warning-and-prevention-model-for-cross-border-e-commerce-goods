# Customs-risk-early-warning-and-prevention-model-for-cross-border-e-commerce-goods
Customs risk early warning and prevention model for cross-border e-commerce goods based on BP neural network
# abstract 
Cross-border e-commerce goods face multiple risks during customs clearance. How to effectively identify and warn these risks is an important issue in customs management. Traditional risk assessment methods have problems such as complex data processing and low efficiency, and are difficult to adapt to the rapid development needs of current cross-border e-commerce. This study constructs a customs risk warning and prevention model for cross-border e-commerce goods based on BP neural network. First, the risk factors are screened and weighted by cluster analysis and entropy method, and a comprehensive indicator system including management risk, supply chain risk, tax risk, product risk and compliance risk is constructed. Then, the improved radar chart method is used to visualize the risk assessment, and the BP neural network is combined to predict and classify the risk. The model shows a high accuracy rate in the test of 13 samples of 954 cross-border e-commerce transaction data, and can effectively warn cross-border e-commerce goods of different risk levels. The research results show that the training model has good accuracy, and the BP neural network warning model constructed in this paper has a strong reference value for the actual cross-border e-commerce goods customs risk warning decision. This model provides a scientific and efficient risk warning tool for cross-border e-commerce goods for customs management, and complements the research on customs risk warning and prevention and control of cross-border e-commerce goods. It helps to improve customs clearance efficiency, reduce risk losses, enhance customs supervision capabilities, and promote the healthy development of the cross-border e-commerce industry.
# Data Source
We selected [Customs Import Declaration Datasets](https://github.com/Seondong/Customs-Declaration-Datasets?ysclid=m5xxxh5xof444002658) from [Sundong Kim](https://github.com/Seondong) The dataset contains 54,000 artificially generated transactions with 22 key attributes and synthesized with CTGAN while maintaining relevant attributes. The fabrication step minimizes possible identity risks that may exist in trade statistics, and the released data follows a distribution similar to the source data so that it can be used for various downstream tasks. We selected import type=15 (e-commerce import type) from the 54,000 data and found that there are 954 feature data in total. These 954 data were analyzed and sorted.
# Data Adjustment
Of course, in order to make our research more in line with China's current situation, we manually performed some special processing on the 954 synthetic data of cross-border e-commerce trade after screening, such as declaration time C1, declaration customs department C2, high-risk countries C3, transportation method C4, excluding packaging weight C5, risk of delivery service providers (such as DHL, FedEx) C6, person declaring items C7, consumer importing the goods C8, overseas business partners supplying goods to China C9, item tax rate C10, tax type (for example, FTA preferential tax rate) C11, item assessment value C12, country of origin anomaly C13, 6-digit product code (for example, 090121 = coffee, roasted, not decaffeinated) C14, way to indicate the country of origin (for example, mark on the package) C15, distinguish tariff payment type (for example, sight payment forward letter of credit) C16, import purpose code (for example, raw materials for domestic consumption) C17. We changed the units and some countries of these factors to facilitate our experts to score and analyze them.
![image](https://github.com/user-attachments/assets/cf7c9064-2c91-4d11-b3d3-a3aaf5ca3d0a)
# Contact
Zhang Shuhan,Undergraduate student of Shanghai Customs University(zhangshuhan1031@163.com)



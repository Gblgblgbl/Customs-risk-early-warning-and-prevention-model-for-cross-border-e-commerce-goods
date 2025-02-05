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
	1 	2 	3 	4 	5 	6 	7 	8 	9 	10 	11 	12 	13 
C1	61 	66 	62 	61 	82 	81 	70 	70 	78 	78 	79 	50 	52 
C2	60 	63 	62 	62 	62 	69 	61 	74 	88 	77 	86 	72 	64 
C3	62 	69 	65 	62 	69 	68 	63 	60 	75 	66 	75 	62 	63 
C4	80 	68 	82 	61 	66 	85 	83 	81 	69 	88 	69 	61 	66 
C5	220 	4954 	6048 	63 	1 	7715 	1 	36 	80 	238 	6 	17920 	4 
C6	71 	76 	71 	48 	68 	67 	71 	72 	79 	77 	76 	43 	70 
C7	40 	77 	44 	70 	68 	96 	66 	65 	95 	74 	77 	43 	60 
C8	42 	86 	43 	55 	87 	84 	51 	53 	89 	85 	89 	51 	51 
C9	53 	88 	68 	50 	89 	88 	52 	54 	85 	89 	69 	52 	55 
C10	13 	0 	0 	13 	0 	8 	0 	8 	0 	0 	7 	27 	8 
C11	71 	100 	73 	71 	85 	79 	73 	70 	100 	88 	76 	71 	70 
C12	30866 	1676760 	7276 	5837 	1116 	20059 	64 	350 	1240 	51884 	46 	5254144 	163 
C13	63 	66 	65 	64 	64 	66 	64 	51 	66 	65 	69 	60 	61 
C14	62 	78 	64 	68 	87 	73 	66 	60 	94 	97 	87 	61 	64 
C15	80 	62 	90 	52 	55 	87 	81 	60 	75 	68 	79 	60 	65 
C16	60 	79 	82 	62 	69 	65 	63 	65 	66 	89 	88 	65 	72 
C17	60 	67 	66 	62 	68 	62 	65 	62 	61 	69 	64 	60 	61 
# Contact
Zhang Shuhan,Undergraduate student of Shanghai Customs University(zhangshuhan1031@163.com)



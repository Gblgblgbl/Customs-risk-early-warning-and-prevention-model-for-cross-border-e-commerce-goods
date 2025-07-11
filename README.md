# Customs-risk-early-warning-and-prevention-model-for-cross-border-e-commerce-goods
Customs risk early warning and prevention model for cross-border e-commerce goods based on BP neural network
# abstract 
Cross-border e-commerce goods face multiple risks during customs clearance. How to effectively identify and warn these risks is an important issue in customs management. Traditional risk assessment methods have problems such as complex data processing and low efficiency, and are difficult to adapt to the rapid development needs of current cross-border e-commerce. This study constructs a customs risk warning and prevention model for cross-border e-commerce goods based on BP neural network. First, the risk factors are screened and weighted by cluster analysis and entropy method, and a comprehensive indicator system including management risk, supply chain risk, tax risk, product risk and compliance risk is constructed. Then, the improved radar chart method is used to visualize the risk assessment, and the BP neural network is combined to predict and classify the risk. The model shows a high accuracy rate in the test of 100 samples of 954 cross-border e-commerce transaction data, and can effectively warn cross-border e-commerce goods of different risk levels. The research results show that the training model has good accuracy, and the BP neural network warning model constructed in this paper has a strong reference value for the actual cross-border e-commerce goods customs risk warning decision. This model provides a scientific and efficient risk warning tool for cross-border e-commerce goods for customs management, and complements the research on customs risk warning and prevention and control of cross-border e-commerce goods. It helps to improve customs clearance efficiency, reduce risk losses, enhance customs supervision capabilities, and promote the healthy development of the cross-border e-commerce industry.
# Data Source
We selected [Customs Import Declaration Datasets](https://github.com/Seondong/Customs-Declaration-Datasets?ysclid=m5xxxh5xof444002658) from [Sundong Kim](https://github.com/Seondong) The dataset contains 54,000 artificially generated transactions with 22 key attributes and synthesized with CTGAN while maintaining relevant attributes. The fabrication step minimizes possible identity risks that may exist in trade statistics, and the released data follows a distribution similar to the source data so that it can be used for various downstream tasks. We selected import type=15 (e-commerce import type) from the 54,000 data and found that there are 954 feature data in total. These 954 data were analyzed and sorted.
# Data Adjustment
Of course, in order to make our research more in line with China's current situation, we manually performed some special processing on the 954 synthetic data of cross-border e-commerce trade after screening, such as declaration time C1, declaration customs department C2, high-risk countries C3, transportation method C4, excluding packaging weight C5, risk of delivery service providers (such as DHL, FedEx) C6, person declaring items C7, consumer importing the goods C8, overseas business partners supplying goods to China C9, item tax rate C10, tax type (for example, FTA preferential tax rate) C11, item assessment value C12, country of origin anomaly C13, 6-digit product code (for example, 090121 = coffee, roasted, not decaffeinated) C14, way to indicate the country of origin (for example, mark on the package) C15, distinguish tariff payment type (for example, sight payment forward letter of credit) C16, import purpose code (for example, raw materials for domestic consumption) C17. We changed the units and some countries of these factors to facilitate our experts to score and analyze them.
![image](https://github.com/user-attachments/assets/cf7c9064-2c91-4d11-b3d3-a3aaf5ca3d0a)
# Data collection and processing
When collecting data, the processing of qualitative indicators was processed by local expert scoring combined with machine learning methods, while the selection of quantitative indicators was based on simulated data. First, the qualitative indicators of the first 13 cross-border e-commerce were scored by experts, and the next 87 samples were scored using machine learning methods. After scoring, the overall risk indicator data of the 13 cross-border e-commerce goods with quantitative indicators are shown in the following table.
Scoring indicator factors with a percentage system can more carefully evaluate the specific risk level of each indicator. The percentage system provides a more refined classification, which helps to identify and manage risks more accurately. Expert scoring can use their professional knowledge and experience to ensure the accuracy and rationality of scoring. The machine learning method can process a large amount of data and improve the efficiency and consistency of scoring. Especially when processing 87 samples, machine learning can quickly complete the task and save time and manpower.
First, use expert scoring to process a small amount of data to ensure data quality, and then use machine learning to process a large amount of data. This combines the advantages of both, ensuring the accuracy of the data and improving the efficiency of overall processing.
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

Then, we used machine learning to score the next 87 samples. After scoring on a 100-point scale, the overall risk index data of 100 cross-border e-commerce goods with quantitative indicators (A2.5A3.1A3) are shown in Table. C1-C17 are various indicator factors, and 1-100 are the serial numbers of the goods samples.
|   | C1 | C2 | C3 | C4 | C5      | C6 | C7 | C8 | C9 | C10 | C11 | C12       | C13 | C14 | C15 | C16 | C17 |
|---|----|----|----|----|---------|----|----|----|----|-----|-----|-----------|-----|-----|-----|-----|-----|
| 1 | 61 | 60 | 62 | 80 | 220     | 71 | 40 | 42 | 53 | 13  | 71  | 30866.00004| 63  | 62  | 80  | 60  | 60  |
| 2 | 66 | 63 | 69 | 68 | 4953.5  | 76 | 77 | 86 | 88 | 0   | 100 | 1676760   | 66  | 78  | 62  | 79  | 67  |
| 3 | 62 | 62 | 65 | 82 | 6048.2  | 71 | 44 | 43 | 68 | 0   | 73  | 7275.84   | 65  | 64  | 90  | 82  | 66  |
| 4 | 61 | 62 | 62 | 61 | 62.9    | 48 | 70 | 55 | 50 | 13  | 71  | 5837.12   | 64  | 68  | 52  | 62  | 62  |
| 5 | 82 | 62 | 69 | 66 | 0.6     | 68 | 68 | 87 | 89 | 0   | 85  | 1116.06   | 64  | 87  | 55  | 69  | 68  |
| 6 | 81 | 69 | 68 | 85 | 7715    | 67 | 96 | 84 | 88 | 8   | 79  | 20059     | 66  | 73  | 87  | 65  | 62  |
| 7 | 70 | 61 | 63 | 83 | 0.7     | 71 | 66 | 51 | 52 | 0   | 73  | 63.84     | 64  | 66  | 81  | 63  | 65  |
| 8 | 70 | 74 | 60 | 81 | 36.1    | 72 | 65 | 53 | 54 | 8   | 70  | 350.17    | 51  | 60  | 60  | 65  | 62  |
| 9 | 78 | 88 | 75 | 69 | 79.5    | 79 | 95 | 89 | 85 | 0   | 100 | 1240.2    | 66  | 94  | 75  | 66  | 61  |
| 10| 78 | 77 | 66 | 88 | 238     | 77 | 74 | 85 | 89 | 0   | 88  | 51884     | 65  | 97  | 68  | 89  | 69  |
| 11| 79 | 86 | 75 | 69 | 6       | 76 | 77 | 89 | 69 | 6.5 | 76  | 45.6      | 69  | 87  | 79  | 88  | 64  |
| 12| 50 | 72 | 62 | 61 | 17920   | 43 | 43 | 51 | 52 | 27  | 71  | 5254144   | 60  | 61  | 60  | 65  | 60  |
| 13| 52 | 64 | 63 | 66 | 3.8     | 70 | 60 | 51 | 55 | 8   | 70  | 162.64    | 61  | 64  | 65  | 72  | 61  |
| 14| 66 | 69 | 64 | 76 | 87      | 68 | 73 | 60 | 64 | 8   | 76  | 1278.9    | 61  | 67  | 73  | 68  | 62  |
| 15| 71 | 74 | 69 | 68 | 549.3   | 70 | 82 | 78 | 75 | 0   | 89  | 108541.68 | 64  | 81  | 65  | 68  | 63  |
| 16| 76 | 79 | 71 | 71 | 0.9     | 72 | 78 | 79 | 69 | 6.5 | 79  | 6831.27   | 66  | 82  | 74  | 76  | 63  |
| 17| 71 | 75 | 69 | 73 | 29.8    | 74 | 72 | 72 | 70 | 0   | 80  | 3891.88   | 64  | 77  | 74  | 76  | 64  |
| 18| 71 | 72 | 65 | 78 | 23328   | 74 | 68 | 63 | 65 | 0   | 78  | 2950992   | 59  | 70  | 71  | 70  | 64  |
| 19| 71 | 67 | 65 | 80 | 117     | 71 | 70 | 62 | 66 | 6.5 | 77  | 2234.7    | 63  | 70  | 78  | 69  | 64  |
| 20| 69 | 66 | 68 | 71 | 0.7     | 70 | 76 | 76 | 75 | 6.5 | 85  | 46.06     | 66  | 76  | 70  | 73  | 65  |
| 21| 73 | 71 | 66 | 78 | 11.8    | 73 | 66 | 64 | 69 | 0   | 78  | 15002.52  | 61  | 72  | 74  | 72  | 64  |
| 22| 71 | 72 | 66 | 77 | 80.4    | 74 | 69 | 64 | 67 | 0   | 79  | 110525.88 | 60  | 71  | 72  | 71  | 64  |
| 23| 69 | 70 | 66 | 74 | 16300000| 69 | 71 | 65 | 65 | 0   | 75  | 630810000 | 62  | 71  | 70  | 70  | 63  |
| 24| 68 | 67 | 66 | 71 | 494     | 68 | 66 | 63 | 65 | 0   | 78  | 204318.4  | 62  | 73  | 65  | 70  | 64  |
| 25| 73 | 75 | 68 | 75 | 11      | 71 | 75 | 73 | 70 | 8   | 77  | 1395.9    | 63  | 74  | 74  | 75  | 63  |
| 26| 68 | 71 | 66 | 68 | 1161.6  | 65 | 77 | 71 | 68 | 8   | 80  | 28923.84  | 62  | 74  | 62  | 68  | 62  |
| 27| 67 | 69 | 66 | 69 | 60000   | 66 | 71 | 66 | 64 | 27  | 76  | 15912000  | 64  | 73  | 66  | 71  | 63  |
| 28| 67 | 66 | 65 | 73 | 430     | 68 | 68 | 63 | 67 | 3.2 | 79  | 238263    | 62  | 70  | 67  | 70  | 64  |
| 29| 72 | 69 | 66 | 78 | 3       | 67 | 80 | 68 | 69 | 13  | 77  | 57.3      | 63  | 70  | 75  | 66  | 62  |
| 30| 75 | 75 | 70 | 74 | 1.5     | 75 | 80 | 80 | 77 | 0   | 85  | 27349.65  | 64  | 79  | 73  | 74  | 64  |
| 31| 65 | 64 | 64 | 70 | 80      | 65 | 64 | 59 | 63 | 13  | 75  | 8864      | 63  | 70  | 65  | 69  | 64  |
| 32| 71 | 67 | 67 | 73 | 20      | 71 | 70 | 68 | 69 | 0   | 80  | 31784     | 64  | 75  | 71  | 70  | 64  |
| 33| 72 | 73 | 66 | 77 | 16456   | 74 | 69 | 66 | 67 | 0   | 78  | 2252826.4 | 61  | 72  | 73  | 72  | 64  |
| 34| 67 | 65 | 65 | 74 | 5.5     | 68 | 69 | 61 | 64 | 10  | 76  | 12.65     | 63  | 70  | 70  | 68  | 63  |
| 35| 68 | 66 | 64 | 78 | 1.5     | 68 | 72 | 60 | 64 | 13  | 74  | 123.9     | 63  | 67  | 77  | 68  | 63  |
| 36| 69 | 69 | 64 | 76 | 3       | 68 | 67 | 58 | 61 | 8   | 74  | 1.8       | 61  | 68  | 71  | 68  | 63  |
| 37| 74 | 74 | 67 | 76 | 3493.2  | 72 | 71 | 66 | 68 | 0   | 81  | 359100.96 | 61  | 75  | 71  | 68  | 64  |
| 38| 68 | 69 | 65 | 78 | 10639.7 | 70 | 73 | 62 | 63 | 8   | 74  | 1395928.64| 62  | 67  | 75  | 69  | 62  |
| 39| 74 | 73 | 67 | 74 | 484     | 73 | 73 | 71 | 68 | 0   | 80  | 21247.6   | 62  | 76  | 69  | 70  | 64  |
| 40| 75 | 75 | 69 | 73 | 17      | 73 | 76 | 75 | 68 | 6.5 | 80  | 10.2      | 65  | 79  | 74  | 73  | 64  |
| 41| 72 | 66 | 66 | 78 | 731     | 68 | 78 | 69 | 73 | 4   | 80  | 1485903.7 | 65  | 72  | 77  | 67  | 64  |
| 42| 70 | 70 | 68 | 68 | 4.5     | 66 | 81 | 75 | 74 | 13  | 85  | 70.2      | 65  | 78  | 65  | 67  | 63  |
| 43| 72 | 68 | 65 | 78 | 3.3     | 70 | 72 | 67 | 71 | 13  | 77  | 672.54    | 60  | 69  | 69  | 68  | 64  |
| 44| 78 | 74 | 68 | 79 | 50.8    | 73 | 75 | 73 | 70 | 6.5 | 77  | 71.12     | 64  | 76  | 79  | 73  | 65  |
| 45| 74 | 74 | 69 | 73 | 120.7   | 73 | 75 | 73 | 68 | 4   | 80  | 17127.33  | 64  | 78  | 74  | 72  | 64  |
| 46| 67 | 69 | 66 | 74 | 5       | 71 | 69 | 64 | 67 | 2.4 | 80  | 115       | 63  | 71  | 71  | 71  | 63  |
| 47| 73 | 70 | 68 | 71 | 0.4     | 69 | 74 | 74 | 69 | 6.5 | 80  | 116.12    | 64  | 77  | 66  | 72  | 64  |
| 48| 75 | 75 | 70 | 67 | 0.5     | 66 | 78 | 79 | 68 | 6.5 | 80  | 215.6     | 66  | 82  | 66  | 72  | 64  |
| 49| 71 | 74 | 69 | 68 | 3       | 71 | 73 | 75 | 69 | 0   | 81  | 2171.1    | 64  | 79  | 65  | 73  | 64  |
| 50| 72 | 73 | 65 | 75 | 6       | 69 | 71 | 65 | 64 | 8   | 74  | 75        | 59  | 71  | 66  | 67  | 63  |
| 51| 68 | 66 | 68 | 70 | 3868.6  | 70 | 73 | 75 | 77 | 4.2 | 84  | 1620556.54| 65  | 76  | 67  | 73  | 64  |
| 52| 62 | 66 | 65 | 69 | 156.3   | 69 | 68 | 63 | 64 | 8   | 78  | 3126      | 63  | 70  | 66  | 72  | 63  |
| 53| 68 | 68 | 66 | 73 | 29      | 66 | 76 | 68 | 66 | 13  | 77  | 2691.2    | 64  | 71  | 70  | 69  | 63  |
| 54| 69 | 69 | 67 | 70 | 10.2    | 69 | 76 | 73 | 73 | 3.2 | 84  | 2109.36   | 64  | 76  | 67  | 70  | 63  |
| 55| 65 | 68 | 66 | 69 | 4       | 69 | 73 | 69 | 68 | 8   | 80  | 998       | 63  | 72  | 65  | 72  | 63  |
| 56| 69 | 66 | 65 | 77 | 30      | 69 | 63 | 58 | 63 | 6.5 | 75  | 68643     | 63  | 70  | 75  | 71  | 65  |
| 57| 67 | 70 | 65 | 71 | 800     | 70 | 68 | 64 | 64 | 8   | 78  | 1347600   | 61  | 72  | 65  | 70  | 63  |
| 58| 67 | 67 | 65 | 78 | 389.6   | 72 | 65 | 59 | 65 | 0   | 78  | 32258.88  | 61  | 68  | 73  | 71  | 64  |
| 59| 66 | 67 | 67 | 71 | 24.8    | 68 | 70 | 65 | 70 | 0   | 81  | 76656.8   | 65  | 74  | 72  | 72  | 64  |
| 60| 72 | 69 | 67 | 71 | 2.9     | 70 | 64 | 67 | 66 | 0   | 78  | 43065.87  | 63  | 76  | 65  | 71  | 65  |
| 61| 66 | 66 | 65 | 71 | 13.5    | 69 | 70 | 67 | 69 | 8   | 81  | 183.6     | 62  | 71  | 64  | 70  | 64  |
| 62| 76 | 72 | 66 | 80 | 557     | 73 | 72 | 66 | 67 | 0   | 77  | 618102.9  | 60  | 72  | 73  | 68  | 64  |
| 63| 70 | 72 | 66 | 74 | 3.1     | 74 | 69 | 67 | 67 | 0   | 80  | 1427.86   | 61  | 73  | 69  | 71  | 64  |
| 64| 68 | 67 | 67 | 73 | 6963.9  | 70 | 70 | 66 | 67 | 0   | 79  | 4782110.13| 66  | 74  | 75  | 71  | 64  |
| 65| 67 | 69 | 67 | 68 | 114     | 69 | 70 | 69 | 68 | 3.2 | 80  | 131692.8  | 65  | 76  | 66  | 73  | 64  |
| 66| 74 | 70 | 68 | 73 | 11      | 72 | 71 | 75 | 73 | 0   | 81  | 8710.9    | 63  | 77  | 68  | 73  | 65  |
| 67| 67 | 69 | 68 | 69 | 9072    | 71 | 71 | 71 | 70 | 0   | 82  | 4003473.6 | 66  | 77  | 71  | 74  | 64  |
| 68| 67 | 67 | 66 | 73 | 384     | 70 | 64 | 62 | 68 | 2.4 | 79  | 139814.4  | 64  | 73  | 71  | 73  | 64  |
| 69| 70 | 68 | 67 | 69 | 0       | 67 | 72 | 71 | 70 | 0   | 81  | 0         | 64  | 76  | 64  | 70  | 64  |
| 70| 76 | 72 | 66 | 79 | 181.5   | 70 | 77 | 70 | 68 | 8   | 76  | 28586.25  | 62  | 72  | 74  | 69  | 63  |
| 71| 71 | 67 | 66 | 74 | 1790    | 67 | 72 | 67 | 70 | 2.4 | 79  | 332403    | 64  | 73  | 71  | 70  | 64  |
| 72| 69 | 70 | 67 | 71 | 14      | 72 | 68 | 67 | 68 | 5   | 81  | 5717.6    | 62  | 75  | 66  | 72  | 64  |
| 73| 67 | 70 | 67 | 72 | 216.8   | 70 | 74 | 68 | 65 | 8   | 77  | 12899.6   | 64  | 72  | 71  | 71  | 63  |
| 74| 70 | 65 | 67 | 70 | 131.9   | 69 | 73 | 76 | 78 | 0   | 84  | 537149.56 | 65  | 77  | 66  | 71  | 65  |
| 75| 68 | 73 | 68 | 67 | 18890   | 68 | 73 | 74 | 67 | 0   | 77  | 185122    | 64  | 75  | 65  | 77  | 63  |
| 76| 68 | 64 | 65 | 72 | 22500   | 67 | 70 | 67 | 71 | 27  | 79  | 5505750   | 63  | 71  | 65  | 69  | 64  |
| 77| 71 | 75 | 68 | 71 | 2       | 72 | 77 | 76 | 69 | 8   | 78  | 41.4      | 62  | 75  | 67  | 75  | 63  |
| 78| 72 | 73 | 68 | 71 | 9000    | 70 | 77 | 75 | 72 | 10  | 80  | 2020500   | 64  | 76  | 69  | 72  | 63  |
| 79| 71 | 72 | 67 | 71 | 220     | 73 | 69 | 71 | 70 | 0   | 82  | 83138     | 62  | 77  | 65  | 72  | 64  |
| 80| 73 | 73 | 66 | 75 | 0.5     | 69 | 70 | 66 | 63 | 8   | 73  | 321.55    | 61  | 72  | 71  | 71  | 63  |
| 81| 71 | 64 | 67 | 71 | 16      | 67 | 65 | 69 | 73 | 0   | 79  | 11784     | 66  | 76  | 71  | 74  | 66  |
| 82| 73 | 68 | 66 | 78 | 10.3    | 71 | 72 | 67 | 70 | 0   | 78  | 2863.4    | 63  | 72  | 74  | 69  | 64  |
| 83| 68 | 66 | 64 | 76 | 65.5    | 67 | 65 | 56 | 61 | 8   | 73  | 1277.25   | 61  | 67  | 71  | 68  | 63  |
| 84| 66 | 68 | 66 | 72 | 0.5     | 69 | 72 | 67 | 68 | 13  | 79  | 25.9      | 62  | 70  | 68  | 72  | 63  |
| 85| 70 | 63 | 65 | 78 | 1125.3  | 70 | 69 | 66 | 74 | 2.4 | 80  | 30495.63  | 63  | 70  | 73  | 70  | 65  |
| 86| 72 | 69 | 66 | 76 | 0.6     | 73 | 73 | 72 | 74 | 0   | 83  | 198.9     | 60  | 72  | 67  | 71  | 64  |
| 87| 71 | 74 | 68 | 68 | 525     | 71 | 73 | 74 | 68 | 0   | 81  | 77910     | 63  | 78  | 64  | 73  | 64  |
| 88| 75 | 74 | 67 | 77 | 0.4     | 71 | 67 | 66 | 63 | 6.5 | 74  | 0.24      | 62  | 74  | 74  | 73  | 64  |
| 89| 64 | 69 | 65 | 69 | 3       | 68 | 72 | 64 | 65 | 8   | 77  | 2606.1    | 62  | 71  | 66  | 69  | 62  |
| 90| 69 | 69 | 67 | 72 | 1500    | 67 | 73 | 67 | 68 | 0   | 79  | 1797300   | 64  | 74  | 70  | 69  | 63  |
| 91| 70 | 72 | 69 | 69 | 1266    | 71 | 76 | 76 | 73 | 0   | 83  | 857082    | 65  | 78  | 68  | 74  | 64  |
| 92| 68 | 71 | 68 | 70 | 40      | 74 | 69 | 70 | 68 | 0   | 81  | 2660      | 64  | 76  | 69  | 76  | 64  |
| 93| 77 | 71 | 68 | 73 | 6.4     | 69 | 79 | 80 | 74 | 8   | 78  | 1683.2    | 64  | 78  | 70  | 71  | 64  |
| 94| 69 | 66 | 66 | 78 | 5.9     | 70 | 71 | 63 | 68 | 0   | 78  | 5.9       | 64  | 70  | 78  | 69  | 64  |
| 95| 74 | 72 | 68 | 76 | 4       | 71 | 76 | 74 | 75 | 8   | 79  | 9.2       | 63  | 74  | 74  | 73  | 63  |
| 96| 66 | 68 | 66 | 70 | 16.7    | 68 | 73 | 68 | 68 | 13  | 80  | 7720.41   | 62  | 72  | 65  | 70  | 63  |
| 97| 71 | 70 | 67 | 69 | 800     | 67 | 77 | 76 | 70 | 8   | 79  | 83360     | 64  | 77  | 64  | 70  | 63  |
| 98| 71 | 70 | 67 | 76 | 774.5   | 69 | 76 | 70 | 71 | 2.4 | 80  | 6118.55   | 63  | 72  | 73  | 70  | 63  |
| 99| 75 | 72 | 67 | 79 | 489.4   | 73 | 73 | 67 | 68 | 0   | 78  | 18744.02  | 62  | 73  | 76  | 69  | 64  |
| 100| 73 | 73 | 68 | 70 | 100    | 70 | 70 | 72 | 67 | 0   | 80  | 6250      | 63  | 79  | 66  | 72  | 64  |

On the basis of this data, the above-mentioned indicator weight determination method, namely the entropy method, is used to determine the weight corresponding to each risk indicator in the indicator system. This is specifically implemented by using Python using the formula mentioned above to calculate and finally obtain the weighted values ​​for each indicator as shown in the table.

| Criteria Layer | Indicator Layer | Indicator Weight | Ranking |
|----------------|------------------|------------------|---------|
| Management risk | Declaration time | 0.06294601       | 4       |
| Management risk | Declaration to the customs department | 0.06190906 | 14      |
| Supply chain risk | Passing through high-risk countries, countries shipped or planned to be shipped | 0.06263205 | 7       |
| Supply chain risk | Transportation method | 0.06233453 | 12      |
| Supply chain risk | Excluding packaging weight | 0.06330322 | 1       |
| Supply chain risk | Risk of distribution service providers (e.g. DHL, FedEx) | 0.06316696 | 2       |
| Supply chain risk | People who declare items | 0.0629336  | 5       |
| Supply chain risk | Consumers who import the goods | 0.06258831 | 8       |
| Supply chain risk | Overseas business partners who supply goods to China | 0.06241387 | 11      |
| Tax risk | Item tax rate | 0.0540816  | 16      |
| Tax risk | Tax type (e.g., FTA preferential tax rate) | 0.06167129 | 15      |
| Tax risk | Item Assessment Value | 0.000692863 | 17      |
| Product Risk | Country of Origin Anomaly | 0.06316386 | 3       |
| Product Risk | 6-digit product code (e.g. 090121 = coffee, roasted, not decaffeinated) | 0.06225412 | 13      |
| Compliance Risk | Means of indicating country of origin (e.g., marking on packaging) | 0.06267545 | 6       |
| Compliance Risk | Distinguishing between types of customs duty payment (e.g., sight payment, usance letter of credit) | 0.06248615 | 10      |
| Compliance Risk | Import purpose code (e.g., raw materials for domestic consumption) | 0.06253473 | 9       |

According to the formula, quantitative calculation can be performed to obtain the range of comprehensive warning index values ​​for the safety zone, general risk zone, and severe risk zone of the cross-border e-commerce goods risk warning evaluation level as shown in the table below.

| Evaluation Level | Safety Zone | General Risk Zone | Severe Risk Zone |
|------------------|-------------|-------------------|------------------|
| Risk Relationship Coefficient Value | [0, 0.3142) | [0.3142, 0.6846) | [0.6846, 1) |

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
| Risk value (fi) | 0 | 0.314203691 | 0.684636773 | 1 | 0.255514723 | 0.386310211 | 0.257917625 | 0.240452245 | 0.31423126 | 0.412417886 | 0.260192659 | 0.256299209 | 0.359079757 | 0.424141301 | 0.39420297 | 0.25823946 | 0.253266758 |
# Test results display
| Sample number | Expected output value | Network output value | Absolute error |
|---------------|-----------------------|----------------------|----------------|
| 1             | 0                     | 0.0004               | -0.0004        |
| 2             | 0.314203691           | 0.3106               | 0.003614974    |
| 3             | 0.684636773           | 0.6561               | 0.028536773    |
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



% 加载数据
num = xlsread('risk.xlsx', 'Sheet1', 'A1:R104'); % 数据范围为 17 行，18 列
input_data = num(:, 1:17); % 输入数据（前17列）
expected_output = num(:, 18); % 期望输出（第18列）

% 划分训练集和测试集
input_train = input_data(1:65, :)'; % 前65行样本作为训练输入，并转置
output_train = expected_output(1:65)'; % 前65行的期望值作为训练输出
input_test = input_data'; % 所有104行样本作为测试输入，并转置
output_test = expected_output'; % 所有104行的期望值

% 数据归一化
[input_train, ps_input] = mapminmax(input_train, 0, 1); % 输入归一化到 [0, 1]
[output_train, ps_output] = mapminmax(output_train, 0, 1); % 输出归一化到 [0, 1]
input_test = mapminmax('apply', input_test, ps_input); % 测试数据应用相同的归一化

% 创建两层隐含层神经网络
hidden_layer_neurons = [10, 6]; % 两层隐含层，节点数分别为10和6
net = newff(input_train, output_train, hidden_layer_neurons);

% 配置训练参数
net.trainParam.epochs = 500; % 增加迭代次数
net.trainParam.lr = 0.05; % 调整学习率
net.trainParam.goal = 0.0001; % 设置更小的目标误差
net.performParam.regularization = 0.1; % 增加正则化防止过拟合

% 设置激活函数
net.layers{1}.transferFcn = 'logsig'; % 第一隐含层使用 Sigmoid 激活函数
net.layers{2}.transferFcn = 'tansig'; % 第二隐含层使用双曲正切激活函数
net.layers{3}.transferFcn = 'purelin'; % 输出层使用线性激活函数

% 训练神经网络
net = train(net, input_train, output_train);

% 使用网络进行预测
network_output = sim(net, input_test);

% 还原预测输出
network_output = mapminmax('reverse', network_output, ps_output); % 还原输出到原始范围

% 显示网络输出值和期望值
disp('网络输出值:');
disp(network_output);
disp('期望值:');
disp(output_test);

% 计算误差
error = output_test - network_output;
disp('误差:');
disp(error);

% 可视化期望值和网络输出值对比
figure;
plot(1:104, output_test, '-o', 'DisplayName', 'Expected Value');
hold on;
plot(1:104, network_output, '-x', 'DisplayName', 'Network output value');
xlabel('Sample No.');
ylabel('Output value');
title('Comparison of network output and expected value');
legend;
grid on;

% 可视化误差
figure;
bar(error);
xlabel('Sample No.');
ylabel('error');
title('Prediction Error');
grid on;

**stuID Name**
*同实验者： 081730107 张骋宇*

# 扫描隧道显微镜

## 实验原理

1. 隧道电流

    扫描隧道显微镜的工作原理是基于量子力学的隧道效应。对于经典物理学来说，当一粒子的动能$E$低于前方势垒的高度$V_0$时，它不可能越过此势垒，即透射系数等于零粒子将完全被弹回，如图 1。 而按照量子力学的计算，在一般情况下，其透射系数不等于零，也就是说粒子可以穿过比它的能量更高的势垒，这个现象称为隧道效应。它是由于粒子的波动性而引起的，只有在一定的条件下，这种效应才会显著。经计算，透射系数为$T\approx\frac{16E(V_0-E)}{V_0^2}e^{-\frac{2a}{h}\sqrt{2m(V_0-E)}}$由式中可见，透射系数$T$与势垒宽度$a$、能量差$(V_0-E)$以及粒子的质量$m$有着很敏感的依赖关系，随着$a$的增加，$T$将按指数衰减。因此在宏观实验中，很难观察到粒子隧穿势垒的现象。

    扫描隧道显微镜是将原子线度的极细探针和被研究物质的表面作为两个电极，当样品与针尖的距离非常接近时(通常小于 $1nm$)，在外加电场的作用下，电子会穿过两个电极之间的势垒流向另一电极。隧道电流$I$是针尖的电子波函数与样品的电子波函数重叠的度量，与针尖和样品之间距离$S$和平均功函数$\phi$有关，即$I\propto V_b exp(-a\phi^{\frac{1}{2}}S)$。式中$V_b$是加在针尖和样品之间的偏置电压，平均功函数$\phi = (\phi_1+\phi_2)/2$，$\phi_1,\phi_2$分别为针尖和样品的功函数，$A$为常数，在真空条件下约等于 1。隧道探针一般采用直径小于 $1mm$的细金属丝，如钨丝、铂—铱丝等，被观测样品应具有一定的导电性才可以产生隧道电流。

    由(2)式可知，隧道电流强度对针尖和样品之间的距离有着指数的依赖关系，当距离减小 $0.1nm$，隧道电流即增加约一个数量级。因此，根据隧道电流的变化，我们可以得到样品表面微小的高低起伏变化的信息，如果同时对x - y方向进行扫描，就可以直接得到三维的样品表面形貌图。

## 实验仪器

$NanoView-I$ 型扫描隧道显微镜，$Pt-Ir$ 金属探针，光栅样品($1 μ m$)，金属膜(团簇)样品，高序石墨($HOPG$)样品等。$NanoView-I$ 型扫描隧道显微镜是面向教学实验开发的新型实验装置。

## 实验内容

1. 准备和安装样品、针尖

    将一段长约 3 厘米的铂铱合金丝放在丙酮中洗净，取出后用经丙酮洗净的剪刀剪尖，再放入丙酮中洗几下(在此后的实验中千万不要碰到针尖!)。将探针后部略弯曲，插入 STM头部的金属管中固定，针尖露出头部约 5 毫米。

    将样品放在样品座上，应保证良好的电接触。将下部的两个螺旋测微头向上旋起，然后把头部轻轻放在支架上(要确保针尖与样品间有一定的距离)，头部的两边用弹簧扣住。小心地细调螺旋测微头和手动控制电机，使针尖向样品逼近，用放大镜观察，在针尖和样品相距约 0.5~1mm 处停住。

2. 光栅样品图像扫描

    运行 STM 的工作软件，单击“在线扫描”，出现“STM 扫描控制”控制界面。选择“马达控制”，“隧道电流”置为 0.3~0.4nA，“针尖偏压”置为 250mV，“积分”置为 3.0，调节 Z 偏压使 Z 电压为-180~-182V，点击“自动进”。马达自动停止后，点击“单步进”，直到“Z 电压”趋近于 0 附近。

    进入“增强设置”，选择“高度”和“图像”。“扫描量程”置为 150V，“采样数”置为 256，“放大倍数”置为 1，“针尖偏压”置为 50~70mV，“隧道电流”为 0.5nA，“扫描范围” 约为 5 微米，同时选择“连续扫描”，“斜面校正”，然后单击“扫描”。点击“调色板适应”以便得到合适的图像对比度。调整扫描角度和扫描速度，同时也可微调面板上的“积分”旋钮(反馈速度)，直到获得满意的图像为止。

3. 图像处理

    1. 平滑处理：将像素与周边像素作加权平均；
    2. 斜面校正：选择斜面的一个顶点，以该顶点为基点，线性增加该图像的所有像素值，可多次操作；
    3. 中值滤波：对当前图像作中值滤波；
    4. 傅立叶变换：对当前图像作 FFT 滤波，此变换对图像的周期性很敏感，在作原子图像扫描时很有用；
    5. 边缘增强：对当前图像作边缘增强，使图像具有立体浮雕感；
    6. 图像反转：对当前图像作黑白反转；
    7. 三维变换：使平面图像变换为立体三维图像，形象直观。
   
   



/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = original gaussian_blur=2 sobel_of_gaussian_blur=2
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 3
max_depth = 2
num_trees = 100
feature_importances = 0.3749170728422295,0.49046466396228694,0.13461826319548348
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i2<20.45391082763672){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.011730205278592375;
  s1+=0.9882697947214076;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<183.38790893554688){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i2<183.91586303710938){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<170.44241333007812){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i2<183.20205688476562){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<20.308809280395508){
 if(i1<127.8768081665039){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i1<144.75350952148438){
  s0+=0.99644128113879;
  s1+=0.0035587188612099642;
 } else {
  s0+=0.01904761904761905;
  s1+=0.9809523809523809;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i1<151.42181396484375){
  s0+=0.4;
  s1+=0.6;
 } else {
  s0+=0.005420054200542005;
  s1+=0.994579945799458;
 }
}
if(i1<140.24130249023438){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i0<180.0){
  s0+=0.19696969696969696;
  s1+=0.803030303030303;
 } else {
  s0+=0.008875739644970414;
  s1+=0.9911242603550295;
 }
}
if(i1<151.4790496826172){
 if(i0<156.0){
  s0+=1.0;
 } else {
  s0+=0.8333333333333334;
  s1+=0.16666666666666666;
 }
} else {
 if(i0<212.0){
  s0+=0.02100840336134454;
  s1+=0.9789915966386554;
 } else {
  s1+=1.0;
 }
}
if(i1<144.75350952148438){
 if(i2<167.91958618164062){
  s0+=1.0;
 } else {
  s0+=0.9714285714285714;
  s1+=0.02857142857142857;
 }
} else {
 if(i1<151.42181396484375){
  s0+=0.5;
  s1+=0.5;
 } else {
  s0+=0.008152173913043478;
  s1+=0.9918478260869565;
 }
}
if(i2<17.58138656616211){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<144.0){
  s0+=1.0;
 } else {
  s0+=0.03254437869822485;
  s1+=0.9674556213017751;
 }
}
if(i2<20.256519317626953){
 if(i1<127.62830352783203){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i2<121.45431518554688){
  s0+=0.415506958250497;
  s1+=0.584493041749503;
 } else {
  s0+=0.9405940594059405;
  s1+=0.0594059405940594;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<183.20205688476562){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<17.58138656616211){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.01466275659824047;
  s1+=0.9853372434017595;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<183.20205688476562){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<144.75350952148438){
 if(i0<164.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<188.0){
  s0+=0.030303030303030304;
  s1+=0.9696969696969697;
 } else {
  s0+=0.003952569169960474;
  s1+=0.9960474308300395;
 }
}
if(i1<141.61251831054688){
 s0+=1.0;
} else {
 if(i0<156.0){
  s0+=1.0;
 } else {
  s0+=0.01634877384196185;
  s1+=0.9836512261580381;
 }
}
if(i2<17.58138656616211){
 if(i2<11.439041137695312){
  s0+=0.9597701149425287;
  s1+=0.040229885057471264;
 } else {
  s0+=0.8421052631578947;
  s1+=0.15789473684210525;
 }
} else {
 if(i2<126.54459381103516){
  s0+=0.4007352941176471;
  s1+=0.5992647058823529;
 } else {
  s0+=0.8913043478260869;
  s1+=0.10869565217391304;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<158.19546508789062){
  s0+=0.2222222222222222;
  s1+=0.7777777777777778;
 } else {
  s0+=0.0028089887640449437;
  s1+=0.9971910112359551;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i0<164.0){
  s0+=0.14285714285714285;
  s1+=0.8571428571428571;
 } else {
  s0+=0.008379888268156424;
  s1+=0.9916201117318436;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<170.6448974609375){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<144.75350952148438){
 if(i2<167.91958618164062){
  s0+=1.0;
 } else {
  s0+=0.9583333333333334;
  s1+=0.041666666666666664;
 }
} else {
 if(i0<212.0){
  s0+=0.024489795918367346;
  s1+=0.9755102040816327;
 } else {
  s1+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i0<156.0){
  s0+=0.42857142857142855;
  s1+=0.5714285714285714;
 } else {
  s0+=0.022222222222222223;
  s1+=0.9777777777777777;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<167.8885498046875){
  s0+=0.2542372881355932;
  s1+=0.7457627118644068;
 } else {
  s1+=1.0;
 }
}
if(i2<20.366952896118164){
 if(i2<14.030303001403809){
  s0+=0.9584295612009238;
  s1+=0.04157043879907621;
 } else {
  s0+=0.8360655737704918;
  s1+=0.16393442622950818;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.027439024390243903;
  s1+=0.9725609756097561;
 }
}
if(i2<18.385435104370117){
 if(i2<12.084685325622559){
  s0+=0.9587628865979382;
  s1+=0.041237113402061855;
 } else {
  s0+=0.8285714285714286;
  s1+=0.17142857142857143;
 }
} else {
 if(i2<126.54459381103516){
  s0+=0.391304347826087;
  s1+=0.6086956521739131;
 } else {
  s0+=0.9473684210526315;
  s1+=0.05263157894736842;
 }
}
if(i0<156.0){
 if(i1<150.91896057128906){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<180.0){
  s0+=0.05970149253731343;
  s1+=0.9402985074626866;
 } else {
  s0+=0.0136986301369863;
  s1+=0.9863013698630136;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i2<183.91586303710938){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<14.60643196105957){
 if(i1<127.62176513671875){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i1<144.75350952148438){
  s0+=1.0;
 } else {
  s0+=0.01238390092879257;
  s1+=0.9876160990712074;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i0<156.0){
  s0+=0.3333333333333333;
  s1+=0.6666666666666666;
 } else {
  s0+=0.01098901098901099;
  s1+=0.989010989010989;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i0<204.0){
  s0+=0.013636363636363636;
  s1+=0.9863636363636363;
 } else {
  s1+=1.0;
 }
}
if(i2<14.942144393920898){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i1<141.61659240722656){
  s0+=1.0;
 } else {
  s0+=0.008823529411764706;
  s1+=0.9911764705882353;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i0<156.0){
  s0+=0.4;
  s1+=0.6;
 } else {
  s0+=0.010471204188481676;
  s1+=0.9895287958115183;
 }
}
if(i1<145.63429260253906){
 s0+=1.0;
} else {
 if(i1<167.8885498046875){
  s0+=0.11538461538461539;
  s1+=0.8846153846153846;
 } else {
  s1+=1.0;
 }
}
if(i2<17.58138656616211){
 if(i2<11.21479320526123){
  s0+=0.9763313609467456;
  s1+=0.023668639053254437;
 } else {
  s0+=0.8818181818181818;
  s1+=0.11818181818181818;
 }
} else {
 if(i1<141.61659240722656){
  s0+=1.0;
 } else {
  s0+=0.011461318051575931;
  s1+=0.9885386819484241;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i2<182.16845703125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<17.58138656616211){
 if(i1<127.9237060546875){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<156.0){
  s0+=0.9899328859060402;
  s1+=0.010067114093959731;
 } else {
  s0+=0.02654867256637168;
  s1+=0.9734513274336283;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i1<168.42926025390625){
  s0+=0.10638297872340426;
  s1+=0.8936170212765957;
 } else {
  s1+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<145.63429260253906){
  s0+=0.7142857142857143;
  s1+=0.2857142857142857;
 } else {
  s0+=0.016172506738544475;
  s1+=0.9838274932614556;
 }
}
if(i2<17.525794982910156){
 if(i1<127.8768081665039){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.028901734104046242;
  s1+=0.9710982658959537;
 }
}
if(i1<140.24130249023438){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i0<156.0){
  s0+=0.5;
  s1+=0.5;
 } else {
  s0+=0.00872093023255814;
  s1+=0.9912790697674418;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<170.13925170898438){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<145.92129516601562){
 s0+=1.0;
} else {
 if(i1<158.07676696777344){
  s0+=0.125;
  s1+=0.875;
 } else {
  s1+=1.0;
 }
}
if(i2<22.447647094726562){
 if(i2<14.60643196105957){
  s0+=0.9556541019955654;
  s1+=0.04434589800443459;
 } else {
  s0+=0.7066666666666667;
  s1+=0.29333333333333333;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.037383177570093455;
  s1+=0.9626168224299065;
 }
}
if(i1<144.75350952148438){
 if(i1<141.61251831054688){
  s0+=1.0;
 } else {
  s0+=0.6666666666666666;
  s1+=0.3333333333333333;
 }
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i1<151.42181396484375){
  s0+=0.42857142857142855;
  s1+=0.5714285714285714;
 } else {
  s0+=0.002638522427440633;
  s1+=0.9973614775725593;
 }
}
if(i1<151.4790496826172){
 if(i1<141.61659240722656){
  s0+=1.0;
 } else {
  s0+=0.6;
  s1+=0.4;
 }
} else {
 if(i1<168.37167358398438){
  s0+=0.07317073170731707;
  s1+=0.926829268292683;
 } else {
  s1+=1.0;
 }
}
if(i1<141.61251831054688){
 s0+=1.0;
} else {
 if(i1<151.42181396484375){
  s0+=0.5;
  s1+=0.5;
 } else {
  s0+=0.013888888888888888;
  s1+=0.9861111111111112;
 }
}
if(i0<156.0){
 if(i1<154.99285888671875){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i1<151.42181396484375){
  s0+=0.75;
  s1+=0.25;
 } else {
  s0+=0.005115089514066497;
  s1+=0.9948849104859335;
 }
}
if(i1<141.61251831054688){
 s0+=1.0;
} else {
 if(i1<158.07676696777344){
  s0+=0.15789473684210525;
  s1+=0.8421052631578947;
 } else {
  s0+=0.0028735632183908046;
  s1+=0.9971264367816092;
 }
}
if(i2<17.525794982910156){
 if(i2<12.084685325622559){
  s0+=0.9498680738786279;
  s1+=0.05013192612137203;
 } else {
  s0+=0.8269230769230769;
  s1+=0.17307692307692307;
 }
} else {
 if(i1<141.61251831054688){
  s0+=1.0;
 } else {
  s0+=0.005813953488372093;
  s1+=0.9941860465116279;
 }
}
if(i2<20.308809280395508){
 if(i2<12.153342247009277){
  s0+=0.9670050761421319;
  s1+=0.03299492385786802;
 } else {
  s0+=0.7804878048780488;
  s1+=0.21951219512195122;
 }
} else {
 if(i2<137.650146484375){
  s0+=0.40039447731755423;
  s1+=0.5996055226824457;
 } else {
  s0+=0.972972972972973;
  s1+=0.02702702702702703;
 }
}
if(i1<151.4790496826172){
 if(i2<167.91958618164062){
  s0+=1.0;
 } else {
  s0+=0.9565217391304348;
  s1+=0.043478260869565216;
 }
} else {
 if(i0<196.0){
  s1+=1.0;
 } else {
  s0+=0.01327433628318584;
  s1+=0.9867256637168141;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<151.4790496826172){
  s0+=0.8;
  s1+=0.2;
 } else {
  s0+=0.00273224043715847;
  s1+=0.9972677595628415;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i1<167.8885498046875){
  s0+=0.09615384615384616;
  s1+=0.9038461538461539;
 } else {
  s1+=1.0;
 }
}
if(i0<144.0){
 s0+=1.0;
} else {
 if(i2<183.91586303710938){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<16.1063289642334){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.020710059171597635;
  s1+=0.9792899408284024;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<141.61251831054688){
  s0+=1.0;
 } else {
  s0+=0.008264462809917356;
  s1+=0.9917355371900827;
 }
}
if(i2<22.629077911376953){
 if(i0<132.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i2<114.98760223388672){
  s0+=0.3810483870967742;
  s1+=0.6189516129032258;
 } else {
  s0+=0.9072164948453608;
  s1+=0.09278350515463918;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<140.2052764892578){
 s0+=1.0;
} else {
 if(i0<180.0){
  s0+=0.04477611940298507;
  s1+=0.9552238805970149;
 } else {
  s0+=0.007017543859649123;
  s1+=0.9929824561403509;
 }
}
if(i2<20.280208587646484){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i1<144.75350952148438){
  s0+=1.0;
 } else {
  s0+=0.006369426751592357;
  s1+=0.9936305732484076;
 }
}
if(i0<144.0){
 s0+=1.0;
} else {
 if(i2<183.20205688476562){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<151.42181396484375){
 if(i1<141.61659240722656){
  s0+=1.0;
 } else {
  s0+=0.6666666666666666;
  s1+=0.3333333333333333;
 }
} else {
 if(i0<212.0){
  s0+=0.03018867924528302;
  s1+=0.969811320754717;
 } else {
  s1+=1.0;
 }
}
if(i2<22.447647094726562){
 if(i2<12.08285140991211){
  s0+=0.9656992084432717;
  s1+=0.03430079155672823;
 } else {
  s0+=0.7796610169491526;
  s1+=0.22033898305084745;
 }
} else {
 if(i2<95.78172302246094){
  s0+=0.3777292576419214;
  s1+=0.6222707423580786;
 } else {
  s0+=0.8461538461538461;
  s1+=0.15384615384615385;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<151.42181396484375){
  s0+=0.5714285714285714;
  s1+=0.42857142857142855;
 } else {
  s0+=0.008547008547008548;
  s1+=0.9914529914529915;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i1<167.8885498046875){
  s0+=0.18181818181818182;
  s1+=0.8181818181818182;
 } else {
  s1+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<144.75350952148438){
 s0+=1.0;
} else {
 if(i2<183.20205688476562){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i0<204.0){
  s0+=0.012711864406779662;
  s1+=0.9872881355932204;
 } else {
  s1+=1.0;
 }
}
if(i2<18.114700317382812){
 if(i0<128.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.042735042735042736;
  s1+=0.9572649572649573;
 }
}
if(i1<145.63429260253906){
 if(i0<168.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<17.060497283935547){
 if(i1<127.8768081665039){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i2<125.21409606933594){
  s0+=0.395985401459854;
  s1+=0.6040145985401459;
 } else {
  s0+=0.9333333333333333;
  s1+=0.06666666666666667;
 }
}
if(i2<20.308809280395508){
 if(i1<127.73292541503906){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<148.0){
  s0+=1.0;
 } else {
  s0+=0.011730205278592375;
  s1+=0.9882697947214076;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<167.8885498046875){
  s0+=0.1346153846153846;
  s1+=0.8653846153846154;
 } else {
  s1+=1.0;
 }
}
if(i1<142.8811492919922){
 s0+=1.0;
} else {
 if(i1<164.37185668945312){
  s0+=0.05;
  s1+=0.95;
 } else {
  s1+=1.0;
 }
}
if(i0<144.0){
 s0+=1.0;
} else {
 if(i1<145.63429260253906){
  s0+=1.0;
 } else {
  s0+=0.02127659574468085;
  s1+=0.9787234042553191;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i0<164.0){
  s0+=0.14285714285714285;
  s1+=0.8571428571428571;
 } else {
  s0+=0.023809523809523808;
  s1+=0.9761904761904762;
 }
}
if(i1<142.8770751953125){
 s0+=1.0;
} else {
 if(i2<171.35870361328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i1<141.61251831054688){
  s0+=1.0;
 } else {
  s0+=0.020114942528735632;
  s1+=0.9798850574712644;
 }
}
if(i2<14.60643196105957){
 if(i0<132.0){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i2<120.60641479492188){
  s0+=0.44165170556552963;
  s1+=0.5583482944344704;
 } else {
  s0+=0.9433962264150944;
  s1+=0.05660377358490566;
 }
}
if(i0<148.0){
 s0+=1.0;
} else {
 if(i0<156.0){
  s0+=0.25;
  s1+=0.75;
 } else {
  s0+=0.02717391304347826;
  s1+=0.9728260869565217;
 }
}
if(i0<156.0){
 if(i2<82.08345794677734){
  s0+=1.0;
 } else {
  s0+=0.9915254237288136;
  s1+=0.00847457627118644;
 }
} else {
 if(i0<164.0){
  s0+=0.25;
  s1+=0.75;
 } else {
  s0+=0.005698005698005698;
  s1+=0.9943019943019943;
 }
}
if(i1<145.63429260253906){
 s0+=1.0;
} else {
 if(i2<182.6964111328125){
  s1+=1.0;
 } else {
  s0+=1.0;
 }
}
if(i2<17.77860450744629){
 if(i2<11.439041137695312){
  s0+=0.9611940298507463;
  s1+=0.03880597014925373;
 } else {
  s0+=0.8695652173913043;
  s1+=0.13043478260869565;
 }
} else {
 if(i1<141.61659240722656){
  s0+=1.0;
 } else {
  s0+=0.011461318051575931;
  s1+=0.9885386819484241;
 }
}
if(i2<17.58138656616211){
 if(i1<127.8768081665039){
  s0+=1.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i2<115.48367309570312){
  s0+=0.4072727272727273;
  s1+=0.5927272727272728;
 } else {
  s0+=0.9156626506024096;
  s1+=0.08433734939759036;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i1<168.37167358398438){
  s0+=0.18;
  s1+=0.82;
 } else {
  s1+=1.0;
 }
}
if(i2<20.280208587646484){
 if(i2<14.60643196105957){
  s0+=0.9688995215311005;
  s1+=0.03110047846889952;
 } else {
  s0+=0.7936507936507936;
  s1+=0.20634920634920634;
 }
} else {
 if(i2<115.18932342529297){
  s0+=0.375968992248062;
  s1+=0.624031007751938;
 } else {
  s0+=0.8910891089108911;
  s1+=0.10891089108910891;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i1<151.64044189453125){
  s0+=0.2857142857142857;
  s1+=0.7142857142857143;
 } else {
  s0+=0.008426966292134831;
  s1+=0.9915730337078652;
 }
}
if(i1<151.42181396484375){
 if(i0<156.0){
  s0+=1.0;
 } else {
  s0+=0.6;
  s1+=0.4;
 }
} else {
 if(i0<188.0){
  s0+=0.02702702702702703;
  s1+=0.972972972972973;
 } else {
  s0+=0.0038910505836575876;
  s1+=0.9961089494163424;
 }
}
if(i1<143.76193237304688){
 s0+=1.0;
} else {
 if(i0<212.0){
  s0+=0.0149812734082397;
  s1+=0.9850187265917603;
 } else {
  s1+=1.0;
 }
}
if(i1<141.61659240722656){
 s0+=1.0;
} else {
 if(i1<166.90396118164062){
  s0+=0.125;
  s1+=0.875;
 } else {
  s1+=1.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
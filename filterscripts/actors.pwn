#include <a_samp>
#include <a_actor>

new actors[54];

AntiDeAMX()
{
	new a[][]={"Unarmed (Fist)","Brass K"};
    #pragma unused a
}

public OnGameModeInit()
{
    AntiDeAMX();
	//мэрия
	actors[0] = CreateActor(150, 1286.3224,-303.5162,1105.1689,182.4062), SetActorVirtualWorld(actors[0], 11);
	actors[1] = CreateActor(150, 1286.3224,-303.5162,1105.1689,182.4062), SetActorVirtualWorld(actors[1], 12);
	actors[2] = CreateActor(150, 1286.3224,-303.5162,1105.1689,182.4062), SetActorVirtualWorld(actors[2], 13);
	actors[3] = CreateActor(150, 1282.8555,-303.5163,1105.1689,177.7271), SetActorVirtualWorld(actors[3], 11);
	actors[4] = CreateActor(150, 1282.8555,-303.5163,1105.1689,177.7271), SetActorVirtualWorld(actors[4], 12);
	actors[5] = CreateActor(150, 1282.8555,-303.5163,1105.1689,177.7271), SetActorVirtualWorld(actors[5], 13);
	actors[6] = CreateActor(150, 1286.4366,-346.0105,1105.1740,0.2115), SetActorVirtualWorld(actors[6], 11);
	actors[7] = CreateActor(150, 1286.4366,-346.0105,1105.1740,0.2115), SetActorVirtualWorld(actors[7], 12);
	actors[8] = CreateActor(150, 1286.4366,-346.0105,1105.1740,0.2115), SetActorVirtualWorld(actors[8], 13);
	actors[9] = CreateActor(150, 1282.9417,-346.0128,1105.1740,357.8719), SetActorVirtualWorld(actors[9], 11);
	actors[10] = CreateActor(150, 1282.9417,-346.0128,1105.1740,357.8719), SetActorVirtualWorld(actors[10], 12);
	actors[11] = CreateActor(150, 1282.9417,-346.0128,1105.1740,357.8719), SetActorVirtualWorld(actors[11], 13);
	//банки
	actors[12] = CreateActor(150, 557.7822,-670.5530,1159.5859,182.6990), SetActorVirtualWorld(actors[12], 47);
	actors[13] = CreateActor(150, 565.1025,-670.5511,1159.5859,182.6990), SetActorVirtualWorld(actors[13], 47);
	actors[14] = CreateActor(150, 557.7822,-670.5530,1159.5859,182.6990), SetActorVirtualWorld(actors[14], 48);
	actors[15] = CreateActor(150, 565.1025,-670.5511,1159.5859,182.6990), SetActorVirtualWorld(actors[15], 48);
	actors[16] = CreateActor(150, 557.7822,-670.5530,1159.5859,182.6990), SetActorVirtualWorld(actors[16], 49);
	actors[17] = CreateActor(150, 565.1025,-670.5511,1159.5859,182.6990), SetActorVirtualWorld(actors[17], 49);
	actors[18] = CreateActor(150, 557.7822,-670.5530,1159.5859,182.6990), SetActorVirtualWorld(actors[18], 2);
	actors[19] = CreateActor(150, 565.1025,-670.5511,1159.5859,182.6990), SetActorVirtualWorld(actors[19], 2);
	actors[20] = CreateActor(150, 557.7822,-670.5530,1159.5859,182.6990), SetActorVirtualWorld(actors[20], 5);
	actors[21] = CreateActor(150, 565.1025,-670.5511,1159.5859,182.6990), SetActorVirtualWorld(actors[21], 5);
	actors[22] = CreateActor(150, 557.7822,-670.5530,1159.5859,182.6990), SetActorVirtualWorld(actors[22], 3);
	actors[23] = CreateActor(150, 565.1025,-670.5511,1159.5859,182.6990), SetActorVirtualWorld(actors[23], 3);
    //СМИ
    actors[24] = CreateActor(150, 155.8131,-45.0644,1014.1949,170.6867), SetActorVirtualWorld(actors[24], 99);
	actors[25] = CreateActor(150, 155.8131,-45.0644,1014.1949,170.6867), SetActorVirtualWorld(actors[25], 98);
	actors[26] = CreateActor(150, 155.8131,-45.0644,1014.1949,170.6867), SetActorVirtualWorld(actors[26], 97);
    //Болька
    actors[27] = CreateActor(150, 798.8999,-1623.4462,1860.3109,87.6340), SetActorVirtualWorld(actors[27], 3);
	actors[28] = CreateActor(150, 798.8999,-1623.4462,1860.3109,87.6340), SetActorVirtualWorld(actors[28], 2);
	actors[29] = CreateActor(150, 798.8999,-1623.4462,1860.3109,87.6340), SetActorVirtualWorld(actors[29], 1);
	actors[30] = CreateActor(70, 781.3154,-1660.5629,1860.3090,357.5627), SetActorVirtualWorld(actors[30], 3);
	actors[31] = CreateActor(70, 781.3154,-1660.5629,1860.3090,357.5627), SetActorVirtualWorld(actors[31], 2);
	actors[32] = CreateActor(70, 781.3154,-1660.5629,1860.3090,357.5627), SetActorVirtualWorld(actors[32], 1);
    //Шахта
    actors[33] = CreateActor(6, -1896.9728,-1637.6414,25.0391,232.8632), ApplyActorAnimation(actors[33],"PED","SEAT_down",4.1,0,0,0,1,1);
    //актеры магазинов 24/7
    actors[34] = CreateActor(172, -28.8569,-186.8210,1003.5469,355.7716), SetActorVirtualWorld(actors[34], 51);
    actors[35] = CreateActor(172, -28.8569,-186.8210,1003.5469,355.7716), SetActorVirtualWorld(actors[35], 55);
    actors[36] = CreateActor(172, -28.8569,-186.8210,1003.5469,355.7716), SetActorVirtualWorld(actors[36], 60);
    actors[37] = CreateActor(172, -28.8569,-186.8210,1003.5469,355.7716), SetActorVirtualWorld(actors[37], 65);
    actors[38] = CreateActor(172, -28.8569,-186.8210,1003.5469,355.7716), SetActorVirtualWorld(actors[38], 67);
    //актеры магазина электроники
    actors[39] = CreateActor(172, -2237.2935,128.5852,1035.4141,355.7486), SetActorVirtualWorld(actors[39], 52);
    actors[40] = CreateActor(172, -2237.2935,128.5852,1035.4141,355.7486), SetActorVirtualWorld(actors[40], 59);
    actors[41] = CreateActor(172, -2237.2935,128.5852,1035.4141,355.7486), SetActorVirtualWorld(actors[41], 66);
    //актеры магазина одежды
    actors[42] = CreateActor(40, 207.7325,-98.7050,1005.2578,181.5573), SetActorVirtualWorld(actors[42], 53);
    actors[43] = CreateActor(40, 207.7325,-98.7050,1005.2578,181.5573), SetActorVirtualWorld(actors[43], 68);
    //актеры клуба
    actors[44] = CreateActor(172, 501.7095,-20.5089,1000.6797,88.8470), SetActorVirtualWorld(actors[44], 54);
    //актеры пиццерии
    actors[45] = CreateActor(167, 374.0652,-117.2779,1001.4995,176.9896), SetActorVirtualWorld(actors[45], 56);
    //актеры бара
    actors[46] = CreateActor(167, -223.3072,1404.6729,27.7734,88.3452), SetActorVirtualWorld(actors[46], 57);
    //актеры хиппи
    actors[47] = CreateActor(78, 272.0732,304.0906,999.1558,81.8126), SetActorVirtualWorld(actors[47], 62);
    //актеры пиратехники
    actors[48] = CreateActor(98, -201.2419,-23.9908,1002.2734,140.2000), SetActorVirtualWorld(actors[48], 63);
    //актеры магазина оружия
    actors[49] = CreateActor(167, 316.1081,-133.3740,999.6016,130.6845), SetActorVirtualWorld(actors[49], 69);
    //актеры стрип клуба
    actors[50] = CreateActor(63, 1215.5503,-33.4326,1001.3828,38.8360), ApplyActorAnimation(actors[50],"DANCING","DAN_Loop_A",4.1,1,0,0,1,1),SetActorVirtualWorld(actors[50], 58);
    actors[51] = CreateActor(63, 1209.3425,-36.6816,1001.4844,325.5387), ApplyActorAnimation(actors[51],"DANCING","DAN_UP_A",4.1,1,0,0,1,1),SetActorVirtualWorld(actors[51], 58);
    actors[52] = CreateActor(63, 1212.5137,-40.5552,1001.4844,8.7791), ApplyActorAnimation(actors[52],"DANCING","DNCE_M_A",4.1,1,0,0,1,1),SetActorVirtualWorld(actors[52], 58);
    actors[53] = CreateActor(90, 1206.1754,-29.4029,1000.9531,271.6448), SetActorVirtualWorld(actors[53], 58);
                
}

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

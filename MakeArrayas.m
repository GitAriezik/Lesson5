//
//  MakeArrayas.m
//  Lesson4
//
//  Created by Vasily on 14.04.15.
//  Copyright (c) 2015 Vasily Filippov. All rights reserved.
//

#import "MakeArrayas.h"

@implementation MakeArrayas




+ (NSMutableArray *) makeFirstArray {
    
    NSMutableArray * arrayM = [[NSMutableArray alloc] init];
    
    
    NSString * stringValue = @"Ford Kuga,Volkswagen Touareg,Mercedec-Benz";
    NSString * stringPrice = @"2 300 000,2 750 000,5 350 000";
    
    NSString * stringdisFord_Kuga = @"Мы с гордостью представляем Вам Ford Kuga — выражение стиля и мощи, наш самый умный в истории кроссовер. Ford Kuga оснащен самыми современными технологиями, способными воплотить в жизнь Ваши мечты о городских и внедорожных приключениях.Интеллектуальная система полного привода мгновенно адаптируется под рельеф и условия дороги, система автоматического торможения Active City Stop позволяет предотвратить столкновение при движении на низкой скорости, а система Ford SYNC с помощью голосовых команд позволяет управлять MP3-плеером и функциями телефона. Мы также гордимся тем, что первыми представляем в нашем кроссовере инновационную систему открывания багажника hands-free. Если у Вас заняты руки, просто проведите ногой под задним бампером, и багажник послушно откроется или закроется. Даже двигатель удивляет своей продуманностью. Современная технология прямого впрыска топлива и турбонаддув обеспечивают высокие показатели мощности, экономию топлива и низкий уровень выбросов CO2. При объеме всего 1,6 л EcoBoost обладает 150 / 182 л.с. и создает крутящий момент до 240 Нм.Оснащенный множеством инновационных функций, Kuga выводит стиль и технологии внедорожников на совершенно новый уровень.";
    NSString * stringdisVolkswagen_Tiguan = @"Мировой дебют Touareg состоялся на автосалоне в Париже 26 сентября 2002 года. Название аVтомобиля восходит к средним векам, когда таурегами называли «рыцарей пустыни», племена кочевников живущих в Сахаре.Сегодня Touareg – первый внедорожник представительского класса. Он стал олицетворением принципиально новой концепции Volkswagen, соединив в себе качества отличного внедорожника с комфортом седана и динамикой спортивного аVтомобиля.Гамма двигателей составляет бензиновый V6 (3,2 л/ 220 л.с.) и V8, мощностью 228 кВт/310 л.с., а также 5-литровый дизель V10 TDI (230 кВт/ 313 л.с.). Впоследствии планируется дополнить этот ряд пятицилиндровым TDI 2,5 л. мощностью 128 кВт/ 174 л.с. В паре с этими двигателями могут работать как механическая, так и автоматическая шестиступенчатая коробка передач.";
    NSString * stringdisMercedes_Benz = @"Благодаря трём ключевым идеям, реализованным при его разработке, – Intelligent Drive («Интеллектуальное движение»), Efficient Technology («Экономичные технологии») и Essence of Luxury («Квинтэссенция роскоши») – новый S-Класс раздвигает горизонты автомобильной техники по целому ряду направлений одновременно. S-Класс находится на острие технического прогресса не только марки Mercedes-Benz, но и автомобильной отрасли в целом.";
    
    
    NSArray * arrayPrices = [stringPrice componentsSeparatedByString:@","];
    NSArray * arrayValues = [stringValue componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < arrayPrices.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[arrayPrices objectAtIndex:i] forKey:@"price"];
        [dict setObject:[arrayValues objectAtIndex:i] forKey:@"value"];
        
        NSString * value = [arrayValues objectAtIndex:i];
        
        
        if ([value isEqualToString:@"Ford Kuga"]) {
            
            [dict setObject:stringdisFord_Kuga forKey:@"discr"];
        }
        
        else if ([value isEqualToString:@"Volkswagen Touareg"]) {
            
            [dict setObject:stringdisVolkswagen_Tiguan forKey:@"discr"];
        }
        
        else if ([value isEqualToString:@"Mercedec-Benz"]) {
            
            [dict setObject:stringdisMercedes_Benz forKey:@"discr"];
        }
        
        //          C NSCoping разобраться самостоятельно
        
        
        [arrayM addObject:dict];
        
    }
    
    return arrayM;
}




+ (NSMutableArray *) makeAnotherArray {
    
    NSMutableArray * arrayM = [[NSMutableArray alloc] init];
    
    
    
    NSString * stringValue = @"WeThePeople Envy,Radio Astron,FatBoy Mini,Mongoose Thrive";
    NSString * stringPrice = @"71 565р,37 180р,22 750р,17 316р";
    
    
    
    
    
    
    NSArray * arrayPrices = [stringPrice componentsSeparatedByString:@","];
    NSArray * arrayValues = [stringValue componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < arrayPrices.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[arrayPrices objectAtIndex:i] forKey:@"type"];
        [dict setObject:[arrayValues objectAtIndex:i] forKey:@"value"];
        
        [arrayM addObject:dict];
        
    }
    
    return arrayM;
    
}





@end

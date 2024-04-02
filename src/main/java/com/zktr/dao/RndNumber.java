package com.zktr.dao;

import java.util.Random;

/**
* @Description: 
* @author: 惠
* @date 2024年4月2日 上午10:49:26
*/
public class RndNumber{
	public String generateValidateCode() {
		Random random = new Random();
        int randomNumber = random.nextInt(900000) + 100000; // 生成100000到999999之间的随机数
        return String.valueOf(randomNumber);
		
	}
}

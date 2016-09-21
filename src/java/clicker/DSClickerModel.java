/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clicker;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Jiaming
 */
public class DSClickerModel {
    Map<String, Integer> answerMap;
    
    public DSClickerModel(){
        answerMap = new HashMap<>();
    }
    
    public void submitAnswer(String answer){
        if (answerMap.containsKey(answer)) {
            answerMap.put(answer, answerMap.get(answer) + 1);
        } else {
            answerMap.put(answer, 1);
        }
    }
    
    public Map<String, Integer> getResults() {
        return answerMap;
    }
}

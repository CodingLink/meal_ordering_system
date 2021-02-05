package com.example.meal_ordering_system.util;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class AdviceUtil {
    public void before(JoinPoint joinPoint) throws Throwable {
    }

    public void after(JoinPoint joinPoint) throws Throwable {
    }

    public Object around(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {

        return proceedingJoinPoint.proceed();
    }

    public void exception(JoinPoint joinPoint) throws Throwable {
    }
}

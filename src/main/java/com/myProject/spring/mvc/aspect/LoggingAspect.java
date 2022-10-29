package com.myProject.spring.mvc.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {

    @Around("execution(* com.myProject.spring.mvc.DAO.*.*(..))")
    public Object aroundAllRepositoryMethodAdvice(ProceedingJoinPoint proceedJoinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) proceedJoinPoint.getSignature();
        String methodName = methodSignature.getName();
        System.out.println("Begin of: " + methodName);
        Object targetMethodResult = proceedJoinPoint.proceed();
        System.out.println("End of: " + methodName);
        return targetMethodResult;
    }

}

package com.jin2ml.aop;

import com.jin2ml.dto.BaseResult;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;

/**
 * @author jin2ml
 *
 * 采用AOP的方式处理参数问题。
 */
@Component
@Aspect
public class BindingResultAop {

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Pointcut("execution(* com.jin2ml.controller.*.*(..))")
    public void aopMethod(){}

    @Around("aopMethod()")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        LOG.info("Before method invoking...");
        BindingResult bindingResult = null;
        for (Object arg : joinPoint.getArgs()) {
            if (arg instanceof BindingResult) {
                bindingResult = (BindingResult) arg;
            }
        }
        if(null != bindingResult){
            if (bindingResult.hasErrors()) {
                String errorInfo = "[" + bindingResult.getFieldError().getField() + "]"
                        + bindingResult.getFieldError().getDefaultMessage();
                return new BaseResult<>(false, errorInfo);
            }
        }
        return joinPoint.proceed();
    }
}

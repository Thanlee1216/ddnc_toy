package com.ddnc.toy.config;//package com.moca.web.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.scheduling.annotation.AsyncConfigurerSupport;
//import org.springframework.scheduling.annotation.EnableAsync;
//import org.springframework.scheduling.annotation.EnableScheduling;
//import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
//
//import java.util.concurrent.Executor;
//
//
//@Configuration
//@EnableAsync(proxyTargetClass = true)
//@EnableScheduling
//public class AsyncConfiguration extends AsyncConfigurerSupport {
//
//    @Autowired
//    private ThreadPoolTaskExecutor threadPoolTaskExecutor;
//
//    @Override
//    public Executor getAsyncExecutor() {
//
//        return threadPoolTaskExecutor;
//    }
//
//    @Bean(destroyMethod = "shutdown")
//    public ThreadPoolTaskExecutor threadPoolTaskExecutor() {
//        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
//        executor.setCorePoolSize(10);
//        executor.setMaxPoolSize(10);
//        executor.setQueueCapacity(50);
//        executor.setThreadNamePrefix("theAssetThread-");
//        executor.initialize();
//
//        return executor;
//    }
//}

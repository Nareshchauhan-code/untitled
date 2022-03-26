package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate testUsers()
    {
        return Karate.run("ResponseMatcher","Headers").relativeTo(getClass());
    }


   // @Karate.Test
    Karate testUsersWithClassPath()
    {
        return Karate.run("classpath:com/api/automation/getRequest/getRequest.feature");
    }

}

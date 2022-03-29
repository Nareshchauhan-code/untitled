package com.api.automation.postRequest;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate testUsers()
    {
        return Karate.run("createjobentry").relativeTo(getClass());
    }


   // @Karate.Test
    Karate testUsersWithClassPath()
    {
        return Karate.run("classpath:com/api/automation/getRequest/getRequest.feature");
    }

}

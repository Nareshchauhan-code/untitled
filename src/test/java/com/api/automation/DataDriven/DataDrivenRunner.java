package com.api.automation.DataDriven;

import com.intuit.karate.junit5.Karate;

class DataDrivenRunner {
    
    @Karate.Test
    Karate testUsers()
    {
        return Karate.run("DataDriven.feature").relativeTo(getClass());
    }

}

package com.api.automation.fileUpload;

import com.intuit.karate.junit5.Karate;

class FileUploadRunner {
    
    @Karate.Test
    Karate testUsers()
    {
        return Karate.run("FileUpload.feature").relativeTo(getClass());
    }

}

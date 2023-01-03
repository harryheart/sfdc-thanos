public with sharing class Sample {
    public static Integer getAccounts() {
        return [select count() from Account];
    }
}

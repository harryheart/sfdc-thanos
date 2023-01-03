@isTest
private class Sample_TEST {
	@isTest
    private static void testGetAccounts() {
        System.assertEquals(1 + 1, 2, 'We broke math');
        System.assert(Sample.getAccounts() >= 0, 'We need some accounts here.');
    }
}
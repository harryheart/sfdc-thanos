@isTest
private class Sample {
	@isTest
    private static void runTest() {
        System.assertEquals(1 + 1, 2, 'We broke math');
        System.assertEquals(1 + 1, 2, 'We broke math');
    }
}
public class ComplianceGuard {
    public static void main(String[] args) {
        System.out.println("[Compliance] Initializing DOJ Investigation Monitor...");
        
        String fedStatus = "Justice Department investigation pending";
        boolean legalRisk = fedStatus.toLowerCase().contains("investigation");

        if (legalRisk) {
            System.out.println("[Alert] Legal Volatility High: Locking Institutional Assets.");
        }
    }
}

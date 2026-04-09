#!/bin/bash

# Script pour exécuter les tests et générer un rapport JSON
# Usage: ./run-tests-with-report.sh

echo "================================================"
echo "  Tests avec Rapport Détaillé"
echo "================================================"
echo ""

# Variables
PROJECT_NAME="Hello"
TEST_DIR="target/surefire-reports"
REPORT_FILE="target/test-report.json"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Nettoyer et exécuter les tests
echo "🧪 Exécution des tests..."
./mvnw clean test -Dmaven.test.failure.ignore=true

echo ""
echo "📊 Génération du rapport..."

# Compter les tests réussis et échoués
if [ -d "$TEST_DIR" ]; then
    PASSED=$(grep -r "tests passed" "$TEST_DIR" 2>/dev/null | tail -1 | awk '{print $1}' || echo "0")
    FAILED=$(grep -r "failures" "$TEST_DIR" 2>/dev/null | tail -1 | awk '{print $1}' || echo "0")
    
    # Créer un rapport JSON
    cat > "$REPORT_FILE" << EOF
{
  "project": "$PROJECT_NAME",
  "timestamp": "$DATE",
  "tests": {
    "passed": $PASSED,
    "failed": $FAILED
  },
  "report_path": "$TEST_DIR",
  "status": "COMPLETED"
}
EOF
    
    echo "✅ Rapport créé: $REPORT_FILE"
fi

echo ""
echo "📁 Résultats disponibles dans:"
echo "   - target/surefire-reports/"
echo "   - target/test-report.json (rapport JSON)"
echo ""
echo "💡 Conseil: Ouvrez target/surefire-reports/index.html pour voir les détails des tests"

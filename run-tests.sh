#!/bin/bash

# Script pour exécuter les tests du projet Maven
# Usage: ./run-tests.sh

echo "================================================"
echo "  Exécution des tests unitaires - Maven"
echo "================================================"
echo ""

# Nettoyer les anciens tests
echo "📦 Nettoyage de la build précédente..."
./mvnw clean

# Exécuter les tests
echo ""
echo "🧪 Exécution des tests..."
./mvnw test

# Vérifier le code de sortie
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Tous les tests ont réussi!"
    echo ""
    echo "📊 Rapport des tests:"
    echo "   - HTML: target/surefire-reports/index.html"
    echo "   - XML:  target/surefire-reports/"
else
    echo ""
    echo "❌ Certains tests ont échoué!"
    echo ""
    echo "📊 Rapport des tests:"
    echo "   - HTML: target/surefire-reports/index.html"
    echo "   - XML:  target/surefire-reports/"
    exit 1
fi

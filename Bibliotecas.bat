@echo off
title Instalador de Bibliotecas
echo =========================================
echo Instalando dependencias de Data Science...
echo =========================================

:: O scikit-learn no terminal se instala como 'scikit-learn'
pip install numpy pandas scikit-learn statsmodels

echo =========================================
echo Instalacao concluida com sucesso!
echo =========================================
pause
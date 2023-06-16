#!/bin/bash

# Obter o valor do volume do comando playerctl
volume=$(playerctl -p spotify metadata --format '{{ volume }}')

# Multiplicar o valor por 100 e arredondá-lo para zero casas decimais
volume_percentage=$(awk "BEGIN { printf \"%.0f\n\", $volume * 100 }")

# Adicionar o símbolo de porcentagem (%)
volume_formatted="$volume_percentage%"

# Exibir o volume formatado
echo "$volume_formatted"

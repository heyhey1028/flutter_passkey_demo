#!/bin/bash

# .envファイルが存在するか確認
if [ ! -f .env ]; then
    echo "Error: .env file not found"
    exit 1
fi

# 設定用の文字列を初期化
config_string=""

# .envファイルから環境変数を読み込み
while IFS='=' read -r key value || [ -n "$key" ]; do
    # 空行とコメントをスキップ
    if [ -z "$key" ] || [[ $key == \#* ]]; then
        continue
    fi

    # 値の前後の空白とクォートを削除
    key=$(echo $key | tr -d ' ')
    value=$(echo $value | tr -d ' ' | tr -d '"' | tr -d "'")

    if [ ! -z "$key" ] && [ ! -z "$value" ]; then
        echo "Found config: $key = $value"
        # スペースで区切って設定文字列を構築
        if [ -z "$config_string" ]; then
            config_string="$key=$value"
        else
            config_string="$config_string $key=$value"
        fi
    fi
done < .env

# 全ての設定を一度に適用
if [ ! -z "$config_string" ]; then
    echo "Applying all configurations..."
    firebase functions:config:set $config_string
    
    # .runtimeconfig.jsonを更新
    echo "Updating .runtimeconfig.json..."
    cd functions && firebase functions:config:get > .runtimeconfig.json
    
    echo "Configuration completed successfully!"
else
    echo "No configurations found in .env file"
    exit 1
fi 
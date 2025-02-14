#!/bin/sh

set -eu

export PLATFORM="github"

git config --global --add safe.directory /github/workspace

/bin/codegpt config set openai.provider $OPENAI_PROVIDER
/bin/codegpt config set openai.api_key $INPUT_OPENAI_API_KEY
/bin/codegpt config set openai.api_version $OPENAI_API_VERSION
/bin/codegpt config set openai.base_url $OPENAI_BASE_URL
/bin/codegpt config set openai.headers $OPENAI_HEADERS
/bin/codegpt config set openai.max_tokens $OPENAI_MAX_TOKENS
/bin/codegpt config set openai.model $OPENAI_MODEL
/bin/codegpt config set openai.temperature $OPENAI_TEMPERATURE
/bin/codegpt config set output.lang $OPENAI_LANG

sh -c "/bin/codegpt review"

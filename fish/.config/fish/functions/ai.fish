function ai
    export OPENAI_API_KEY="$(op read 'op://Private/OpenAI Key/password')"
    export GEMINI_API_KEY="$(op read 'op://Private/Gemini Key/password')"
    export ANTHROPIC_API_KEY="$(op read 'op://Private/Anthropic Key/password')"
end




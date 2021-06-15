require_relative "prompts_data"

PromptsDB.data.each {|p| Prompt.find_or_create_by!(question: p[:prompt])}
# Game.create(room_code: Game.generate_room_code, round_number: 0)
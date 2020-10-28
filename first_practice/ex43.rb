class Scene
    def enter()
        puts "This scene is not yet configured. Sublass it and implement enter()."
        exit(1)
    end
end

class Engine
    def initialize(scene_map)
        @scene_map = scene_map
    end

    def play()
        current_scene = @scene_map.opening_scene()
        last_scene = @scene_map.next_scene('finished')

        while current_scene != last_scene
            next_scene_name = current_scene.enter()
            current_scene = @scene_map.next_scene(next_scene_name)
        end

        current_scene.enter()
    end
end

class Death < Scene
    @@quips = [
        "",
        ""
    ]

    def enter()
        puts @@quips[rand(0..(@@quips.length - 1))]
        exit(1)
    end
end

class CentralCorridor < Scene
    def enter()
        puts ""
        puts "> "

        action = $stdin.gets.chomp

        if action == "shoot!"
            puts ""
        elsif action == "dodge!"
            puts ""
        elsif action == "tell a joke"
            puts ""
        else
            puts "DOES NOT COMPUTE!"
            return 'central_corridor'
        end
    end
end

class LaserWeaponArmory < Scene
    
    def enter()
        
    end
end

class TheBridge < Scene
    
    def enter()
        
    end
end

class EscapePod
    
    def enter()
        
    end
end

class Map
    def initialize(start_scene)
        @start_scene = start_scene
    end

    def next_scene(scene_name)
        @scene_name = scene_name
    end

    def opening_scene()
        
    end
end

# Test

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
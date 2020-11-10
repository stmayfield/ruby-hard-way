class Scene
    def enter()
        puts "No scene found"
        exit(1)
    end
end

class Engine

    def initialize(scene_map)
        # var become instance variable
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
        "You died.",
        "Oof, no good.",
        "Not this time.",
        "Look, if you're not gonna take this seriously..."
    ]

    def enter()
        puts @@quips[rand(0..(@@quips.length - 1))]
        exit(1)
    end
end

class CentralCorridor < Scene

    def enter()
        puts <<~END
        ---
        The Gothons of Planet Percal #25 have invaded your ship and destroyed
        your entire crew. You are the last surviving memeber and your last
        mission is to get the neutron bomb from the Weapons Armory,
        put it in the bridge, and blow the ship up after getting into an escape pod.

        You're running down the central corridor to the Weapons Armory when
        a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume
        flowing around his hate filled body, he's blocking the door to the Armory 
        and about to pull a weapon to blast you.
        ---
        END

        puts <<~END
        1. Shoot
        2. Dodge
        3. Joke
        END
        print "> "

        action = $stdin.gets.chomp

        if action == "1"
            puts <<~END
            ---
            Quick on the draw you yank out your blaster and fire it at the Gothon.
            His clown costume... anyways he' mad and he eats you.
            ---
            END
            return 'death'
        elsif action == '2'
            puts <<~END
            ---
            You dodge out of the way I guess you slip or something and hit
            your head on a wall. When you wake up, the Gothon stomps on your
            head. And then he eats you.
            ---
            END
        elsif action == "3"
            puts <<~END
            You got to the laser weapon armory
            END
            return 'laser_weapon_armory'
        else
            puts "INVALID"
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

class EscapePod < Scene

    def enter()
    end
end
  
class Map
    # hash with list of scenes
    @@scenes = {
        'central_corridor' => CentralCorridor.new(),
        'laser_weapon_armory' => LaserWeaponArmory.new(),
        'death' => Death.new() 
    }

    def initialize(start_scene)
        @start_scene = start_scene
    end

    def next_scene(scene_name)
        val = @@scenes[scene_name]
        return val
    end

    def opening_scene()
        return next_scene(@start_scene)
    end
end
  
map_start = Map.new('central_corridor')
new_game = Engine.new(map_start)
new_game.play()
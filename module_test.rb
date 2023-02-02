# module  AwesomeApi
#     @base_url = ''
#     @debug_mode = false
#     class << self
#         # def base_url = (value)
#         #     @base_url = value
#         # end

#         # def base_url
#         #     @base_url
#         # end

#         # def debug_mode=(value)
#         #     @debug_mode=value
#         # end

#         # def debug_mode
#         #     @debug_mode
#         # end

#         attr_accessor :base_url, :debug_mode


#     end
# end


#     AwesomeApi.base_url = 'http://example.com'
#     AwesomeApi.debug_mode = true

#     puts AwesomeApi.base_url
#     puts AwesomeApi.debug_mode

#     module def to_s
#         "<A>" #fasjdf;aklsjdfklashjdfjhasdfhahsdfhaslkdjhrfa;jshdfasdhjf;akdfkbjadvlahfk;bjadsbvl jansdflkjnasdflkjhbasdjkfnalskhdjfhdnsadf@jeoighasnvcnajhfoe@af[agna;sijdfa;ksfm;[fkapofjk

module StringShuffle
    refine String do
        def shuffle
            chars.shuffle.join
        end
    end 
end

class User
    using StringShuffle

    def initialize(name)
        @name = name
    end

    def shuffle_name
        @name.shuffle
    end

end

user = User.new('Alice')

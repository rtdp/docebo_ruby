module DoceboRuby
  class User < Resource
    self.api = 'user'

    class << self
      def create(attributes = {})
        fetch_data('create', attributes) do |response|
          response['success'] || response['idst']
        end
      end

      def check_username(username)
        fetch_data('checkUsername', {userid: username})['success']
      end
    end
  end
end
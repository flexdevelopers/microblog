class Tweet
  def initialize(user)
    @user = user
    @text = []
  end

  [:mention, :text, :hashtag, :link].each do |method|
    define_method method(str) do
      @text << str
      self
    end
  end
end

def tweet_as(user, &block)
  tweet = Tweet.new(user)
  tweet.instance_eval(&block)
  tweet.submit_to_twitter

  end
end
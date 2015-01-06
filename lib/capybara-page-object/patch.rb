require "capybara-page-object"

module CapybaraPageObject

  module Patch

    VERSION = "0.0.1"

  end

  class Node

    def self.element(name, *args, &block)
      define_method(name, *args, &block)
    end

  end

  class Page < CapybaraPageObject::Node

    def self.component(name, *args, &block)
      define_method(name, *args, &block)
    end

  end

end

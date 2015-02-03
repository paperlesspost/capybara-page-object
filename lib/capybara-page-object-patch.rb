module CapybaraPageObjectPatch

  VERSION = "0.0.1"

  module FlexibleElementArguments

    def element(name, *args, &block)
      define_method(name, *args, &block)
    end

  end

  module FlexibleComponentArguments

    def component(name, *args, &block)
      define_method(name, *args, &block)
    end

  end

end

# Activate the patch
module CapybaraPageObject

  class Node

    extend CapybaraPageObjectPatch::FlexibleElementArguments

  end

  class Page < CapybaraPageObject::Node

    extend CapybaraPageObjectPatch::FlexibleComponentArguments

  end

end

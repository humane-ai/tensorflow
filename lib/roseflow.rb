#--
# Copyright (c) 2017 Lauri Jutila
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#++

require "active_support"
require "active_support/all"

module Roseflow
  extend ActiveSupport::Autoload

  autoload :ActiveGraph
  autoload :Graph
  autoload :Elements
  autoload :Node
  autoload :Session
  autoload :Tensor
  autoload :Tensorflow

  eager_autoload do
    autoload :Errors
  end
end

require "numo/narray"
require "roseflow/libc"
require "roseflow/errors"
# require "roseflow/graph"
# require "roseflow/node"
# require "roseflow/session"
# require "roseflow/tensor"
# require "roseflow/tensorflow"
# require "roseflow/elements"

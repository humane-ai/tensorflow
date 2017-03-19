module TensorFlow::LibTensorFlow
  class Buffer < FFI::AutoPointer
    class << self
      def release(pointer)
        TensorFlow::LibTensorFlow::Api.delete_buffer(pointer)
      end
    end
  end
end

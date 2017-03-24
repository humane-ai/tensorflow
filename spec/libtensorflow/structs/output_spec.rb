# encoding: utf-8

require "spec_helper"

RSpec.describe TensorFlow::LibTensorFlow::Structs::Output do
  context "with null pointer" do
    subject(:subject) { described_class.new(FFI::Pointer::NULL) }

    it "creates a struct" do
      expect(subject).to be_a described_class
    end

    it "is null" do
      expect(subject).to be_null
    end
  end

  context "with an empty pointer", skip: "FIXME" do
    let(:memory) do
      pointer = FFI::MemoryPointer.new(:int64)
      pointer.write_int64(0)
      pointer
    end

    subject(:subject) do
      pointer = FFI::Pointer.new(memory.address)
      described_class.new(pointer)
    end

    specify do
      expect(subject[:oper]).to be_a TensorFlow::LibTensorFlow::Structs::Operation
      expect(subject[:index]).to eq 0
    end

    # it "is empty" do
    #   expect(subject[:oper]).to be_null
    # end
  end

  context "with a filled struct pointer", skip: "IMPLEMENT" do
    let(:data) do
      pointer = FFI::MemoryPointer.new(:int64)
      pointer.write_int64(8192)
      pointer
    end

    let(:memory) do
      klass = Class.new(FFI::Struct) do
        layout  :data, :pointer,
                :length, :size_t
      end

      klass.new.tap do |struct|
        struct[:data] = data
        struct[:length] = data.size
      end
    end

    subject(:subject) { described_class.new(memory.pointer) }

    it "has data" do
      expect(subject[:data].read_int64).to eq 8192
      expect(subject[:length]).to eq 8
    end
  end
end

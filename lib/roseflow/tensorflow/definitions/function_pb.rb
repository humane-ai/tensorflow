# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: function.proto

require 'google/protobuf'

require 'roseflow/tensorflow/definitions/attr_value_pb'
require 'roseflow/tensorflow/definitions/node_def_pb'
require 'roseflow/tensorflow/definitions/op_def_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "tensorflow.FunctionDefLibrary" do
    repeated :function, :message, 1, "tensorflow.FunctionDef"
    repeated :gradient, :message, 2, "tensorflow.GradientDef"
  end
  add_message "tensorflow.FunctionDef" do
    optional :signature, :message, 1, "tensorflow.OpDef"
    map :attr, :string, :message, 5, "tensorflow.AttrValue"
    repeated :node_def, :message, 3, "tensorflow.NodeDef"
    map :ret, :string, :string, 4
  end
  add_message "tensorflow.GradientDef" do
    optional :function_name, :string, 1
    optional :gradient_func, :string, 2
  end
end

module Roseflow::Tensorflow::Protobuf
  FunctionDefLibrary = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.FunctionDefLibrary").msgclass
  FunctionDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.FunctionDef").msgclass
  GradientDef = Google::Protobuf::DescriptorPool.generated_pool.lookup("tensorflow.GradientDef").msgclass
end

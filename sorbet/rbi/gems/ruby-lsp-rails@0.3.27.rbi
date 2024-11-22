# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ruby-lsp-rails` gem.
# Please instead update this file by running `bin/tapioca gem ruby-lsp-rails`.


# source://ruby-lsp-rails/lib/ruby_lsp_rails/version.rb#4
module RubyLsp; end

# # Supported features
#
# - [Hover](rdoc-ref:RubyLsp::Rails::Hover)
# - [CodeLens](rdoc-ref:RubyLsp::Rails::CodeLens)
# - [DocumentSymbol](rdoc-ref:RubyLsp::Rails::DocumentSymbol)
# - [Definition](rdoc-ref:RubyLsp::Rails::Definition)
#
# source://ruby-lsp-rails/lib/ruby_lsp_rails/version.rb#5
module RubyLsp::Rails; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/active_support_test_case_helper.rb#6
module RubyLsp::Rails::ActiveSupportTestCaseHelper
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/active_support_test_case_helper.rb#10
  sig { params(node: ::Prism::CallNode).returns(T.nilable(::String)) }
  def extract_test_case_name(node); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#20
class RubyLsp::Rails::Addon < ::RubyLsp::Addon
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#26
  sig { void }
  def initialize; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#53
  sig { override.params(global_state: ::RubyLsp::GlobalState, outgoing_queue: ::Thread::Queue).void }
  def activate(global_state, outgoing_queue); end

  # Creates a new CodeLens listener. This method is invoked on every CodeLens request
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#82
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[::LanguageServer::Protocol::Interface::CodeLens],
        uri: ::URI::Generic,
        dispatcher: ::Prism::Dispatcher
      ).void
  end
  def create_code_lens_listener(response_builder, uri, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#117
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[T.any(::LanguageServer::Protocol::Interface::Location, ::LanguageServer::Protocol::Interface::LocationLink)],
        uri: ::URI::Generic,
        node_context: ::RubyLsp::NodeContext,
        dispatcher: ::Prism::Dispatcher
      ).void
  end
  def create_definition_listener(response_builder, uri, node_context, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#103
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::DocumentSymbol,
        dispatcher: ::Prism::Dispatcher
      ).returns(::Object)
  end
  def create_document_symbol_listener(response_builder, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#93
  sig do
    override
      .params(
        response_builder: RubyLsp::ResponseBuilders::Hover,
        node_context: ::RubyLsp::NodeContext,
        dispatcher: ::Prism::Dispatcher
      ).void
  end
  def create_hover_listener(response_builder, node_context, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#65
  sig { override.void }
  def deactivate; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#142
  sig { override.params(title: ::String).void }
  def handle_window_show_message_response(title); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#137
  sig { override.returns(::String) }
  def name; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#48
  sig { returns(::RubyLsp::Rails::RunnerClient) }
  def rails_runner_client; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#70
  sig { override.returns(::String) }
  def version; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#123
  sig { params(changes: T::Array[{uri: ::String, type: ::Integer}]).void }
  def workspace_did_change_watched_files(changes); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#169
  sig { params(id: ::String, title: ::String, percentage: T.nilable(::Integer), message: T.nilable(::String)).void }
  def begin_progress(id, title, percentage: T.unsafe(nil), message: T.unsafe(nil)); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#194
  sig { params(id: ::String).void }
  def end_progress(id); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#227
  sig { void }
  def offer_to_run_pending_migrations; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#201
  sig { params(global_state: ::RubyLsp::GlobalState, outgoing_queue: ::Thread::Queue).void }
  def register_additional_file_watchers(global_state:, outgoing_queue:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#187
  sig { params(id: ::String, percentage: T.nilable(::Integer), message: T.nilable(::String)).void }
  def report_progress(id, percentage: T.unsafe(nil), message: T.unsafe(nil)); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/addon.rb#23
RubyLsp::Rails::Addon::RUN_MIGRATIONS_TITLE = T.let(T.unsafe(nil), String)

# ![CodeLens demo](../../code_lens.gif)
#
# This feature adds Code Lens features for Rails applications.
#
# For Active Support test cases:
#
# - Run tests in the VS Terminal
# - Run tests in the VS Code Test Explorer
# - Debug tests
# - Run migrations in the VS Terminal
#
# For Rails controllers:
#
# - See the path corresponding to an action
# - Click on the action's Code Lens to jump to its declaration in the routes.
#
# Note: This depends on a support for the `rubyLsp.openFile` command.
# For the VS Code extension this is built-in, but for other editors this may require some custom configuration.
#
# The
# [code lens](https://microsoft.github.io/language-server-protocol/specification#textDocument_codeLens)
# request informs the editor of runnable commands such as tests.
# It's available for tests which inherit from `ActiveSupport::TestCase` or one of its descendants, such as
# `ActionDispatch::IntegrationTest`.
#
# # Example:
#
# For the following code, Code Lenses will be added above the class definition above each test method.
#
# ```ruby
# Run
# class HelloTest < ActiveSupport::TestCase # <- Will show code lenses above for running or debugging the whole test
#   test "outputs hello" do # <- Will show code lenses above for running or debugging this test
#     # ...
#   end
#
#   test "outputs goodbye" do # <- Will show code lenses above for running or debugging this test
#     # ...
#   end
# end
# ```
#
# # Example:
# ```ruby
# Run
# class AddFirstNameToUsers < ActiveRecord::Migration[7.1]
#   # ...
# end
# ```
#
# The code lenses will be displayed above the class and above each test method.
#
# Note: When using the Test Explorer view, if your code contains a statement to pause execution (e.g. `debugger`) it
# will cause the test runner to hang.
#
# For the following code, assuming the routing contains `resources :users`, a Code Lens will be seen above each
# action.
#
# ```ruby
# class UsersController < ApplicationController
#   GET /users(.:format)
#   def index # <- Will show code lens above for the path
#   end
# end
# ```
#
# Note: Complex routing configurations may not be supported.
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#74
class RubyLsp::Rails::CodeLens
  include ::RubyLsp::Requests::Support::Common
  include ::RubyLsp::Rails::ActiveSupportTestCaseHelper

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#88
  sig do
    params(
      client: ::RubyLsp::Rails::RunnerClient,
      global_state: ::RubyLsp::GlobalState,
      response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[::LanguageServer::Protocol::Interface::CodeLens],
      uri: ::URI::Generic,
      dispatcher: ::Prism::Dispatcher
    ).void
  end
  def initialize(client, global_state, response_builder, uri, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#109
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#137
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#161
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_leave(node); end

  # Although uncommon, Rails tests can be written with the classic "def test_name" syntax.
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#121
  sig { params(node: ::Prism::DefNode).void }
  def on_def_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#172
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#177
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_leave(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#192
  sig { params(node: ::Prism::DefNode).void }
  def add_jump_to_view(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#252
  sig { params(node: ::Prism::Node, name: ::String, command: ::String).void }
  def add_migrate_code_lens(node, name:, command:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#220
  sig { params(node: ::Prism::DefNode).void }
  def add_route_code_lens_to_action(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#265
  sig { params(node: ::Prism::Node, name: ::String, command: ::String, kind: ::Symbol).void }
  def add_test_code_lens(node, name:, command:, kind:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#184
  sig { returns(T.nilable(T::Boolean)) }
  def controller?; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#242
  sig { returns(::String) }
  def migrate_command; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#247
  sig { returns(T.nilable(::String)) }
  def migration_version; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/code_lens.rb#237
  sig { returns(::String) }
  def test_command; end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#12
module RubyLsp::Rails::Common
  # Log a message to the editor's output panel
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#20
  def log_message(message); end

  # Sends an error result to a request, if the request failed. DO NOT INVOKE THIS METHOD FOR NOTIFICATIONS! Use
  # `log_message` instead, otherwise the client/server communication will go out of sync
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#26
  def send_error_response(message); end

  # Write a message to the client. Can be used for sending notifications to the editor
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#14
  def send_message(message); end

  # Sends a result back to the client
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#31
  def send_result(result); end

  # Handle possible errors for a notification. This should only be used for notifications, which means messages that
  # do not return a response back to the client. Errors are logged to the editor's output panel
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#50
  def with_notification_error_handling(notification_name, &block); end

  # Handle possible errors for a request. This should only be used for requests, which means messages that return a
  # response back to the client. Errors are returned as an error object back to the client
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#37
  def with_request_error_handling(request_name, &block); end
end

# ![Definition demo](../../definition.gif)
#
# The [definition
# request](https://microsoft.github.io/language-server-protocol/specification#textDocument_definition) jumps to the
# definition of the symbol under the cursor.
#
# Currently supported targets:
#
# - Callbacks
# - Named routes (e.g. `users_path`)
#
# # Example
#
# ```ruby
# before_action :foo # <- Go to definition on this symbol will jump to the method
# ```
#
# Notes for named routes:
#
# - It is available only in Rails 7.1 or newer.
# - Route may be defined across multiple files, e.g. using `draw`, rather than in `routes.rb`.
# - Routes won't be found if not defined for the Rails development environment.
# - If using `constraints`, the route can only be found if the constraints are met.
# - Changes to routes won't be picked up until the server is restarted.
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#30
class RubyLsp::Rails::Definition
  include ::RubyLsp::Requests::Support::Common

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#45
  sig do
    params(
      client: ::RubyLsp::Rails::RunnerClient,
      response_builder: RubyLsp::ResponseBuilders::CollectionResponseBuilder[T.any(::LanguageServer::Protocol::Interface::Location, ::LanguageServer::Protocol::Interface::LocationLink)],
      node_context: ::RubyLsp::NodeContext,
      index: ::RubyIndexer::Index,
      dispatcher: ::Prism::Dispatcher
    ).void
  end
  def initialize(client, response_builder, node_context, index, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#66
  sig { params(node: T.any(::Prism::StringNode, ::Prism::SymbolNode)).void }
  def handle_possible_dsl(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#83
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#61
  sig { params(node: ::Prism::StringNode).void }
  def on_string_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#56
  sig { params(node: ::Prism::SymbolNode).void }
  def on_symbol_node_enter(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#142
  sig { params(name: ::String).void }
  def collect_definitions(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#117
  sig { params(node: ::Prism::CallNode).void }
  def handle_association(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#98
  sig { params(node: ::Prism::CallNode).void }
  def handle_callback(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/definition.rb#134
  sig { params(node: ::Prism::CallNode).void }
  def handle_route(node); end
end

# ![Document Symbol demo](../../document_symbol.gif)
#
# The [document symbol](https://microsoft.github.io/language-server-protocol/specification#textDocument_documentSymbol)
# request allows users to navigate between associations, validations, callbacks and ActiveSupport test cases with
# VS Code's "Go to Symbol" feature.
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#11
class RubyLsp::Rails::DocumentSymbol
  include ::RubyLsp::Requests::Support::Common
  include ::RubyLsp::Rails::ActiveSupportTestCaseHelper

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#22
  sig { params(response_builder: RubyLsp::ResponseBuilders::DocumentSymbol, dispatcher: ::Prism::Dispatcher).void }
  def initialize(response_builder, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#37
  sig { params(node: ::Prism::CallNode).void }
  def on_call_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#66
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#71
  sig { params(node: ::Prism::ClassNode).void }
  def on_class_node_leave(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#76
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#81
  sig { params(node: ::Prism::ModuleNode).void }
  def on_module_node_leave(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#88
  sig { params(node: T.any(::Prism::ClassNode, ::Prism::ModuleNode)).void }
  def add_to_namespace_stack(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#223
  sig do
    params(
      name: ::String,
      range: ::LanguageServer::Protocol::Interface::Range,
      selection_range: ::LanguageServer::Protocol::Interface::Range
    ).void
  end
  def append_document_symbol(name:, range:, selection_range:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#98
  sig { params(node: ::Prism::CallNode, message: ::String).void }
  def handle_all_arg_types(node, message); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#197
  sig { params(node: ::Prism::CallNode, message: ::String).void }
  def handle_class_arg_types(node, message); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#168
  sig { params(node: ::Prism::CallNode, message: ::String).void }
  def handle_symbol_and_string_arg_types(node, message); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/document_symbol.rb#93
  sig { params(node: T.any(::Prism::ClassNode, ::Prism::ModuleNode)).void }
  def remove_from_namespace_stack(node); end
end

# ![Hover demo](../../hover.gif)
#
# Augment [hover](https://microsoft.github.io/language-server-protocol/specification#textDocument_hover) with
# information about a model.
#
# # Example
#
# ```ruby
# User.all
# # ^ hovering here will show information about the User model
# ```
#
# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#17
class RubyLsp::Rails::Hover
  include ::RubyLsp::Requests::Support::Common

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#30
  sig do
    params(
      client: ::RubyLsp::Rails::RunnerClient,
      response_builder: RubyLsp::ResponseBuilders::Hover,
      node_context: ::RubyLsp::NodeContext,
      global_state: ::RubyLsp::GlobalState,
      dispatcher: ::Prism::Dispatcher
    ).void
  end
  def initialize(client, response_builder, node_context, global_state, dispatcher); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#39
  sig { params(node: ::Prism::ConstantPathNode).void }
  def on_constant_path_node_enter(node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#48
  sig { params(node: ::Prism::ConstantReadNode).void }
  def on_constant_read_node_enter(node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#83
  sig { params(default_value: ::String, type: ::String).returns(::String) }
  def format_default(default_value, type); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/hover.rb#58
  sig { params(name: ::String).void }
  def generate_column_content(name); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#6
class RubyLsp::Rails::IndexingEnhancement < ::RubyIndexer::Enhancement
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#14
  sig { override.params(call_node: ::Prism::CallNode).void }
  def on_call_node_enter(call_node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#34
  sig { override.params(call_node: ::Prism::CallNode).void }
  def on_call_node_leave(call_node); end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#48
  sig { params(owner: ::RubyIndexer::Entry::Namespace, call_node: ::Prism::CallNode).void }
  def handle_association(owner, call_node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#102
  sig { params(owner: ::RubyIndexer::Entry::Namespace, call_node: ::Prism::CallNode).void }
  def handle_class_methods(owner, call_node); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/indexing_enhancement.rb#77
  sig { params(owner: ::RubyIndexer::Entry::Namespace, call_node: ::Prism::CallNode).void }
  def handle_concern_extend(owner, call_node); end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#341
class RubyLsp::Rails::NullClient < ::RubyLsp::Rails::RunnerClient
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#345
  sig { void }
  def initialize; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#359
  sig { override.returns(::String) }
  def rails_root; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#349
  sig { override.void }
  def shutdown; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#354
  sig { override.returns(T::Boolean) }
  def stopped?; end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#366
  sig { params(message: ::String, type: ::Integer).void }
  def log_message(message, type: T.unsafe(nil)); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#376
  sig { override.returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def read_response; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#371
  sig { override.params(request: ::String, params: T.untyped).void }
  def send_message(request, **params); end
end

# source://ruby-lsp-rails/lib/ruby_lsp_rails/railtie.rb#8
class RubyLsp::Rails::Railtie < ::Rails::Railtie; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#9
class RubyLsp::Rails::RunnerClient
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#55
  sig { params(outgoing_queue: ::Thread::Queue).void }
  def initialize(outgoing_queue); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#143
  sig { params(model_name: ::String, association_name: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def association_target_location(model_name:, association_name:); end

  # Delegates a notification to a server add-on
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#181
  sig { params(server_addon_name: ::String, request_name: ::String, params: T.untyped).void }
  def delegate_notification(server_addon_name:, request_name:, **params); end

  # Delegates a request to a server add-on
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#221
  sig do
    params(
      server_addon_name: ::String,
      request_name: ::String,
      params: T.untyped
    ).returns(T.nilable(T::Hash[::Symbol, T.untyped]))
  end
  def delegate_request(server_addon_name:, request_name:, **params); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#266
  sig { params(request: ::String, params: T.untyped).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def make_request(request, **params); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#127
  sig { params(name: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def model(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#191
  sig { returns(T.nilable(::String)) }
  def pending_migrations_message; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#52
  sig { returns(::String) }
  def rails_root; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#116
  sig { params(server_addon_path: ::String).void }
  def register_server_addon(server_addon_path); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#169
  sig { params(controller: ::String, action: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def route(controller:, action:); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#158
  sig { params(name: ::String).returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def route_location(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#203
  sig { returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def run_migrations; end

  # Notifications are like messages, but one-way, with no response sent back.
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#273
  sig { params(request: ::String, params: T.untyped).void }
  def send_notification(request, **params); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#245
  sig { void }
  def shutdown; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#256
  sig { returns(T::Boolean) }
  def stopped?; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#233
  sig { void }
  def trigger_reload; end

  private

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#317
  sig { void }
  def force_kill; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#323
  sig { params(message: ::String, type: ::Integer).void }
  def log_message(message, type: T.unsafe(nil)); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#330
  sig { returns(T.nilable(::Integer)) }
  def read_content_length; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#291
  sig { overridable.returns(T.nilable(T::Hash[::Symbol, T.untyped])) }
  def read_response; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#278
  sig { overridable.params(request: ::String, params: T.untyped).void }
  def send_message(request, **params); end

  class << self
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#14
    sig { params(outgoing_queue: ::Thread::Queue).returns(::RubyLsp::Rails::RunnerClient) }
    def create_client(outgoing_queue); end
  end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#47
class RubyLsp::Rails::RunnerClient::EmptyMessageError < ::RubyLsp::Rails::RunnerClient::MessageError; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#45
class RubyLsp::Rails::RunnerClient::InitializationError < ::StandardError; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/runner_client.rb#46
class RubyLsp::Rails::RunnerClient::MessageError < ::StandardError; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#103
class RubyLsp::Rails::Server
  include ::RubyLsp::Rails::Common

  # @return [Server] a new instance of Server
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#106
  def initialize(stdout: T.unsafe(nil), override_default_output_device: T.unsafe(nil)); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#139
  def execute(request, params); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#126
  def start; end

  private

  # @return [Boolean]
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#267
  def active_record_model?(const); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#298
  def load_routes; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#277
  def pending_migrations_message; end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#255
  def resolve_association_target(params); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#239
  def resolve_database_info_from_model(model_name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#188
  def resolve_route_info(requirements); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#234
  def route_location(name); end

  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#287
  def run_migrations; end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#62
class RubyLsp::Rails::ServerAddon
  include ::RubyLsp::Rails::Common

  # @return [ServerAddon] a new instance of ServerAddon
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#90
  def initialize(stdout); end

  # @raise [NotImplementedError]
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#98
  def execute(request, params); end

  # @raise [NotImplementedError]
  #
  # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#94
  def name; end

  class << self
    # Delegate `request` with `params` to the server add-on with the given `name`
    #
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#77
    def delegate(name, request, params); end

    # Instantiate all server addons and store them in a hash for easy access after we have discovered the classes
    #
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#82
    def finalize_registrations!(stdout); end

    # We keep track of runtime server add-ons the same way we track other add-ons, by storing classes that inherit
    # from the base one
    #
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/server.rb#71
    def inherited(child); end
  end
end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/associations.rb#6
module RubyLsp::Rails::Support; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/associations.rb#7
module RubyLsp::Rails::Support::Associations; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/associations.rb#8
RubyLsp::Rails::Support::Associations::ALL = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#7
module RubyLsp::Rails::Support::Callbacks; end

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#67
RubyLsp::Rails::Support::Callbacks::ALL = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#37
RubyLsp::Rails::Support::Callbacks::CONTROLLERS = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#55
RubyLsp::Rails::Support::Callbacks::JOBS = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/callbacks.rb#8
RubyLsp::Rails::Support::Callbacks::MODELS = T.let(T.unsafe(nil), Array)

# source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/location_builder.rb#7
class RubyLsp::Rails::Support::LocationBuilder
  class << self
    # @raise [ArgumentError]
    #
    # source://ruby-lsp-rails/lib/ruby_lsp/ruby_lsp_rails/support/location_builder.rb#12
    sig { params(location_string: ::String).returns(::LanguageServer::Protocol::Interface::Location) }
    def line_location_from_s(location_string); end
  end
end

# source://ruby-lsp-rails/lib/ruby_lsp_rails/version.rb#6
RubyLsp::Rails::VERSION = T.let(T.unsafe(nil), String)

# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `netrc` gem.
# Please instead update this file by running `bin/tapioca gem netrc`.

class Netrc
  # @return [Netrc] a new instance of Netrc
  def initialize(path, data); end

  def [](k); end
  def []=(k, info); end
  def delete(key); end
  def each(&block); end
  def length; end
  def new_item(m, l, p); end

  # Returns the value of attribute new_item_prefix.
  def new_item_prefix; end

  # Sets the attribute new_item_prefix
  #
  # @param value the value to set the attribute new_item_prefix to.
  def new_item_prefix=(_arg0); end

  def save; end
  def unparse; end

  class << self
    def check_permissions(path); end
    def config; end

    # @yield [self.config]
    def configure; end

    def default_path; end
    def home_path; end
    def lex(lines); end
    def netrc_filename; end

    # Returns two values, a header and a list of items.
    # Each item is a tuple, containing some or all of:
    # - machine keyword (including trailing whitespace+comments)
    # - machine name
    # - login keyword (including surrounding whitespace+comments)
    # - login
    # - password keyword (including surrounding whitespace+comments)
    # - password
    # - trailing chars
    # This lets us change individual fields, then write out the file
    # with all its original formatting.
    def parse(ts); end

    # Reads path and parses it as a .netrc file. If path doesn't
    # exist, returns an empty object. Decrypt paths ending in .gpg.
    def read(path = T.unsafe(nil)); end

    # @return [Boolean]
    def skip?(s); end
  end
end

class Netrc::Entry < ::Struct
  # Returns the value of attribute login
  #
  # @return [Object] the current value of login
  def login; end

  # Sets the attribute login
  #
  # @param value [Object] the value to set the attribute login to.
  # @return [Object] the newly set value
  def login=(_); end

  # Returns the value of attribute password
  #
  # @return [Object] the current value of password
  def password; end

  # Sets the attribute password
  #
  # @param value [Object] the value to set the attribute password to.
  # @return [Object] the newly set value
  def password=(_); end

  def to_ary; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Netrc::Error < ::StandardError; end

class Netrc::TokenArray < ::Array
  def readto; end
  def take; end
end

Netrc::VERSION = T.let(T.unsafe(nil), String)
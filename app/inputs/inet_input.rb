# This is needed for active-admin to work with formtatsic, and not complain
# about inet method not existing.
# from https://github.com/Prelang/feedback/issues/14

class InetInput < Formtastic::Inputs::StringInput
end

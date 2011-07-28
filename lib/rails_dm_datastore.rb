# patch for -- dm-core 1.1.0 & rails 2.3.x
require 'dm-core'
require 'dm-ar-finders'
require 'dm-timestamps'
require 'dm-validations'
require 'extlib'
DataMapper.setup(:default, "appengine://auto")

require 'rails_dm_datastore/data_mapper'
require 'rails_dm_datastore/local_object_space'
require 'rails_dm_datastore/extlib'
require 'rails_dm_datastore/action_view'

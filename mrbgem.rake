MRuby::Gem::Specification.new('mruby-fiberpool') do |spec|
  spec.license = 'MIT'
  spec.author  = 'mattn'

  spec.add_dependency('mruby-fiber')
  spec.add_dependency('mruby-proc-ext')
end

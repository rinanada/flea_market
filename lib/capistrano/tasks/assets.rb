namespace :assets do
  desc 'compile without digest'
  def without_digest
    Sprockets::Asset.class_eval do
      def hacked_digest_path
        logical_path
      end

      alias_method :org_digest_path, :digest_path
      alias_method :digest_path, :hacked_digest_path
    end
    yield
    Sprockets::Asset.class_eval do
      alias_method :digest_path, :org_digest_path
    end
  end

  task :precompile_without_digest => :environment do
    without_digest do
        Rake::Task["assets:precompile"].invoke
    end
  end

end

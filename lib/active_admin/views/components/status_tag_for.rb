require 'arbre'
require 'active_admin/component'
require 'active_admin/views/components/status_tag'

module ActiveAdmin
  module Views
    class StatusTagFor < StatusTag
      VERSION = '0.0.1'
      builder_method :status_tag_for

      def build(condition, *args)
        if condition
          super(true_content(args), :ok)
        else
          super(false_content(args), :warn)
        end
      end

      private
      def true_content(args)
        case args.length
        when 0
          I18n.t('status_tag_for.true', default: 'Yes')
        when 1, 2
          args.fetch(0)
        else
          raise ArgumentError, "Invalid number of argument: #{args}"
        end
      end

      def false_content(args)
        case args.length
        when 0
          I18n.t('status_tag_for.false', default: 'No')
        when 1
          args.fetch(0)
        when 2
          args.fetch(1)
        else
          raise ArgumentError, "Invalid number of argument: #{args}"
        end
      end
    end
  end
end

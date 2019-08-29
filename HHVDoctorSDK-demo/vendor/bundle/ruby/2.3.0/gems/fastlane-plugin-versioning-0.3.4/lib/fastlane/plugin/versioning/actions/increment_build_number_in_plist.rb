module Fastlane
  module Actions
    class IncrementBuildNumberInPlistAction < Action
      def self.run(params)
        if params[:build_number]
          next_build_number = params[:build_number]
        else
          current_build_number = GetBuildNumberFromPlistAction.run(params)
          build_array = current_build_number.split(".").map(&:to_i)
          build_array[-1] = build_array[-1]+1            
          next_build_number = build_array.join(".")
        end

        if Helper.test?
          plist = "/tmp/fastlane/tests/fastlane/Info.plist"
        else
          plist = GetInfoPlistPathAction.run(params)
        end

        SetInfoPlistValueAction.run(path: plist, key: 'CFBundleVersion', value: next_build_number)

        Actions.lane_context[SharedValues::BUILD_NUMBER] = next_build_number
      end

      def self.description
        "Increment the build number of your project"
      end

      def self.details
        [
          "This action will increment the build number directly in Info.plist. "
        ].join("\n")
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :build_number,
                                       env_name: "FL_BUILD_NUMBER_BUILD_NUMBER",
                                       description: "Change to a specific version",
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :xcodeproj,
                                       env_name: "FL_VERSION_NUMBER_PROJECT",
                                       description: "optional, you must specify the path to your main Xcode project if it is not in the project root directory",
                                       optional: true,
                                       verify_block: proc do |value|
                                         UI.user_error!("Please pass the path to the project, not the workspace") if value.end_with? ".xcworkspace"
                                         UI.user_error!("Could not find Xcode project at path '#{File.expand_path(value)}'") if !File.exist?(value) and !Helper.is_test?
                                       end),
          FastlaneCore::ConfigItem.new(key: :target,
                                       env_name: "FL_VERSION_NUMBER_TARGET",
                                       optional: true,
                                       conflicting_options: [:scheme],
                                       description: "Specify a specific target if you have multiple per project, optional"),
          FastlaneCore::ConfigItem.new(key: :scheme,
                                       env_name: "FL_VERSION_NUMBER_SCHEME",
                                       optional: true,
                                       conflicting_options: [:target],
                                       description: "Specify a specific scheme if you have multiple per project, optional"),
          FastlaneCore::ConfigItem.new(key: :build_configuration_name,
                                       optional: true,
                                       description: "Specify a specific build configuration if you have different Info.plist build settings for each configuration")
        ]
      end

      def self.output
        [
          ['BUILD_NUMBER', 'The new version number']
        ]
      end

      def self.author
        "SiarheiFedartsou"
      end

      def self.is_supported?(platform)
        [:ios, :mac].include? platform
      end
    end
  end
end

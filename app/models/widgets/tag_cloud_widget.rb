class TagCloudWidget < Widget
  field :settings, :type => Hash, :default => { :limit => 30, :on_mainlist => true, :style => "tag_cloud" }

  protected
  def check_settings
    if self.settings['limit'].to_i > 30
      self.errors.add :settings, I18n.t("questions.model.messages.too_many_tags")
    end
  end
end

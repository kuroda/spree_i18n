require 'spec_helper'

describe "Japanese (ja) translations" do
  describe "spree_api.yml" do
    subject { "config/locales/ja/spree_api.yml" }
    it { subject.should be_a_subset_of("default/spree_api.yml") }
    it { subject.should be_a_complete_translation_of("default/spree_api.yml") }
    it { subject.should be_a_thorough_translation_of("default/spree_api.yml").except([]) }
  end
  
  describe "spree_auth.yml" do
    subject { "config/locales/ja/spree_auth.yml" }
    it { subject.should be_a_subset_of("default/spree_auth.yml") }
    it { subject.should be_a_complete_translation_of("default/spree_auth.yml") }
    it { subject.should be_a_thorough_translation_of("default/spree_auth.yml").except([]) }
  end
  
  describe "spree_core.yml" do
    subject { "config/locales/ja/spree_core.yml" }
    let(:untranslated_keys) do
      [ 
        "activerecord.attributes.spree/country.iso",
        "activerecord.attributes.spree/country.iso3",
        "pagination.truncate",
        "powered_by",
        "smtp",
        "spree.date_picker.format",
        "views.pagination.truncate"
      ]
    end
    
    it { subject.should be_a_subset_of("default/spree_core.yml") }
    it { subject.should be_a_complete_translation_of("default/spree_core.yml") }
    it do
      subject.should be_a_thorough_translation_of("default/spree_core.yml").
        except(untranslated_keys)
    end
  end
  
  describe "spree_dash.yml" do
    subject { "config/locales/ja/spree_dash.yml" }
    it { subject.should be_a_subset_of("default/spree_dash.yml") }
    it { subject.should be_a_complete_translation_of("default/spree_dash.yml") }
    it { subject.should be_a_thorough_translation_of("default/spree_dash.yml").except([]) }
  end
  
  describe "spree_promo.yml" do
    subject { "config/locales/ja/spree_promo.yml" }
    it { subject.should be_a_subset_of("default/spree_promo.yml") }
    it { subject.should be_a_complete_translation_of("default/spree_promo.yml") }
    it { subject.should be_a_thorough_translation_of("default/spree_promo.yml").except([]) }
  end
end

# frozen_string_literal: true

require 'spec_helper'

describe ViaCep::HTTP do
  context 'mount URI' do
    it 'to address search' do
      expect(ViaCep::HTTP.uri(path: 'SP/São Paulo/Fake address').path).to eq('/ws/SP/S%C3%A3o%20Paulo/Fake%20address/json')
    end
  end
end

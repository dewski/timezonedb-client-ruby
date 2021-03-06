# Copyright 2015 Skyscanner Limited.
#
# Licensed under the Apache License, Version 2.0 (the "License");
#
# you may not use this file except in compliance with the License.
#
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative '../../spec_helper'

describe Timezonedb::Client::Response do
  describe '#initialize' do
    let(:message) { 'a message' }
    let(:country_code) { 'GR' }
    let(:zone_name) { 'Europe\/Athens' }
    let(:abbreviation) { 'EEST' }
    let(:gmt_offset) { '10800' }
    let(:dst) { '1' }
    let(:timestamp) { 1_429_107_488 }

    let(:response_hash) do
      {
        'status' => 'OK',
        'message' => message,
        'countryCode' => country_code,
        'zoneName' => zone_name,
        'abbreviation' => abbreviation,
        'gmtOffset' => gmt_offset,
        'dst' => dst,
        'timestamp' => timestamp
      }
    end

    subject { Timezonedb::Client::Response.new(response_hash) }

    it 'sets the correct message' do
      expect(subject.message).to eq message
    end

    it 'sets the correct country_code' do
      expect(subject.country_code).to eq country_code
    end

    it 'sets the correct zone_name' do
      expect(subject.zone_name).to eq zone_name
    end

    it 'sets the correct abbreviation' do
      expect(subject.abbreviation).to eq abbreviation
    end

    it 'sets the correct gmt_offset' do
      expect(subject.gmt_offset).to eq gmt_offset
    end

    it 'sets the correct dst' do
      expect(subject.dst).to eq dst
    end

    it 'sets the correct timestamp' do
      expect(subject.timestamp).to eq timestamp
    end
  end
end

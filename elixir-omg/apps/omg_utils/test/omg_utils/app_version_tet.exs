# Copyright 2019-2020 OMG Network Pte Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule OMG.Utils.AppVersionTest do
  use ExUnit.Case, async: true

  alias OMG.Utils.AppVersion

  describe "version/1" do
    test "returns a compliant semver when given an application" do
      # Using :elixir as the app because it is certain to be running during the test
      version = AppVersion.version(:elixir)
      assert {:ok, _} = Version.parse(version)
    end
  end
end

#!/usr/bin/env bats
#
# Copyright 2019 asdf-ccache authors
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
#

@test "download command fails if the input is not version number" {
  run asdf install ccache ref
  [ "$status" -eq 1 ]
  echo "$output" | grep "Could not download"
}

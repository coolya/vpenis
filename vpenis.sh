#!/system/bin/sh

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


echo `uptime|grep days|sed 's/.*up \([0-9]*\) day.*/\1\/10+/'; cat /proc/cpuinfo|grep '^cpu MHz'|awk '{print $4"/30 +";}';free|grep '^Mem'|awk '{print $3"/1024/3+"}'; df -P -k | grep -v 1k | awk '{if ($1 ~ "/dev/(scsi|sd)"){ s+= $2} s+= $2;} END {print s/1024/50"";}'`

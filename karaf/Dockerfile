################################################################################
#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

FROM apache/karaf:4.4.1

RUN export PATH="$KARAF_HOME/bin/client:$PATH"
RUN sed -i '/openhab/s/^#//g' $KARAF_HOME/etc/users.properties
RUN sed -i '/_g_/s/^#//g' $KARAF_HOME/etc/users.properties
RUN sed -i '/USER/s/^/#/g' $KARAF_HOME/etc/users.properties

COPY init.sh /init.sh
COPY karaf.conf /karaf.conf
RUN chmod +x ./init.sh
CMD ./init.sh

EXPOSE 8101 1099 44444 8181 9999

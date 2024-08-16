#!/usr/bin/env bash

# These flags are from https://www.birdflop.com/resources/flags/ modified to work when using 'mcman build'
fileName="server.jar"
memory=8192

# Convert memory to integer
declare -i memory

# Change to the server directory
cd server || { echo "Failed to enter 'server' directory"; exit 1; }

# Find the latest fabric-server jar
latest_jar=$(ls -t fabric-server-*.jar 2>/dev/null | head -n 1)

# If a fabric-server jar is found, rename it to server.jar
if [ -n "$latest_jar" ]; then
  mv "$latest_jar" "$fileName"
  echo "Renamed $latest_jar to $fileName"
elif [ ! -f "$fileName" ]; then
  echo "No fabric-server-*.jar file found and no existing $fileName. Exiting."
  exit 1
else
  echo "No new fabric-server-*.jar found, using existing $fileName."
fi

# Infinite loop to run the server
while true; do
  java -Xms"${memory}M" -Xmx"${memory}M" \
       -XX:+UnlockExperimentalVMOptions \
       -XX:+UnlockDiagnosticVMOptions \
       -XX:+AlwaysActAsServerClassMachine \
       -XX:+AlwaysPreTouch \
       -XX:+DisableExplicitGC \
       -XX:+UseNUMA \
       -XX:NmethodSweepActivity=1 \
       -XX:ReservedCodeCacheSize=400M \
       -XX:NonNMethodCodeHeapSize=12M \
       -XX:ProfiledCodeHeapSize=194M \
       -XX:NonProfiledCodeHeapSize=194M \
       -XX:-DontCompileHugeMethods \
       -XX:MaxNodeLimit=240000 \
       -XX:NodeLimitFudgeFactor=8000 \
       -XX:+UseVectorCmov \
       -XX:+PerfDisableSharedMem \
       -XX:+UseFastUnorderedTimeStamps \
       -XX:+UseCriticalJavaThreadPriority \
       -XX:ThreadPriorityPolicy=1 \
       -XX:AllocatePrefetchStyle=3 \
       -XX:+UseG1GC \
       -XX:MaxGCPauseMillis=130 \
       -XX:G1NewSizePercent=28 \
       -XX:G1HeapRegionSize=16M \
       -XX:G1ReservePercent=20 \
       -XX:G1MixedGCCountTarget=3 \
       -XX:InitiatingHeapOccupancyPercent=10 \
       -XX:G1MixedGCLiveThresholdPercent=90 \
       -XX:G1RSetUpdatingPauseTimePercent=0 \
       -XX:SurvivorRatio=32 \
       -XX:MaxTenuringThreshold=1 \
       -XX:G1SATBBufferEnqueueingThresholdPercent=30 \
       -XX:G1ConcMarkStepDurationMillis=5 \
       -XX:G1ConcRSHotCardLimit=16 \
       -XX:G1ConcRefinementServiceIntervalMillis=150 \
       -XX:+EagerJVMCI \
       -Dgraal.TuneInlinerExploration=1 \
       -Dgraal.CompilerConfiguration=enterprise \
       -jar "$fileName"

  echo "Restarting in 5 seconds..."
  echo "Press CTRL + C to cancel."
  sleep 5
done

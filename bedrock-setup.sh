#!/bin/sh

if [ -n "$SERVER_NAME" ]; then
  sed -i -e "s/^server-name=.*/server-name=$SERVER_NAME/" server.properties
fi

if [ -n "$GAMEMODE" ]; then
  sed -i -e "s/^gamemode=.*/gamemode=$GAMEMODE/" server.properties
fi

if [ -n "$FORCE_GAMEMODE" ]; then
  sed -i -e "s/^force-gamemode=.*/force-gamemode=$FORCE_GAMEMODE/" server.properties
fi

if [ -n "$DIFFICULTY" ]; then
  sed -i -e "s/^difficulty=.*/difficulty=$DIFFICULTY/" server.properties
fi

if [ -n "$ALLOW_CHEATS" ]; then
  sed -i -e "s/^allow-cheats=.*/allow-cheats=$ALLOW_CHEATS/" server.properties
fi

if [ -n "$MAX_PLAYERS" ]; then
  sed -i -e "s/^max-players=.*/max-players=$MAX_PLAYERS/" server.properties
fi

if [ -n "$ONLINE_MODE" ]; then
  sed -i -e "s/^online-mode=.*/online-mode=$ONLINE_MODE/" server.properties
fi

if [ -n "$ALLOW_LIST" ]; then
  sed -i -e "s/^allow-list=.*/allow-list=$ALLOW_LIST/" server.properties
fi

if [ -n "$LEVEL_NAME" ]; then
  sed -i -e "s/^level-name=.*/level-name=$LEVEL_NAME/" server.properties
fi

if [ -n "$LEVEL_SEED" ]; then
  sed -i -e "s/^level-seed=.*/level-seed=$LEVEL_SEED/" server.properties
fi

LD_LIBRARY_PATH=. ./bedrock_server
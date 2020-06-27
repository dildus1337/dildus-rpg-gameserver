rem TODO: Нормальный скрипт.
rem TODO: Отладочная сборка и релизная.
rem TODO: Параметры компилятора (-d, -O и т. д.).



rem Проверить путь.
rem ../../../tools/pawn/pawncc.exe ../../source/src/pawn/main.pwn -D=../../../output/gamemode -d=3 -o=dildus_rpg.amx -O=0 -v=2 -\ -; -(
rem TODO: Поправить переход.
cd ../../../tools/pawn
pawncc.exe ../../source/src/pawn/main.pwn -D=../../output/gamemode -d=3 -o=dildus_rpg.amx -O=0 -v=2 -\ -; -(

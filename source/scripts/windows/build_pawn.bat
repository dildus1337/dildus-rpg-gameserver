rem TODO: Нормальный скрипт.
rem TODO: Отладочная сборка и релизная.
rem TODO: Параметры компилятора (-d, -O и т. д.).



rem TODO: Поправить переход и список файлов для компиляции (-i=...).
cd ../../../tools/pawn
pawncc.exe ../../source/src/pawn/main.pwn -D=../../output/gamemodes -d=3 -o=dildus_rpg.amx -O=0 -v=2 -\ -; -( -i=../../source/src/pawn
cd ../../source/scripts/windows

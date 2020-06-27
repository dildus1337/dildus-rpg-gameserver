import os
import shutil



# # # # #
# Создание выходной директории.
# # # # #
path_output_folder = "../../output"
os.mkdir(path_output_folder)



# # # # #
# Генерация конфигурации сервера.
# # # # #
path_server_cfg = "../cfg/server.cfg"
file_server_cfg = open(path_server_cfg, "r")
data_server_cfg = file_server_cfg.readlines()
file_server_cfg.close()

# TODO: Нормальный цикл FOR.
i = 0
while (i < len(data_server_cfg)):
    if (data_server_cfg[i] == "rcon_password $RCON_PASSWORD" + '\n'):
        # TODO: Случайная генерация RCON-пароля.
        data_server_cfg[i] = "rcon_password (x1PLACE!HOLDER1x)" + '\n'
    i += 1

path_new_server_cfg = path_output_folder + "/server.cfg"
file_new_server_cfg = open(path_new_server_cfg, "w")
i = 0
while (i < len(data_server_cfg)):
    file_new_server_cfg.write(data_server_cfg[i])
    i += 1
file_new_server_cfg.close()



# # # # #
# Перенос требуемых исполняемых файлов и лицензии SAMP.
# # # # #
server_os = "windows"

announce = False
npc = False

path_samp_license = "../lic/SAMP_LICENSE.txt"
if (server_os == "windows"):
    path_server = "../exec/windows/samp-server.exe"
    path_announce = "../exec/windows/announce.exe"
    path_npc = "../exec/windows/samp-npc.exe"
elif (server_os == "linux"):
    path_server = "../exec/linux/samp03svr"
    path_announce = "../exec/linux/announce"
    path_npc = "../exec/linux/samp-npc"

shutil.copy2(path_server, path_output_folder)
shutil.copy2(path_samp_license, path_output_folder)
if (announce == True):
    shutil.copy2(path_announce, path_output_folder)
if (npc == True):
    shutil.copy2(path_npc, path_output_folder)

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
    if (data_server_cfg[i] == "rcon_password $RCON_PASSWORD"):
        # TODO: Случайная генерация RCON-пароля.
        data_server_cfg[i] = "rcon_password (x1PLACE!HOLDER1x)"

path_new_server_cfg = path_output_folder + "/server.cfg"
file_new_server_cfg = open(path_new_server_cfg, "w")
i = 0
while (i < len(data_server_cfg)):
    file_new_server_cfg.write(data_server_cfg[i] + '\n')
file_new_server_cfg.close()



# # # # #
# Перенос требуемых исполняемых файлов и лицензии SAMP.
# # # # #
announce = False
npc = False

path_server = "../exec/samp03svr"
path_samp_license = "../lic/SAMP_LICENSE.txt"
path_announce = "../exec/announce"
path_npc = "../exec/samp-npc"

shutil.copy2(path_server, path_output_folder)
shutil.copy2(path_samp_license, path_output_folder)
if (announce == True):
    shutil.copy2(path_announce, path_output_folder)
if (npc == True):
    shutil.copy2(path_npc, path_output_folder)

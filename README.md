
🚀 **Linux konfiguratsiyalaringizni avtomatik zaxiralang!** 🖥️✨  

Sizning **Linux konfiguratsiyalaringiz** (.config fayllari) doimo xavfsiz bo‘lishi kerak! **[Muhiddin0/linux-config](https://github.com/Muhiddin0/linux-config)** repoda **Zsh shell uchun avtomatlashtirilgan backup skripti** mavjud. 🔄  

📂 **Nima qiladi?**  
✅ `.config` ichidagi muhim papkalarni avtomatik nusxalaydi  
✅ `git` yordamida o‘zgarishlarni kuzatadi  
✅ **Faqat o‘zgarishlar** bo‘lsa, `commit` va `push` qiladi 🚀  

💻 **Ishga tushirish juda oson:**  

```bash
git clone https://github.com/Muhiddin0/linux-config.git
cd linux-config
chmod +x backuper.si
./backuper.sh
```

⚡ **Tizim yoqilganda avtomatik ishlashi uchun** `crontab -e` ga qo‘shing:  

```
@reboot zsh /home/user/backup_dotfiles.sh
```

🔗 **Batafsil:** [GitHub repo](https://github.com/Muhiddin0/linux-config)  

♻️ **Konfiguratsiyalaringiz xavfsiz bo‘lsin!**  

# Linux #Backup #Automation #Dotfiles #GitHub

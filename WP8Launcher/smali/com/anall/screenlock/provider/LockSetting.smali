.class public Lcom/anall/screenlock/provider/LockSetting;
.super Lcom/lx/launcher8/cfg/BaseSetting;
.source "LockSetting.java"


# static fields
.field public static final KEY_LOCK_BAR:Ljava/lang/String; = "LockStatusBar"

.field public static final KEY_LOCK_BG:Ljava/lang/String; = "ThemeLockBg"

.field public static final KEY_LOCK_EMAIL:Ljava/lang/String; = "lockemail"

.field public static final KEY_LOCK_GAP:Ljava/lang/String; = "lockeygap"

.field public static final KEY_LOCK_PWD:Ljava/lang/String; = "lockkey"

.field public static final KEY_LOCK_SOUND:Ljava/lang/String; = "LockSound"

.field public static final KEY_LOCK_STYLE:Ljava/lang/String; = "LockTheme"

.field public static final KEY_LOCK_TEXT_COLOR:Ljava/lang/String; = "ThemeLockColor"

.field public static final KEY_PAPER_BG:Ljava/lang/String; = "wallpaper"

.field public static final KEY_REMENBER_EMAIL:Ljava/lang/String; = "remenberemail"

.field public static final KEY_UNLOCK_SOUND:Ljava/lang/String; = "UnLockSound"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lx/launcher8/cfg/BaseSetting;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getLastEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "remenberemail"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockSoundPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "LockSound"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockStatusBar()I
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "LockStatusBar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLockTheme()I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "LockTheme"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPaperBg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "wallpaper"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "lockkey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPwdEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "lockemail"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeLockBg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeLockBg"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeLockColor()I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeLockColor"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUnLockSoundPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "UnLockSound"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLockGap()Z
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "lockeygap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public read(Ljava/io/DataInput;I)Landroid/content/SharedPreferences$Editor;
    .locals 10
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v8, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 175
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "LockTheme"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v8, "LockStatusBar"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, path:Ljava/lang/String;
    const-string v8, "ThemeLockBg"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const/4 v8, 0x1

    if-le p2, v8, :cond_0

    const/4 v8, 0x7

    if-ge p2, v8, :cond_0

    const-string v8, "none"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 181
    .local v6, len:I
    if-lez v6, :cond_0

    .line 182
    new-array v0, v6, [B

    .line 183
    .local v0, buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 185
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/AnallApp;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "lockbg"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v4, f:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v5, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 189
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .end local v0           #buffer:[B
    .end local v4           #f:Ljava/io/File;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #len:I
    :cond_0
    :goto_0
    const-string v8, "ThemeLockColor"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    const/4 v8, 0x5

    if-ge p2, v8, :cond_2

    .line 238
    :cond_1
    :goto_1
    return-object v3

    .line 190
    .restart local v0       #buffer:[B
    .restart local v6       #len:I
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 193
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0           #buffer:[B
    .end local v2           #e1:Ljava/io/IOException;
    .end local v6           #len:I
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 201
    const-string v8, "LockSound"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    if-eqz v7, :cond_3

    const-string v8, "sound_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 203
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 204
    .restart local v6       #len:I
    if-lez v6, :cond_3

    .line 205
    new-array v0, v6, [B

    .line 206
    .restart local v0       #buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 208
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 210
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 219
    .end local v0           #buffer:[B
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #len:I
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 220
    const-string v8, "UnLockSound"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    if-eqz v7, :cond_1

    const-string v8, "sound_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 222
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 223
    .restart local v6       #len:I
    if-lez v6, :cond_1

    .line 224
    new-array v0, v6, [B

    .line 225
    .restart local v0       #buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 227
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 229
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 230
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 231
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 232
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 213
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 214
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 215
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v2           #e1:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 234
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic read(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/anall/screenlock/provider/LockSetting;->read(Ljava/io/DataInput;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setLastEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remenberemail"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void
.end method

.method public setLockGap(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockeygap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public setLockSoundPath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LockSound"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public setLockStatusBar(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LockStatusBar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public setLockTheme(I)V
    .locals 2
    .parameter "theme"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LockTheme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public setPaperBg(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public setPwdEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockemail"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method public setThemeLockBg(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeLockBg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public setThemeLockColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeLockColor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method public setUnLockSoundPath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/anall/screenlock/provider/LockSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UnLockSound"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 10
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 242
    invoke-virtual {p0}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 243
    invoke-virtual {p0}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 244
    invoke-virtual {p0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, path:Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockColor()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 248
    invoke-virtual {p0}, Lcom/anall/screenlock/provider/LockSetting;->getLockSoundPath()Ljava/lang/String;

    move-result-object v6

    .line 249
    if-nez v6, :cond_0

    const-string v6, ""

    .line 250
    :cond_0
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 251
    const-string v7, "sound_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 252
    const/4 v5, 0x0

    .line 254
    .local v5, offset:I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 256
    .local v4, len:I
    new-array v0, v4, [B

    .line 257
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 258
    .local v1, count:I
    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v8, :cond_a

    .line 261
    :cond_1
    if-le v5, v4, :cond_2

    move v5, v4

    .line 262
    :cond_2
    if-lez v5, :cond_3

    .line 263
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 264
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 266
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :goto_1
    if-nez v5, :cond_4

    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 273
    .end local v5           #offset:I
    :cond_4
    invoke-virtual {p0}, Lcom/anall/screenlock/provider/LockSetting;->getUnLockSoundPath()Ljava/lang/String;

    move-result-object v6

    .line 274
    if-nez v6, :cond_5

    const-string v6, ""

    .line 275
    :cond_5
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 276
    if-eqz v6, :cond_9

    const-string v7, "sound_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 277
    const/4 v5, 0x0

    .line 279
    .restart local v5       #offset:I
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v3       #fis:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 281
    .restart local v4       #len:I
    new-array v0, v4, [B

    .line 282
    .restart local v0       #buffer:[B
    const/4 v1, 0x0

    .line 283
    .restart local v1       #count:I
    :goto_2
    if-ge v5, v4, :cond_6

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v8, :cond_b

    .line 286
    :cond_6
    if-le v5, v4, :cond_7

    move v5, v4

    .line 287
    :cond_7
    if-lez v5, :cond_8

    .line 288
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 289
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 291
    :cond_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :goto_3
    if-nez v5, :cond_9

    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 297
    .end local v5           #offset:I
    :cond_9
    return-void

    .line 259
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    .restart local v5       #offset:I
    :cond_a
    add-int/2addr v5, v1

    goto :goto_0

    .line 267
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_0
    move-exception v2

    .line 268
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 284
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    :cond_b
    add-int/2addr v5, v1

    goto :goto_2

    .line 292
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_1
    move-exception v2

    .line 293
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_3
.end method

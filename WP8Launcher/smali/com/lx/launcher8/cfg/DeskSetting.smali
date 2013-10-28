.class public Lcom/lx/launcher8/cfg/DeskSetting;
.super Lcom/lx/launcher8/cfg/BaseSetting;
.source "DeskSetting.java"


# static fields
.field public static final KEY_CELL_ALPHA:Ljava/lang/String; = "CellAlpha"

.field public static final KEY_CELL_ANIMA:Ljava/lang/String; = "AnimationSwitch"

.field public static final KEY_CELL_BLANK:Ljava/lang/String; = "ScrollAllowed"

.field public static final KEY_CELL_EDITABLE:Ljava/lang/String; = "LockLauncher"

.field public static final KEY_CELL_FGALPHA:Ljava/lang/String; = "CellfgAlpha"

.field public static final KEY_CELL_GAP:Ljava/lang/String; = "CellGap"

.field public static final KEY_CELL_STYLE:Ljava/lang/String; = "CellText"

.field public static final KEY_CELL_TEXTALPHA:Ljava/lang/String; = "celltextalpha"

.field public static final KEY_SCREEN_OREITATION:Ljava/lang/String; = "screenorietation"

.field public static final KEY_SETTING_STYLE:Ljava/lang/String; = "SettingStyle"

.field public static final KEY_STATUS_BATTEY:Ljava/lang/String; = "StatusBattey"

.field public static final KEY_STATUS_DISPLAY_RANGE:Ljava/lang/String; = "StatusDisplayRange"

.field public static final KEY_STATUS_HOLD_TIME:Ljava/lang/String; = "StatusHoldTime"

.field public static final KEY_STATUS_SMS:Ljava/lang/String; = "StatusSMS"

.field public static final KEY_STATUS_TOAST:Ljava/lang/String; = "statustoast"

.field public static final KEY_STATUS_TTIME:Ljava/lang/String; = "statustoasttime"

.field public static final KEY_THEME_BAR:Ljava/lang/String; = "ThemeStatusBar"

.field public static final KEY_THEME_LOCKSTYLE:Ljava/lang/String; = "ThemeLock"

.field public static final KEY_VERSION:Ljava/lang/String; = "Versions"

.field public static final KEY_VERSION_CUR:Ljava/lang/String; = "versioncurrent"

.field public static final KEY_VERSION_HIT:Ljava/lang/String; = " versionhit"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lx/launcher8/cfg/BaseSetting;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getAnimationSwitch()I
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "AnimationSwitch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCellAlpha()I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "CellAlpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCellFGAlpha()I
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "CellfgAlpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCellGap()I
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "CellGap"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCellTextAlpha()I
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "celltextalpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDisplayCellText()I
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "CellText"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHitVersion()I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, " versionhit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastVersion()I
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "versioncurrent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLockLauncherEnable()Z
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "LockLauncher"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLockStatusBar()I
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "LockStatusBar"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenOrientation()I
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "screenorietation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScrollAllowed()I
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ScrollAllowed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSettingStyle()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusBattey()Z
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "StatusBattey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStatusDispaly()Z
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "StatusDisplayRange"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStatusHoldTime()I
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "StatusHoldTime"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStatusSMS()Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "StatusSMS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStatusTTime()I
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "statustoasttime"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getThemeLock()I
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeLock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getThemeStatusBar()I
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeStatusBar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "Versions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isStatusToast()Z
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "statustoast"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public read(Ljava/io/DataInput;I)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ThemeColor"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v1, "ThemeWallPaper"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v1, "ThemeStatusBar"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string v1, "ThemeLock"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v1, "CellText"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    const-string v1, "LockLauncher"

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 338
    const-string v1, "ScrollAllowed"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string v1, "AnimationSwitch"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    const-string v1, "CellGap"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string v1, "CellAlpha"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v1, "SettingStyle"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 343
    const-string v1, "CellfgAlpha"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 345
    const-string v1, "celltextalpha"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    :cond_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    .line 348
    const-string v1, "StatusHoldTime"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v1, "StatusDisplayRange"

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 350
    const-string v1, "StatusBattey"

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    const-string v1, "StatusSMS"

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    :cond_1
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->read(Ljava/io/DataInput;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationSwitch(I)V
    .locals 2
    .parameter "anima"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AnimationSwitch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public setCellAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CellAlpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    return-void
.end method

.method public setCellFGAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CellfgAlpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    return-void
.end method

.method public setCellGap(I)V
    .locals 2
    .parameter "gap"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CellGap"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method public setCellTextAlpha(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "celltextalpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method public setDisplayCellText(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CellText"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method public setHitVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, " versionhit"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public setLastNetCheck(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_check_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    return-void
.end method

.method public setLastStatistics(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_statictics_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    return-void
.end method

.method public setLastVersion(I)V
    .locals 2
    .parameter "versionCode"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "versioncurrent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    return-void
.end method

.method public setLockLauncherEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LockLauncher"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screenorietation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public setScrollAllowed(I)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ScrollAllowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    return-void
.end method

.method public setSettingStyle(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SettingStyle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method public setStatusBattey(Z)V
    .locals 2
    .parameter "battey"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "StatusBattey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public setStatusDisplay(Z)V
    .locals 2
    .parameter "range"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "StatusDisplayRange"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method

.method public setStatusHoldTime(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "StatusHoldTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method public setStatusTTime(I)V
    .locals 2
    .parameter "battey"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statustoasttime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method public setStatusToast(Z)V
    .locals 2
    .parameter "battey"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statustoast"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public setThemeColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeColor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method public setThemeLock(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeLock"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method public setThemePaper(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeWallPaper"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method

.method public setThemeStatusBar(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeStatusBar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lx/launcher8/cfg/DeskSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Versions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    return-void
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 360
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 361
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 362
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 363
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 364
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getLockLauncherEnable()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getScrollAllowed()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 366
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getAnimationSwitch()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 367
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 368
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 369
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 370
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 371
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 373
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 374
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusDispaly()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusBattey()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusSMS()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 377
    return-void
.end method

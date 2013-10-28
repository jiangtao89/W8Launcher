.class public Lcom/lx/launcher8/cfg/AppSetting;
.super Lcom/lx/launcher8/cfg/BaseSetting;
.source "AppSetting.java"


# static fields
.field public static final KEY_APP_ALPHABG:Ljava/lang/String; = "appbgalpha"

.field public static final KEY_APP_ALPHAFG:Ljava/lang/String; = "appfgalpha"

.field public static final KEY_APP_DISPLAY:Ljava/lang/String; = "ThemeAppList"

.field public static final KEY_APP_INDEX_BG:Ljava/lang/String; = "appindexblod"

.field public static final KEY_APP_ITEM_BG:Ljava/lang/String; = "AppIconColor"

.field public static final KEY_APP_NAVGATION:Ljava/lang/String; = "ThemeAppHeader"

.field public static final KEY_APP_SORT:Ljava/lang/String; = "appsort"

.field public static final KEY_APP_TEXT_COLOR:Ljava/lang/String; = "ThemeAppTextColor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lx/launcher8/cfg/BaseSetting;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getAppAlphaBg()I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "appbgalpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppAlphaFg()I
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "appfgalpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppIconColor()I
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "AppIconColor"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppSort()I
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "appsort"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getThemeAppList()I
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeAppList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getThemeAppTextColor()I
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeAppTextColor"

    const/high16 v2, -0x100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAppIndexBlod()Z
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "appindexblod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowAppListHeader()Z
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    const-string v1, "ThemeAppHeader"

    const/4 v2, 0x1

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
    .line 149
    iget-object v1, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ThemeAppTextColor"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v1, "ThemeAppHeader"

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v1, "ThemeAppList"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v1, "AppIconColor"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v1, "appbgalpha"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v1, "appfgalpha"

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
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
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/cfg/AppSetting;->read(Ljava/io/DataInput;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setAppAlphaBg(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appbgalpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public setAppAlphaFg(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appfgalpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method public setAppIconColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AppIconColor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void
.end method

.method public setAppIndexBlod(Z)V
    .locals 2
    .parameter "blod"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appindexblod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public setAppSort(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appsort"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public setThemeAppList(I)V
    .locals 2
    .parameter "theme"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeAppList"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public setThemeAppListHeader(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeAppHeader"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public setThemeAppTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/cfg/AppSetting;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ThemeAppTextColor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
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
    .line 161
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 162
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 164
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 165
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaBg()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 166
    invoke-virtual {p0}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaFg()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 167
    return-void
.end method

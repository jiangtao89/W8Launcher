.class public Lcom/app/common/config/BaseGlobal;
.super Ljava/lang/Object;
.source "BaseGlobal.java"


# static fields
.field static final KEY_AUTO_LOADMORE_PREFERENCE:Ljava/lang/String; = "auto_loadmore_preference"

.field static final KEY_ORIENTATION_PREFERENCE:Ljava/lang/String; = "orienation_preference"

.field private static gIsAutoLoadMore:Z

.field private static mChannelKey:Ljava/lang/String;

.field private static mCustomOrientation:I

.field private static mKeyWord:Ljava/lang/String;

.field private static mPkg:Ljava/lang/String;

.field private static mSoftId:Ljava/lang/String;

.field private static mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/app/common/config/BaseGlobal;->gIsAutoLoadMore:Z

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/app/common/config/BaseGlobal;->mCustomOrientation:I

    .line 25
    const-string v0, "8FFD966A"

    sput-object v0, Lcom/app/common/config/BaseGlobal;->mChannelKey:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mChannelKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomOrientation()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/app/common/config/BaseGlobal;->mCustomOrientation:I

    return v0
.end method

.method public static getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mKeyWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "2A2552F124EF4488BDBC64303B11ABEB"

    sput-object v0, Lcom/app/common/config/BaseGlobal;->mKeyWord:Ljava/lang/String;

    .line 168
    :cond_0
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public static getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getSoftId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mSoftId:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "1.0"

    sput-object v0, Lcom/app/common/config/BaseGlobal;->mVersionName:Ljava/lang/String;

    .line 153
    :cond_0
    sget-object v0, Lcom/app/common/config/BaseGlobal;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->initCustomOrientation(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->initAutoLoadMore(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->initChannelKey(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->initVersion(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static initAutoLoadMore(Landroid/content/Context;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    const-string v1, "auto_loadmore_preference"

    const/4 v2, 0x1

    .line 83
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/app/common/config/BaseGlobal;->setAutoLoadMore(Z)V

    .line 85
    return-void
.end method

.method public static initChannelKey(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "channelkey.txt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/UFile;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/config/BaseGlobal;->setChannelKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "softid.txt"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/UFile;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/config/BaseGlobal;->setSoftId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BaseGlobal  set ChannelKey error,msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BaseGlobal  set softid error,msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static initCustomOrientation(Landroid/content/Context;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v1, "orienation_preference"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/app/common/config/BaseGlobal;->setCustomOrientation(I)V

    .line 49
    return-void
.end method

.method public static initVersion(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/config/BaseGlobal;->mPkg:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/app/common/config/BaseGlobal;->mPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/config/BaseGlobal;->mVersionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isAutoLoadMore()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/app/common/config/BaseGlobal;->gIsAutoLoadMore:Z

    return v0
.end method

.method public static isBanDownloadModule()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getChannelKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getChannelKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "93AF19DA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setAutoLoadMore(Z)V
    .locals 0
    .parameter "isAutoLoadMore"

    .prologue
    .line 75
    sput-boolean p0, Lcom/app/common/config/BaseGlobal;->gIsAutoLoadMore:Z

    .line 76
    return-void
.end method

.method public static setChannelKey(Ljava/lang/String;)V
    .locals 0
    .parameter "channelKey"

    .prologue
    .line 128
    sput-object p0, Lcom/app/common/config/BaseGlobal;->mChannelKey:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static setCustomOrientation(I)V
    .locals 1
    .parameter "customOrientation"

    .prologue
    const/4 v0, 0x1

    .line 57
    if-ne v0, p0, :cond_1

    .line 58
    sput v0, Lcom/app/common/config/BaseGlobal;->mCustomOrientation:I

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-nez p0, :cond_2

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/app/common/config/BaseGlobal;->mCustomOrientation:I

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/app/common/config/BaseGlobal;->mCustomOrientation:I

    goto :goto_0
.end method

.method public static setKeyWord(Ljava/lang/String;)V
    .locals 0
    .parameter "keyWord"

    .prologue
    .line 146
    sput-object p0, Lcom/app/common/config/BaseGlobal;->mKeyWord:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static setSoftId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 136
    sput-object p0, Lcom/app/common/config/BaseGlobal;->mSoftId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 161
    sput-object p0, Lcom/app/common/config/BaseGlobal;->mVersionName:Ljava/lang/String;

    .line 162
    return-void
.end method

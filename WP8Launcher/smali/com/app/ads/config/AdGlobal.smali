.class public Lcom/app/ads/config/AdGlobal;
.super Ljava/lang/Object;
.source "AdGlobal.java"


# static fields
.field private static mDisplay:Ljava/lang/Boolean;

.field private static mIsToCheckScore:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSoftId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initSoftId(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 28
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "softid.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 34
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 37
    invoke-static {v1}, Lcom/app/common/utils/UFile;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/app/ads/config/AdGlobal;->setSoftId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/4 v2, 0x1

    goto :goto_0

    .line 40
    .end local v1           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDisplay(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    sget-object v0, Lcom/app/ads/config/AdGlobal;->mDisplay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "addisplay"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/UPreference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/app/ads/config/AdGlobal;->mDisplay:Ljava/lang/Boolean;

    .line 62
    :cond_0
    sget-object v0, Lcom/app/ads/config/AdGlobal;->mDisplay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isToCheckScore(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    sget-object v0, Lcom/app/ads/config/AdGlobal;->mIsToCheckScore:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "isToCheckScore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/UPreference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/app/ads/config/AdGlobal;->mIsToCheckScore:Ljava/lang/Boolean;

    .line 50
    :cond_0
    sget-object v0, Lcom/app/ads/config/AdGlobal;->mIsToCheckScore:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setDisplay(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "display"

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/app/ads/config/AdGlobal;->mDisplay:Ljava/lang/Boolean;

    .line 67
    const-string v0, "isToCheckScore"

    sget-object v1, Lcom/app/ads/config/AdGlobal;->mDisplay:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/app/common/utils/UPreference;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 68
    return-void
.end method

.method public static setSoftId(Ljava/lang/String;)V
    .locals 0
    .parameter "softId"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->setSoftId(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static setToCheckScore(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "toCheckScore"

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/app/ads/config/AdGlobal;->mIsToCheckScore:Ljava/lang/Boolean;

    .line 55
    const-string v0, "isToCheckScore"

    invoke-static {p0, v0, p1}, Lcom/app/common/utils/UPreference;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 56
    return-void
.end method

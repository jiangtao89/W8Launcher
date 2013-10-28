.class public Lcom/lx/launcher8/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field static final CONFIG_FILE:Ljava/lang/String; = "launcher.preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLocaleConfig(Landroid/content/Context;Lcom/lx/launcher8/db/LauncherModel;)V
    .locals 8
    .parameter "context"
    .parameter "lm"

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, dis:Ljava/io/DataInputStream;
    const-string v3, ""

    .line 25
    .local v3, locale:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, mnc:I
    const/4 v4, 0x0

    .line 27
    .local v4, mcc:I
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    const-string v6, "launcher.preferences"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    .end local v1           #dis:Ljava/io/DataInputStream;
    .local v2, dis:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 30
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v4

    .line 36
    if-eqz v2, :cond_4

    .line 38
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    .line 43
    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 44
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v5, v6, :cond_1

    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v4, v6, :cond_1

    .line 45
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/lx/launcher8/db/LauncherModel;->needLoadAllApps()V

    .line 47
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/AnallApp;->getIconCache()Lcom/anall/app/bean/IconCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anall/app/bean/IconCache;->flush()V

    .line 48
    invoke-static {p0, v0}, Lcom/lx/launcher8/util/LocaleUtil;->saveLastConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 51
    :cond_2
    return-void

    .line 31
    .end local v0           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v6

    .line 36
    :goto_1
    if-eqz v1, :cond_0

    .line 38
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v6

    goto :goto_0

    .line 33
    :catch_2
    move-exception v6

    .line 36
    :goto_2
    if-eqz v1, :cond_0

    .line 38
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 39
    :catch_3
    move-exception v6

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v6

    .line 36
    :goto_3
    if-eqz v1, :cond_3

    .line 38
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 42
    :cond_3
    :goto_4
    throw v6

    .line 39
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    goto :goto_0

    :catch_5
    move-exception v7

    goto :goto_4

    .line 35
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    goto :goto_3

    .line 33
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    goto :goto_2

    .line 31
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    :cond_4
    move-object v1, v2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private static saveLastConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "context"
    .parameter "cfg"

    .prologue
    .line 55
    new-instance v0, Lcom/lx/launcher8/util/LocaleUtil$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/lx/launcher8/util/LocaleUtil$1;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 77
    invoke-virtual {v0}, Lcom/lx/launcher8/util/LocaleUtil$1;->exec()Z

    .line 79
    return-void
.end method

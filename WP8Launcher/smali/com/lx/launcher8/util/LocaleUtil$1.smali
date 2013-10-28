.class Lcom/lx/launcher8/util/LocaleUtil$1;
.super Lcom/app/common/task/BaseTask;
.source "LocaleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/util/LocaleUtil;->saveLastConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cfg:Landroid/content/res/Configuration;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$cfg:Landroid/content/res/Configuration;

    .line 55
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "launcher.preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$cfg:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$cfg:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 62
    iget-object v3, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$cfg:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 69
    if-eqz v1, :cond_2

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 75
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    const-string v3, ""

    return-object v3

    .line 64
    :catch_0
    move-exception v3

    .line 69
    :goto_1
    if-eqz v0, :cond_0

    .line 71
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v3

    goto :goto_0

    .line 66
    :catch_2
    move-exception v2

    .line 67
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/lx/launcher8/util/LocaleUtil$1;->val$context:Landroid/content/Context;

    const-string v4, "launcher.preferences"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 72
    :catch_3
    move-exception v3

    goto :goto_0

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 69
    :goto_3
    if-eqz v0, :cond_1

    .line 71
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 74
    :cond_1
    :goto_4
    throw v3

    .line 72
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_4

    .line 68
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 66
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 64
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_0
.end method

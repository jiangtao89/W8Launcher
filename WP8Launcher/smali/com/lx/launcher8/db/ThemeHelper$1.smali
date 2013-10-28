.class Lcom/lx/launcher8/db/ThemeHelper$1;
.super Ljava/lang/Thread;
.source "ThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/ThemeHelper;->recoveryTheme(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/ThemeHelper;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dis:Ljava/io/DataInputStream;

.field private final synthetic val$l:Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;

.field private final synthetic val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/ThemeHelper;Lcom/lx/launcher8/db/ThemeHelper$Theme;Landroid/content/Context;Ljava/io/DataInputStream;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->this$0:Lcom/lx/launcher8/db/ThemeHelper;

    iput-object p2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    iput-object p3, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$dis:Ljava/io/DataInputStream;

    iput-object p5, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$l:Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;

    .line 236
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, result:I
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-virtual {v2}, Lcom/lx/launcher8/db/ThemeHelper$Theme;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->this$0:Lcom/lx/launcher8/db/ThemeHelper;

    iget-object v3, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    iget-object v4, v4, Lcom/lx/launcher8/db/ThemeHelper$Theme;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/db/ThemeHelper;->recoveryTheme(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/lx/launcher8/db/ThemeHelper;->showResultInfo(Landroid/content/Context;I)V

    .line 258
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$l:Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$l:Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;

    invoke-interface {v2, v1}, Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;->onRecoveryFinish(I)V

    .line 260
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$dis:Ljava/io/DataInputStream;

    if-nez v2, :cond_2

    .line 243
    const/4 v1, -0x3

    goto :goto_0

    .line 246
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->this$0:Lcom/lx/launcher8/db/ThemeHelper;

    iget-object v3, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$dis:Ljava/io/DataInputStream;

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lx/launcher8/db/ThemeHelper;->readThemeFromStream(Landroid/content/Context;Ljava/io/DataInput;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 251
    :try_start_1
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v2

    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    .line 251
    :try_start_2
    iget-object v2, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 252
    :catch_2
    move-exception v2

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 251
    :try_start_3
    iget-object v3, p0, Lcom/lx/launcher8/db/ThemeHelper$1;->val$dis:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    :goto_1
    throw v2

    .line 252
    :catch_3
    move-exception v3

    goto :goto_1
.end method

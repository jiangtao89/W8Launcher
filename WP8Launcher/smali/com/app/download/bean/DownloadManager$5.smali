.class Lcom/app/download/bean/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/bean/DownloadManager;->rename(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/bean/DownloadManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/bean/DownloadManager;Lcom/app/download/bean/FileSeed;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager$5;->this$0:Lcom/app/download/bean/DownloadManager;

    iput-object p2, p0, Lcom/app/download/bean/DownloadManager$5;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    iput-object p3, p0, Lcom/app/download/bean/DownloadManager$5;->val$context:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 6
    .parameter "textInputed"

    .prologue
    const/4 v5, 0x0

    .line 212
    const/4 v2, 0x0

    .line 214
    .local v2, result:Z
    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    .line 215
    aget-object v3, p1, v5

    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$5;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$5;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$5;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, oldf:Ljava/io/File;
    const/4 v0, 0x0

    .line 221
    .local v0, newf:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 222
    new-instance v0, Ljava/io/File;

    .end local v0           #newf:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/download/bean/DownloadManager$5;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v0       #newf:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/app/download/bean/DownloadManager$5;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Lcom/app/download/bean/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 225
    const/4 v2, 0x1

    .line 229
    .end local v0           #newf:Ljava/io/File;
    .end local v1           #oldf:Ljava/io/File;
    :cond_1
    if-eqz v2, :cond_2

    .line 230
    iget-object v3, p0, Lcom/app/download/bean/DownloadManager$5;->val$context:Landroid/content/Context;

    const-string v4, "\u547d\u540d\u6210\u529f"

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/app/download/bean/DownloadManager$5;->val$context:Landroid/content/Context;

    const-string v4, "\u547d\u540d\u5931\u8d25"

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

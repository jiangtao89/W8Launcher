.class Lcom/app/download/bean/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/app/common/view/CustomDialog$CustomDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/bean/DownloadManager;->reLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V
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
    iput-object p1, p0, Lcom/app/download/bean/DownloadManager$2;->this$0:Lcom/app/download/bean/DownloadManager;

    iput-object p2, p0, Lcom/app/download/bean/DownloadManager$2;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    iput-object p3, p0, Lcom/app/download/bean/DownloadManager$2;->val$context:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/String;)V
    .locals 4
    .parameter "textInputed"

    .prologue
    const/4 v3, 0x1

    .line 74
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager$2;->this$0:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/bean/DownloadManager$2;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v3}, Lcom/app/download/bean/DownloadManager;->deleteFile(Lcom/app/download/bean/FileSeed;Z)V

    .line 76
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager$2;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->reset()V

    .line 77
    iget-object v0, p0, Lcom/app/download/bean/DownloadManager$2;->this$0:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/bean/DownloadManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadManager$2;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    #calls: Lcom/app/download/bean/DownloadManager;->downloadTask(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/app/download/bean/DownloadManager;->access$0(Lcom/app/download/bean/DownloadManager;Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    .line 78
    return-void
.end method

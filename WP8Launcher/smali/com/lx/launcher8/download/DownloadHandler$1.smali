.class Lcom/lx/launcher8/download/DownloadHandler$1;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/download/DownloadHandler;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/download/DownloadHandler;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

.field private final synthetic val$instance:Lcom/lx/launcher8/download/DownloadFile;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/download/DownloadHandler;Lcom/lx/launcher8/download/FileSeed;Ljava/io/File;Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->this$0:Lcom/lx/launcher8/download/DownloadHandler;

    iput-object p2, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    iput-object p3, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$instance:Lcom/lx/launcher8/download/DownloadFile;

    iput-object p5, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$title:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getFileId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DBDownload;->reload(I)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->this$0:Lcom/lx/launcher8/download/DownloadHandler;

    iget-object v1, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$instance:Lcom/lx/launcher8/download/DownloadFile;

    iget-object v2, p0, Lcom/lx/launcher8/download/DownloadHandler$1;->val$title:Ljava/lang/String;

    #calls: Lcom/lx/launcher8/download/DownloadHandler;->setData(Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/download/DownloadHandler;->access$0(Lcom/lx/launcher8/download/DownloadHandler;Lcom/lx/launcher8/download/DownloadFile;Ljava/lang/String;)V

    .line 75
    return-void
.end method

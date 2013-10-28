.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;
.super Ljava/lang/Object;
.source "TopAppDownloadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;->this$3:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;->this$3:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/download/DownloadHandler;->deleteDownload(Lcom/lx/launcher8/download/FileSeed;)V

    .line 347
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;->this$3:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v0

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;->this$3:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->notifyDataSetChanged()V

    .line 349
    return-void
.end method

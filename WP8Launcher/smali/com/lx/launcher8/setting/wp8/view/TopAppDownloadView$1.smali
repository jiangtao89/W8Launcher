.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;
.super Landroid/os/Handler;
.source "TopAppDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mIsViewRefreshing:Z
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;
.super Landroid/os/Handler;
.source "TopAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppView;Ljava/util/List;)V

    .line 257
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

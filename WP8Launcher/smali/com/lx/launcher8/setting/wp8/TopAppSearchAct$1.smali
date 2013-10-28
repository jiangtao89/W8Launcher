.class Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;
.super Landroid/os/Handler;
.source "TopAppSearchAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDownloadList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$1(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

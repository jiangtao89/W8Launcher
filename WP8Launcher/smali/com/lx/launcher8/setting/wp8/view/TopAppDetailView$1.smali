.class Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;
.super Landroid/os/Handler;
.source "TopAppDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .line 313
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v1

    invoke-static {v1}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/download/DownloadHandler;->getFileState(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mState:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;I)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mState:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v1

    const v2, 0x7f0a028d

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v1

    const v2, 0x7f0a0288

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mState:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->stopViewRefreshListener()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

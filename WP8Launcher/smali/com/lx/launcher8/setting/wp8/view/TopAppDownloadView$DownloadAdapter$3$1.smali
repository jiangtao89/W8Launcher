.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;
.super Ljava/lang/Object;
.source "TopAppDownloadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

.field private final synthetic val$pop:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;Lcom/lx/launcher8/download/FileSeed;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->val$pop:Landroid/widget/PopupWindow;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->val$pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 362
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

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

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/download/DownloadHandler;->continueDownload(Lcom/lx/launcher8/download/FileSeed;)V

    .line 336
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

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

    .line 337
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

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

    goto :goto_0

    .line 340
    :pswitch_1
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    .line 341
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    const v2, 0x7f0a0293

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;Lcom/lx/launcher8/download/FileSeed;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;->this$2:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$3$1;)V

    .line 351
    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto/16 :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x7f090202
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

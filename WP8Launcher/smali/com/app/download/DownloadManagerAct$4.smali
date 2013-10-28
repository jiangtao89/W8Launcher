.class Lcom/app/download/DownloadManagerAct$4;
.super Ljava/lang/Object;
.source "DownloadManagerAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/DownloadManagerAct;->chose1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/DownloadManagerAct;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/DownloadManagerAct;Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    iput-object p2, p0, Lcom/app/download/DownloadManagerAct$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 239
    packed-switch p2, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v0, v0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v1}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v0, v0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v1}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->deleteFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v0, v0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v1}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->reLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v0, v0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v1}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->rename(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 253
    :pswitch_4
    iget-object v0, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v0, v0, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v1, p0, Lcom/app/download/DownloadManagerAct$4;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v1}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/app/download/DownloadManagerAct$4;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->fileInfoDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

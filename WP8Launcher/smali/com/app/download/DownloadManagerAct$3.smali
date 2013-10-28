.class Lcom/app/download/DownloadManagerAct$3;
.super Ljava/lang/Object;
.source "DownloadManagerAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/DownloadManagerAct;->chose(I)V
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
    iput-object p1, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iput-object p2, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    .line 180
    const/4 v0, 0x2

    .line 181
    .local v0, DOWNLOADING:I
    const/4 v3, 0x4

    .line 182
    .local v3, DOWNLOAD_WAITING:I
    const/16 v1, 0x8

    .line 183
    .local v1, DOWNLOAD_FINISH:I
    const/16 v2, 0x10

    .line 185
    .local v2, DOWNLOAD_STOP:I
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    if-nez p2, :cond_0

    .line 187
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v5}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5, v6, v7}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    .line 189
    :cond_0
    if-ne p2, v7, :cond_1

    .line 190
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v5}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5, v6}, Lcom/app/download/bean/DownloadManager;->reLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 192
    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v5}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5, v6}, Lcom/app/download/bean/DownloadManager;->deleteFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 221
    :cond_2
    :goto_0
    return-void

    .line 198
    :cond_3
    if-nez p2, :cond_4

    .line 199
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4}, Lcom/app/download/bean/FileSeed;->getState()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 212
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5}, Lcom/app/download/bean/RecodeInfo;->removeToFinished(Lcom/app/download/bean/FileSeed;)V

    .line 215
    :cond_4
    :goto_1
    :sswitch_0
    if-ne p2, v7, :cond_2

    .line 217
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V

    .line 218
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v5}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5, v6}, Lcom/app/download/bean/DownloadManager;->deleteFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 201
    :sswitch_1
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v8}, Lcom/app/download/bean/FileSeed;->setState(I)V

    goto :goto_1

    .line 206
    :sswitch_2
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mDownloadManager:Lcom/app/download/bean/DownloadManager;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    #getter for: Lcom/app/download/DownloadManagerAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v5}, Lcom/app/download/DownloadManagerAct;->access$0(Lcom/app/download/DownloadManagerAct;)Lcom/app/common/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5, v6, v7}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_1

    .line 209
    :sswitch_3
    iget-object v4, p0, Lcom/app/download/DownloadManagerAct$3;->this$0:Lcom/app/download/DownloadManagerAct;

    iget-object v4, v4, Lcom/app/download/DownloadManagerAct;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iget-object v5, p0, Lcom/app/download/DownloadManagerAct$3;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v4, v5}, Lcom/app/download/bean/RecodeInfo;->removeToFinished(Lcom/app/download/bean/FileSeed;)V

    goto :goto_1

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

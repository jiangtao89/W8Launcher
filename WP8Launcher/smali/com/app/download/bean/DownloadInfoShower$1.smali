.class Lcom/app/download/bean/DownloadInfoShower$1;
.super Ljava/lang/Object;
.source "DownloadInfoShower.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/download/bean/DownloadInfoShower;->updata(Lcom/app/download/bean/FileSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/download/bean/DownloadInfoShower;

.field private final synthetic val$fileSeed:Lcom/app/download/bean/FileSeed;


# direct methods
.method constructor <init>(Lcom/app/download/bean/DownloadInfoShower;Lcom/app/download/bean/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/download/bean/DownloadInfoShower$1;->this$0:Lcom/app/download/bean/DownloadInfoShower;

    iput-object p2, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v0, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 184
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/bean/DownloadInfoShower$1;->this$0:Lcom/app/download/bean/DownloadInfoShower;

    iget-object v1, v1, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->deleteFileDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 186
    :goto_0
    :sswitch_0
    return-void

    .line 167
    :sswitch_1
    iget-object v0, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/app/download/bean/FileSeed;->setState(I)V

    goto :goto_0

    .line 173
    :sswitch_2
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/bean/DownloadInfoShower$1;->this$0:Lcom/app/download/bean/DownloadInfoShower;

    iget-object v1, v1, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2, v3}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_0

    .line 178
    :sswitch_3
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/bean/DownloadInfoShower$1;->this$0:Lcom/app/download/bean/DownloadInfoShower;

    iget-object v1, v1, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2, v3}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto :goto_0

    .line 181
    :sswitch_4
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/download/bean/DownloadInfoShower$1;->this$0:Lcom/app/download/bean/DownloadInfoShower;

    iget-object v1, v1, Lcom/app/download/bean/DownloadInfoShower;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/download/bean/DownloadInfoShower$1;->val$fileSeed:Lcom/app/download/bean/FileSeed;

    invoke-virtual {v0, v1, v2}, Lcom/app/download/bean/DownloadManager;->openFile(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    goto :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

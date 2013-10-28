.class Lcom/lx/launcher8/AnallLauncher$27;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->OnItemClick(Lcom/lx/launcher8/view/CellView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2032
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/AnallLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2033
    .local v2, url:Ljava/lang/String;
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    .line 2034
    .local v0, dm:Lcom/app/download/bean/DownloadManager;
    iget-object v3, v0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v3, v2}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v1

    .line 2035
    .local v1, fileSeed:Lcom/app/download/bean/FileSeed;
    if-eqz v1, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2036
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v3, v1, v5}, Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V

    .line 2048
    :goto_0
    return-void

    .line 2037
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2038
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v3, v1, v6}, Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V

    goto :goto_0

    .line 2039
    :cond_1
    if-eqz v1, :cond_2

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2040
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/4 v4, 0x3

    invoke-static {v3, v1, v4}, Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V

    goto :goto_0

    .line 2041
    :cond_2
    if-eqz v1, :cond_3

    .line 2042
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V

    goto :goto_0

    .line 2044
    :cond_3
    new-instance v1, Lcom/app/download/bean/FileSeed;

    .end local v1           #fileSeed:Lcom/app/download/bean/FileSeed;
    const-string v3, "LauncherWP8Lock.apk"

    invoke-direct {v1, v2, v3}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    .restart local v1       #fileSeed:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v1, v5}, Lcom/app/download/bean/FileSeed;->setOpen(Z)V

    .line 2046
    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$27;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/lx/launcher8/util/Utils;->downloadingDialog(Landroid/content/Context;Lcom/app/download/bean/FileSeed;I)V

    goto :goto_0
.end method

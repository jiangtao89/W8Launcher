.class Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;
.super Ljava/lang/Object;
.source "TopAppDownloadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

.field private final synthetic val$fileSeed:Lcom/lx/launcher8/download/FileSeed;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;Lcom/lx/launcher8/download/FileSeed;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 279
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/download/DownloadHandler;->continueDownload(Lcom/lx/launcher8/download/FileSeed;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 284
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/download/DownloadHandler;->getInstance(Landroid/content/Context;)Lcom/lx/launcher8/download/DownloadHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/download/DownloadHandler;->stopDownload(Lcom/lx/launcher8/download/FileSeed;)V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    goto :goto_0

    .line 288
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v2}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    #calls: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->isInstalled(Lcom/lx/launcher8/download/FileSeed;)Z
    invoke-static {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Lcom/lx/launcher8/download/FileSeed;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->val$fileSeed:Lcom/lx/launcher8/download/FileSeed;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 294
    const-string v3, "application/vnd.android.package-archive"

    .line 293
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

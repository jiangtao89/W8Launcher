.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;
.super Ljava/lang/Object;
.source "LockScreenPaperDetailAct.java"

# interfaces
.implements Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

.field private final synthetic val$lockIv:Landroid/widget/ImageView;

.field private final synthetic val$pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

.field private final synthetic val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Landroid/widget/ImageView;Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;Lcom/lx/launcher8/setting/bean/PaperInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$lockIv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    iput-object p4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x8

    .line 523
    if-eqz p1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$lockIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 525
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    .line 526
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    const/4 v2, 0x2

    iput v2, v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    .line 528
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    iget-boolean v1, v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isDownloading:Z

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isDownloading:Z

    .line 530
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$17(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/download/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$18(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v0

    .line 531
    .local v0, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v0, v4}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 534
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    const v4, 0x7f0a0257

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$lockIv:Landroid/widget/ImageView;

    #calls: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V
    invoke-static {v1, v2, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$16(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    .line 540
    .end local v0           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_0
    return-void
.end method

.method public onLoading(I)V
    .locals 2
    .parameter "loadSize"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;->val$state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    .line 545
    return-void
.end method

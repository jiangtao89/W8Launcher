.class public Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;
.super Landroid/app/Activity;
.source "LockScreenPaperDetailAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;,
        Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    }
.end annotation


# static fields
.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"

.field public static final EXTRAL_VALUE1:Ljava/lang/String; = "extral_value1"

.field private static final REQUEST_SAVE_IMAGE:I = 0x19

.field private static final REQUEST_SET_WALLPAPER:I = 0x1a


# instance fields
.field private animationListener:Landroid/view/View$OnClickListener;

.field private background:I

.field private bottomTextVisible:I

.field private btnCut:Landroid/widget/Button;

.field private btnCutLinear:Landroid/widget/LinearLayout;

.field private btnCutTv:Landroid/widget/TextView;

.field private btnDel:Landroid/widget/Button;

.field private btnDelLinear:Landroid/widget/LinearLayout;

.field private btnDelTv:Landroid/widget/TextView;

.field private btnDownload:Landroid/widget/Button;

.field private btnDownloadLinear:Landroid/widget/LinearLayout;

.field private btnDownloadTv:Landroid/widget/TextView;

.field private btnSelect:Landroid/widget/Button;

.field private btnSelectLinear:Landroid/widget/LinearLayout;

.field private btnSelectTv:Landroid/widget/TextView;

.field private btnStop:Landroid/widget/Button;

.field private btnStopLinear:Landroid/widget/LinearLayout;

.field private btnStopTv:Landroid/widget/TextView;

.field private currentPage:I

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/lx/launcher8/util/ImageLoader;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/PaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lockIv:Landroid/widget/ImageView;

.field private mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mPaperType:I

.field private manager:Lcom/lx/launcher8/download/DownloadManager;

.field private onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

.field private pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

.field private screenHeight:I

.field private screenWidth:I

.field private secondBG:I

.field private textColor:I

.field private workspaceView:Lcom/lx/launcher8/view/WorkspaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    .line 65
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 67
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    .line 73
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    .line 92
    const/4 v0, 0x4

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I

    .line 100
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    .line 102
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 617
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->animationListener:Landroid/view/View$OnClickListener;

    .line 644
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I
    .locals 1
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    return-void
.end method

.method static synthetic access$13(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/setting/bean/PaperInfo;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-direct {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$16(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$17(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Lcom/lx/launcher8/download/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    return v0
.end method

.method static synthetic access$19(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    return-object v0
.end method

.method private initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "pi"
    .parameter "lockIv"

    .prologue
    .line 459
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    .line 460
    return-void
.end method

.method private initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    .locals 11
    .parameter "pi"
    .parameter "lockIv"
    .parameter "bottomLinearState"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v10, 0x1

    .line 469
    const/4 v6, 0x0

    .line 471
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 472
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v0, p1, v1}, Lcom/lx/launcher8/download/DownloadManager;->getDownloadState(Lcom/lx/launcher8/setting/bean/VO;I)I

    move-result v7

    .line 473
    .local v7, downloadState:I
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v0, p1, v1}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v8

    .line 474
    .local v8, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 568
    .end local v7           #downloadState:I
    .end local v8           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local v7       #downloadState:I
    .restart local v8       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 499
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    .line 500
    .local v9, state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    iget-boolean v0, v9, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    if-nez v0, :cond_0

    .line 501
    if-ne v7, v3, :cond_6

    .line 502
    invoke-virtual {v8}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 503
    if-eqz v6, :cond_0

    .line 504
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 505
    iput-boolean v10, v9, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    goto :goto_0

    .line 478
    .end local v9           #state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    :pswitch_0
    if-ne p3, v10, :cond_3

    .line 479
    invoke-direct {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->startAnimationOut(I)V

    goto :goto_1

    .line 480
    :cond_3
    if-ne p3, v2, :cond_2

    .line 481
    invoke-direct {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_1

    .line 485
    :pswitch_1
    if-ne p3, v10, :cond_4

    .line 486
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->startAnimationOut(I)V

    goto :goto_1

    .line 487
    :cond_4
    if-ne p3, v2, :cond_2

    .line 488
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_1

    .line 492
    :pswitch_2
    if-ne p3, v10, :cond_5

    .line 493
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->startAnimationOut(I)V

    goto :goto_1

    .line 494
    :cond_5
    if-ne p3, v2, :cond_2

    .line 495
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_1

    .line 508
    .restart local v9       #state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    :cond_6
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$3;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V

    .line 515
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    .line 508
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 516
    if-eqz v6, :cond_7

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 517
    :cond_7
    iget-object v0, v9, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;

    invoke-direct {v3, p0, p2, v9, p1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;Landroid/widget/ImageView;Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;Lcom/lx/launcher8/setting/bean/PaperInfo;)V

    .line 545
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 546
    if-eqz v6, :cond_0

    .line 547
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 548
    iput-boolean v10, v9, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    .line 549
    iget-object v0, v9, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 553
    .end local v7           #downloadState:I
    .end local v8           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    .end local v9           #state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    :cond_8
    if-ne p3, v10, :cond_a

    .line 554
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->startAnimationOut(I)V

    .line 558
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 559
    const v0, 0x7f020131

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 555
    :cond_a
    if-ne p3, v2, :cond_9

    .line 556
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_2

    .line 560
    :cond_b
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 561
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 562
    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 564
    :cond_c
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 565
    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x100

    .line 178
    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/WorkspaceView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    .line 180
    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/Button;

    .line 181
    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCut:Landroid/widget/Button;

    .line 182
    const v2, 0x7f090059

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDel:Landroid/widget/Button;

    .line 183
    const v2, 0x7f090057

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/Button;

    .line 184
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStop:Landroid/widget/Button;

    .line 186
    const v2, 0x7f09005e

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;

    .line 187
    const v2, 0x7f090060

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;

    .line 188
    const v2, 0x7f090066

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;

    .line 189
    const v2, 0x7f090062

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;

    .line 190
    const v2, 0x7f090064

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;

    .line 192
    const v2, 0x7f09005f

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutLinear:Landroid/widget/LinearLayout;

    .line 193
    const v2, 0x7f090061

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadLinear:Landroid/widget/LinearLayout;

    .line 194
    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopLinear:Landroid/widget/LinearLayout;

    .line 195
    const v2, 0x7f09005d

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectLinear:Landroid/widget/LinearLayout;

    .line 196
    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelLinear:Landroid/widget/LinearLayout;

    .line 200
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 202
    .local v1, showContentBtn:Landroid/widget/Button;
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    .line 205
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->background:I

    .line 206
    const v2, -0x77222223

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->secondBG:I

    .line 207
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 208
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCut:Landroid/widget/Button;

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 209
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDel:Landroid/widget/Button;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 210
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/Button;

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 211
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStop:Landroid/widget/Button;

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 212
    const v2, 0x7f020174

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 231
    const v2, 0x7f09005c

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->secondBG:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 233
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCut:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStop:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->animationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v2, 0x7f090067

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->animationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-void

    .line 214
    :cond_0
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->textColor:I

    .line 215
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->background:I

    .line 216
    const v2, -0x77cececf

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->secondBG:I

    .line 217
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/Button;

    const v3, 0x7f02001b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 218
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCut:Landroid/widget/Button;

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 219
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDel:Landroid/widget/Button;

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 220
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/Button;

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 221
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStop:Landroid/widget/Button;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 222
    const v2, 0x7f020175

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z
    .locals 2
    .parameter "pi"

    .prologue
    .line 571
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBottomBtnState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 575
    packed-switch p1, :pswitch_data_0

    .line 598
    :goto_0
    return-void

    .line 577
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 584
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCutWallPaper()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 424
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v0

    .line 425
    .local v0, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-virtual {v0}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 427
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "aspectX"

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const-string v4, "aspectY"

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v4, "mJustCrop"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v4, "noFaceDetection"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    const-string v4, "setWallpaper"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 435
    const/16 v4, 0x1a

    invoke-virtual {p0, v1, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setLockPaper()V
    .locals 9

    .prologue
    const v8, 0x7f0a018a

    .line 378
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "lockbg"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    .local v2, file:Ljava/io/File;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v4, 0x0

    .line 385
    .local v4, succeed:Z
    :try_start_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {p0, v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 386
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v3

    .line 387
    .local v3, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    invoke-static {v1, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 401
    .end local v1           #f:Ljava/io/File;
    .end local v3           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    .line 402
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lockscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v4

    goto :goto_1

    .line 395
    :cond_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 405
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const v5, 0x7f0a018b

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWallPaper()V
    .locals 7

    .prologue
    .line 410
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v1

    .line 412
    .local v1, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :try_start_0
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 413
    .local v3, wm:Landroid/app/WallpaperManager;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 414
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 415
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 416
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anall/screenlock/provider/LockSetting;->setPaperBg(Ljava/lang/String;)V

    .line 417
    const v4, 0x7f0a018a

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #wm:Landroid/app/WallpaperManager;
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    const v4, 0x7f0a018b

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAnimationOut(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 601
    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 602
    .local v2, bottomLinear:Landroid/view/View;
    const v3, 0x7f040009

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 603
    .local v1, animOut:Landroid/view/animation/Animation;
    const v3, 0x7f040005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 604
    .local v0, animIn:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$5;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;ILandroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 614
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 615
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 440
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 441
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/16 v2, 0x19

    if-ne p1, v2, :cond_3

    if-eqz p3, :cond_3

    .line 445
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "lockbg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 449
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 452
    .end local v0           #f:Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    :cond_3
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;->setPaperBg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 258
    :sswitch_0
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :goto_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :goto_2
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_3
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :goto_4
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 261
    :cond_2
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 263
    :cond_3
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 265
    :cond_4
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 267
    :cond_5
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 270
    :sswitch_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 271
    iget v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setWallPaper()V

    goto/16 :goto_0

    .line 272
    :cond_6
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setLockPaper()V

    goto/16 :goto_0

    .line 276
    :sswitch_2
    iget v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 277
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setCutWallPaper()V

    goto/16 :goto_0

    .line 280
    :cond_7
    const/4 v9, 0x0

    .line 281
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 282
    .local v6, path:Ljava/lang/String;
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 283
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v12, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v10, v11, v12}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 284
    .local v4, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 285
    if-eqz v6, :cond_8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 304
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_8
    :goto_5
    if-eqz v9, :cond_0

    .line 305
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "aspectX"

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v10, "aspectY"

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v10, "mJustCrop"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v10, "noFaceDetection"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "lockbg"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v3, file:Ljava/io/File;
    const-string v10, "output"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const/16 v10, 0x19

    invoke-virtual {p0, v5, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 287
    .end local v3           #file:Ljava/io/File;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    .line 288
    sget-object v6, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    .line 293
    :cond_a
    :goto_6
    if-eqz v6, :cond_c

    .line 294
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "tmp"

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v2, f:Ljava/io/File;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 296
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_5

    .line 289
    .end local v2           #f:Ljava/io/File;
    :cond_b
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v10

    const-string v11, "lockscreen"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 290
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 298
    :cond_c
    :try_start_1
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_5

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 316
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :sswitch_3
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v12, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v10, v11, v12}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 317
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v4, :cond_0

    .line 318
    const/4 v7, 0x1

    .line 319
    .local v7, result:Z
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    .line 320
    .local v8, state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    iget v10, v8, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_d

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_10

    .line 321
    :cond_d
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, cachePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 324
    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 325
    if-eqz v7, :cond_e

    .line 326
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 327
    new-instance v10, Lcom/lx/launcher8/task/PaperStatisticsTask;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v11, v11, Lcom/lx/launcher8/setting/bean/PaperInfo;->statistics:Ljava/lang/String;

    invoke-direct {v10, p0, v11}, Lcom/lx/launcher8/task/PaperStatisticsTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    const v10, 0x7f0a0257

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v11}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    .line 339
    .end local v0           #cachePath:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    :cond_e
    :goto_7
    if-nez v7, :cond_f

    .line 340
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    const/4 v11, 0x1

    invoke-virtual {v10, p0, v4, v11}, Lcom/lx/launcher8/download/DownloadManager;->download(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;Z)V

    .line 341
    new-instance v10, Lcom/lx/launcher8/task/PaperStatisticsTask;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v11, v11, Lcom/lx/launcher8/setting/bean/PaperInfo;->statistics:Ljava/lang/String;

    invoke-direct {v10, p0, v11}, Lcom/lx/launcher8/task/PaperStatisticsTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    :cond_f
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-static {v10, v11}, Lcom/lx/launcher8/util/CachePathUtil;->addDownloadPaperInfo(Lcom/lx/launcher8/setting/bean/PaperInfo;I)V

    goto/16 :goto_0

    .line 332
    :cond_10
    iget v10, v8, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_11

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 333
    :cond_11
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 334
    const v10, 0x7f0a0258

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isDownloading:Z

    goto :goto_7

    .line 337
    :cond_12
    const/4 v7, 0x0

    goto :goto_7

    .line 347
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    .end local v7           #result:Z
    .end local v8           #state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    :sswitch_4
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v12, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v10, v11, v12}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 348
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v4, :cond_0

    const/16 v10, 0x10

    invoke-virtual {v4, v10}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    goto/16 :goto_0

    .line 351
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :sswitch_5
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 352
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v12, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v10, v11, v12}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 353
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 355
    :cond_13
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 357
    :cond_14
    const v10, 0x7f0a00e7

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    invoke-static {v10, v11}, Lcom/lx/launcher8/util/CachePathUtil;->removeDownloadPaperInfo(Lcom/lx/launcher8/setting/bean/PaperInfo;I)V

    .line 359
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setResult(I)V

    .line 360
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->finish()V

    goto/16 :goto_0

    .line 362
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_15
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "lockbg"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .restart local v3       #file:Ljava/io/File;
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v10

    const-string v11, "lockscreen"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 364
    :cond_16
    const v10, 0x7f0a018c

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_17
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v10}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 366
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 367
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    const-string v11, "none"

    invoke-virtual {v10, v11}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 368
    const v10, 0x7f0a00e7

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setResult(I)V

    .line 370
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->finish()V

    goto/16 :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x7f090055 -> :sswitch_1
        0x7f090056 -> :sswitch_2
        0x7f090057 -> :sswitch_3
        0x7f090058 -> :sswitch_4
        0x7f090059 -> :sswitch_5
        0x7f090067 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x11

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->requestWindowFeature(I)Z

    .line 113
    const v7, 0x7f03000e

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 117
    invoke-static {}, Lcom/lx/launcher8/download/DownloadManager;->getInstance()Lcom/lx/launcher8/download/DownloadManager;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    .line 118
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 122
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 123
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "extral_value"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    .line 124
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v7, "papertype"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mPaperType:I

    .line 126
    const-string v7, "extral_value1"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    .line 127
    new-instance v7, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v7, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 129
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 130
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenWidth:I

    .line 131
    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->screenHeight:I

    .line 133
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initView()V

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_2

    .line 165
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->list:Ljava/util/List;

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/setting/bean/PaperInfo;

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 166
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    .line 168
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->currentPage:I

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/WorkspaceView;->setCurScreen(I)V

    .line 169
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/WorkspaceView;->setOnWorkspaceActionListener(Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;)V

    .line 171
    new-instance v7, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    .line 172
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "download_broadcast_action"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, fl:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v3, lockIv:Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 150
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 151
    .local v5, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02019a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    invoke-static {v9, v9, v12}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-static {v11, v11, v12}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v6, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V

    .line 158
    .local v6, state:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
    iput-object v5, v6, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    .line 159
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 161
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    invoke-static {v9, v9}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/lx/launcher8/view/WorkspaceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 251
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    .line 246
    return-void
.end method

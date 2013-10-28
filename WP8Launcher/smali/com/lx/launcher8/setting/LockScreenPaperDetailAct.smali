.class public Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;
.super Landroid/app/Activity;
.source "LockScreenPaperDetailAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;,
        Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    }
.end annotation


# static fields
.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"

.field public static final EXTRAL_VALUE1:Ljava/lang/String; = "extral_value1"

.field private static final REQUEST_SAVE_IMAGE:I = 0x19


# instance fields
.field private btnCut:Landroid/widget/LinearLayout;

.field private btnDel:Landroid/widget/LinearLayout;

.field private btnDownload:Landroid/widget/LinearLayout;

.field private btnSelect:Landroid/widget/LinearLayout;

.field private btnStop:Landroid/widget/LinearLayout;

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

.field private mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mPaperType:I

.field private manager:Lcom/lx/launcher8/download/DownloadManager;

.field private onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

.field private pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

.field private screenHeight:I

.field private screenWidth:I

.field private workspaceView:Lcom/lx/launcher8/view/WorkspaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    .line 57
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 59
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    .line 83
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    .line 85
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 501
    new-instance v0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$1;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)Lcom/lx/launcher8/download/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    return v0
.end method

.method static synthetic access$12(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)Lcom/lx/launcher8/setting/bean/PaperInfo;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    return-void
.end method

.method private initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "pi"
    .parameter "lockIv"

    .prologue
    .line 343
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;I)V

    .line 344
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

    .line 353
    const/4 v6, 0x0

    .line 355
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v0, p1, v1}, Lcom/lx/launcher8/download/DownloadManager;->getDownloadState(Lcom/lx/launcher8/setting/bean/VO;I)I

    move-result v7

    .line 357
    .local v7, downloadState:I
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v0, p1, v1}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v8

    .line 358
    .local v8, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 452
    .end local v7           #downloadState:I
    .end local v8           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v7       #downloadState:I
    .restart local v8       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 383
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;

    .line 384
    .local v9, state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    iget-boolean v0, v9, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    if-nez v0, :cond_0

    .line 385
    if-ne v7, v3, :cond_6

    .line 386
    invoke-virtual {v8}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenHeight:I

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 387
    if-eqz v6, :cond_0

    .line 388
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 389
    iput-boolean v10, v9, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    goto :goto_0

    .line 362
    .end local v9           #state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    :pswitch_0
    if-ne p3, v10, :cond_3

    .line 363
    invoke-direct {p0, v10}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->startAnimationOut(I)V

    goto :goto_1

    .line 364
    :cond_3
    if-ne p3, v2, :cond_2

    .line 365
    invoke-direct {p0, v10}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_1

    .line 369
    :pswitch_1
    if-ne p3, v10, :cond_4

    .line 370
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->startAnimationOut(I)V

    goto :goto_1

    .line 371
    :cond_4
    if-ne p3, v2, :cond_2

    .line 372
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_1

    .line 376
    :pswitch_2
    if-ne p3, v10, :cond_5

    .line 377
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->startAnimationOut(I)V

    goto :goto_1

    .line 378
    :cond_5
    if-ne p3, v2, :cond_2

    .line 379
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_1

    .line 392
    .restart local v9       #state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    :cond_6
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    new-instance v3, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$2;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)V

    .line 399
    iget v4, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenHeight:I

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 400
    if-eqz v6, :cond_7

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    :cond_7
    iget-object v0, v9, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    new-instance v3, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$3;

    invoke-direct {v3, p0, p2, v9, p1}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$3;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;Landroid/widget/ImageView;Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;Lcom/lx/launcher8/setting/bean/PaperInfo;)V

    .line 429
    iget v4, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenHeight:I

    .line 402
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 430
    if-eqz v6, :cond_0

    .line 431
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    iput-boolean v10, v9, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    .line 433
    iget-object v0, v9, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 437
    .end local v7           #downloadState:I
    .end local v8           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    .end local v9           #state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    :cond_8
    if-ne p3, v10, :cond_a

    .line 438
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->startAnimationOut(I)V

    .line 442
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 443
    const v0, 0x7f020131

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 439
    :cond_a
    if-ne p3, v2, :cond_9

    .line 440
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setBottomBtnState(I)V

    goto :goto_2

    .line 444
    :cond_b
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 445
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 446
    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 448
    :cond_c
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenHeight:I

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/util/ImageLoader;->getLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 449
    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 359
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
    .locals 1

    .prologue
    .line 171
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/WorkspaceView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    .line 173
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/LinearLayout;

    .line 174
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnCut:Landroid/widget/LinearLayout;

    .line 175
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDel:Landroid/widget/LinearLayout;

    .line 176
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/LinearLayout;

    .line 177
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnStop:Landroid/widget/LinearLayout;

    .line 179
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnStop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method private isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z
    .locals 2
    .parameter "pi"

    .prologue
    .line 455
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

    .line 459
    packed-switch p1, :pswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnStop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 468
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnStop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDownload:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnStop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->btnDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAnimationOut(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 485
    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 486
    .local v2, bottomLinear:Landroid/view/View;
    const v3, 0x7f040009

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 487
    .local v1, animOut:Landroid/view/animation/Animation;
    const v3, 0x7f040005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 488
    .local v0, animIn:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$4;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$4;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;ILandroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 498
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 330
    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 331
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "lockbg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 335
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 340
    .end local v0           #f:Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 203
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "lockbg"

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v3, file:Ljava/io/File;
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 205
    :cond_1
    const v11, 0x7f0a018a

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    const/4 v9, 0x0

    .line 210
    .local v9, succeed:Z
    :try_start_0
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 211
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v13, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 212
    .local v4, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 214
    invoke-static {v2, v3}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 226
    .end local v2           #f:Ljava/io/File;
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_3
    :goto_1
    if-eqz v9, :cond_6

    .line 227
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v12}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 228
    const v11, 0x7f0a018a

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, "lockscreen"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v12}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v9

    goto :goto_1

    .line 220
    :cond_5
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 230
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    const v11, 0x7f0a018b

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    .end local v3           #file:Ljava/io/File;
    .end local v9           #succeed:Z
    :pswitch_1
    const/4 v10, 0x0

    .line 236
    .local v10, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 237
    .local v6, path:Ljava/lang/String;
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 238
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v13, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 239
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 240
    if-eqz v6, :cond_7

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 259
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_7
    :goto_2
    if-eqz v10, :cond_0

    .line 260
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v5, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "aspectX"

    iget v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenWidth:I

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v11, "aspectY"

    iget v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenHeight:I

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v11, "mJustCrop"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string v11, "noFaceDetection"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "lockbg"

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .restart local v3       #file:Ljava/io/File;
    const-string v11, "output"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 268
    const/16 v11, 0x19

    invoke-virtual {p0, v5, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 242
    .end local v3           #file:Ljava/io/File;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    .line 243
    sget-object v6, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    .line 248
    :cond_9
    :goto_3
    if-eqz v6, :cond_b

    .line 249
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "tmp"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 251
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    goto :goto_2

    .line 244
    .end local v2           #f:Ljava/io/File;
    :cond_a
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, "lockscreen"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 245
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 253
    :cond_b
    :try_start_3
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v12}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 255
    :catch_1
    move-exception v1

    .line 256
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 271
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_2
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v13, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 272
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v4, :cond_0

    .line 273
    const/4 v7, 0x1

    .line 274
    .local v7, result:Z
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;

    .line 275
    .local v8, state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    iget v11, v8, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    .line 276
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, cachePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 279
    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 280
    if-eqz v7, :cond_c

    .line 281
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 282
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0a0257

    invoke-virtual {p0, v12}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    invoke-direct {p0, v11, v12}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    .line 293
    .end local v0           #cachePath:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    :cond_c
    :goto_4
    if-nez v7, :cond_d

    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    const/4 v12, 0x1

    invoke-virtual {v11, p0, v4, v12}, Lcom/lx/launcher8/download/DownloadManager;->download(Landroid/content/Context;Lcom/lx/launcher8/download/FileSeed;Z)V

    .line 294
    :cond_d
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-static {v11, v12}, Lcom/lx/launcher8/util/CachePathUtil;->addDownloadPaperInfo(Lcom/lx/launcher8/setting/bean/PaperInfo;I)V

    goto/16 :goto_0

    .line 286
    :cond_e
    iget v11, v8, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 287
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0a0258

    invoke-virtual {p0, v12}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->isDownloading:Z

    goto :goto_4

    .line 291
    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    .line 298
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    .end local v7           #result:Z
    .end local v8           #state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    :pswitch_3
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v13, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 299
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    if-eqz v4, :cond_0

    const/16 v11, 0x10

    invoke-virtual {v4, v11}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    goto/16 :goto_0

    .line 302
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :pswitch_4
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->isOnline(Lcom/lx/launcher8/setting/bean/PaperInfo;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 303
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    iget-object v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v13, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/download/DownloadManager;->getFileSeed(Lcom/lx/launcher8/setting/bean/VO;I)Lcom/lx/launcher8/download/FileSeed;

    move-result-object v4

    .line 304
    .restart local v4       #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lcom/lx/launcher8/download/FileSeed;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 306
    :cond_10
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getActUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 308
    :cond_11
    const v11, 0x7f0a00e7

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget v12, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    invoke-static {v11, v12}, Lcom/lx/launcher8/util/CachePathUtil;->removeDownloadPaperInfo(Lcom/lx/launcher8/setting/bean/PaperInfo;I)V

    .line 310
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setResult(I)V

    .line 311
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->finish()V

    goto/16 :goto_0

    .line 313
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    :cond_12
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "lockbg"

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .restart local v3       #file:Ljava/io/File;
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, "lockscreen"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 315
    :cond_13
    const v11, 0x7f0a018c

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :cond_14
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-virtual {v11}, Lcom/lx/launcher8/setting/bean/PaperInfo;->getPreUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 317
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 318
    iget-object v11, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    const-string v12, "none"

    invoke-virtual {v11, v12}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 319
    const v11, 0x7f0a00e7

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setResult(I)V

    .line 321
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->finish()V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x7f090055
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x11

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->requestWindowFeature(I)Z

    .line 95
    const v7, 0x7f03000d

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 99
    invoke-static {}, Lcom/lx/launcher8/download/DownloadManager;->getInstance()Lcom/lx/launcher8/download/DownloadManager;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->manager:Lcom/lx/launcher8/download/DownloadManager;

    .line 100
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 104
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 105
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "extral_value"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    .line 106
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v7, "papertype"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mPaperType:I

    .line 109
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "extral_value1"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    .line 111
    new-instance v7, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v7, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 113
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 114
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenWidth:I

    .line 115
    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->screenHeight:I

    .line 128
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->initView()V

    .line 130
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->list:Ljava/util/List;

    iget v8, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/setting/bean/PaperInfo;

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    .line 161
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    iget v8, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    .line 163
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    iget v8, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->currentPage:I

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/WorkspaceView;->setCurScreen(I)V

    .line 164
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    iget-object v8, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/WorkspaceView;->setOnWorkspaceActionListener(Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;)V

    .line 166
    new-instance v7, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    .line 167
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "download_broadcast_action"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, fl:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, lockIv:Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 145
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 146
    .local v5, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02019a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    invoke-static {v9, v9, v12}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-static {v11, v11, v12}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v6, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)V

    .line 153
    .local v6, state:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
    iput-object v5, v6, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->progressBar:Landroid/widget/ProgressBar;

    .line 154
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->workspaceView:Lcom/lx/launcher8/view/WorkspaceView;

    invoke-static {v9, v9}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/lx/launcher8/view/WorkspaceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v7, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->imageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->mDownloadStateChangeBroadcast:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$DownloadStateChangeBroadcast;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 189
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->lockIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;->initData(Lcom/lx/launcher8/setting/bean/PaperInfo;Landroid/widget/ImageView;)V

    .line 190
    return-void
.end method

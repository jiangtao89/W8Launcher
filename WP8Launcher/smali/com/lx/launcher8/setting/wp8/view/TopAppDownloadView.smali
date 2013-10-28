.class public Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;
.super Ljava/lang/Object;
.source "TopAppDownloadView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;,
        Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    }
.end annotation


# instance fields
.field private mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

.field private mAppAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/FileSeed;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field private mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

.field private mClickUninstall:Z

.field private mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

.field private mDownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/FileSeed;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListView:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsViewRefreshing:Z

.field private mMainView:Landroid/view/View;

.field private mPageIndex:I

.field private mRes:Landroid/content/res/Resources;

.field private mSpacing:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;I)V
    .locals 1
    .parameter "act"
    .parameter "pageIndex"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    .line 68
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mPageIndex:I

    .line 69
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mRes:Landroid/content/res/Resources;

    .line 70
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->createView()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mIsViewRefreshing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mClickUninstall:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Lcom/lx/launcher8/download/FileSeed;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->isInstalled(Lcom/lx/launcher8/download/FileSeed;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;Ljava/lang/String;)Lcom/lx/launcher8/download/WpPackage;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->getAPKInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/WpPackage;

    move-result-object v0

    return-object v0
.end method

.method private createView()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    const/high16 v2, 0x4140

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mSpacing:I

    .line 132
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, listView:Landroid/widget/ListView;
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mSpacing:I

    invoke-virtual {v0, v1, v4, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 137
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 138
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getSecondBgColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mPageIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mMainView:Landroid/view/View;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mMainView:Landroid/view/View;

    goto :goto_0
.end method

.method private getAPKInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/WpPackage;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, pkInfo:Landroid/content/pm/PackageInfo;
    new-instance v2, Lcom/lx/launcher8/download/WpPackage;

    invoke-direct {v2}, Lcom/lx/launcher8/download/WpPackage;-><init>()V

    .line 488
    .local v2, info:Lcom/lx/launcher8/download/WpPackage;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 491
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Lcom/lx/launcher8/download/WpPackage;->setInstall(Z)V

    .line 492
    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 498
    :goto_0
    if-eqz v3, :cond_0

    .line 499
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 500
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/download/WpPackage;->setAppName(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/download/WpPackage;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 503
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v2

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/download/WpPackage;->setInstall(Z)V

    .line 495
    sget-object v5, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private initAppData()V
    .locals 4

    .prologue
    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;

    .line 531
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v0

    .line 532
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/download/FileSeed;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 533
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 539
    :cond_1
    return-void

    .line 533
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/download/FileSeed;

    .line 534
    .local v1, seed:Lcom/lx/launcher8/download/FileSeed;
    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->isInstalled(Lcom/lx/launcher8/download/FileSeed;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isInstalled(Lcom/lx/launcher8/download/FileSeed;)Z
    .locals 7
    .parameter "fileSeed"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 513
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 516
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getPkName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 517
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getVsName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    move v3, v4

    .line 520
    goto :goto_0

    .line 521
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v3, v4

    .line 522
    goto :goto_0
.end method

.method private startViewRefreshListener()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mIsViewRefreshing:Z

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mIsViewRefreshing:Z

    .line 168
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 175
    :cond_1
    new-instance v0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>(Lcom/lx/launcher8/setting/view/SettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 176
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "app_download_broadcast_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method private stopViewRefreshListener()V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mIsViewRefreshing:Z

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->stopViewRefreshListener()V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mPageIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    if-eqz v0, :cond_2

    .line 76
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mClickUninstall:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->initAppData()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mClickUninstall:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;->notifyDataSetChanged()V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mPageIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;->notifyDataSetChanged()V

    .line 83
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->startViewRefreshListener()V

    goto :goto_0
.end method

.method public onViewMovingFront()V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mPageIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->initAppData()V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mAppAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$AppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadList:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->mDownloadAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView$DownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDownloadView;->startViewRefreshListener()V

    goto :goto_0
.end method

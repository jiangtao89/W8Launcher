.class public Lcom/lx/launcher8/setting/wp8/view/TopAppView;
.super Ljava/lang/Object;
.source "TopAppView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppView$ImageAdapter;,
        Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;
    }
.end annotation


# instance fields
.field private bottomBtns:[Landroid/widget/LinearLayout;

.field private mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

.field private mAdCount:I

.field private mAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

.field private mCateId:I

.field private mCurPage:Lcom/app/common/bll/CPage;

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

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

.field private mLoadView:Lcom/lx/launcher8/view/LoadingText;

.field private mMainView:Landroid/view/View;

.field private mSavePath:Ljava/lang/String;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpacing:I

.field private mTotalType:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppAct;ILjava/util/List;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter "act"
    .parameter "cateId"
    .parameter
    .parameter "viewPager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lx/launcher8/setting/wp8/TopAppAct;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppInfo;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, adList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/TopAppInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mHandler:Landroid/os/Handler;

    .line 554
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 83
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    .line 84
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCateId:I

    .line 85
    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;

    .line 86
    iput-object p4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 87
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I

    .line 93
    :goto_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->createView()V

    .line 94
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mTotalType:I

    return v0
.end method

.method static synthetic access$12(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppView;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->openUri(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$15(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lx/launcher8/setting/wp8/view/TopAppView;Lcom/lx/launcher8/bll/TopAppListBll;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onLoadOver(Lcom/lx/launcher8/bll/TopAppListBll;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onLoadTask(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/app/common/bll/CPage;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCurPage:Lcom/app/common/bll/CPage;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Lcom/lx/launcher8/setting/wp8/TopAppAct;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSpacing:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdCount:I

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdCount:I

    return v0
.end method

.method private createListView()Lcom/lx/launcher8/view/PullToRefreshListView;
    .locals 5

    .prologue
    .line 239
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    const/high16 v4, 0x4140

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 240
    .local v1, margin:I
    new-instance v2, Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v2, view:Lcom/lx/launcher8/view/PullToRefreshListView;
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setPadding(IIII)V

    .line 242
    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 243
    .local v0, lv:Landroid/widget/ListView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 245
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 246
    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshListView;->setScrollBarStyle(I)V

    .line 247
    return-object v2
.end method

.method private createView()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 190
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 191
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenWidth:I

    .line 192
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mScreenHeight:I

    .line 193
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    const/high16 v5, 0x4140

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSpacing:I

    .line 195
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 196
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->createListView()Lcom/lx/launcher8/view/PullToRefreshListView;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    .line 199
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v4, v8}, Lcom/lx/launcher8/view/PullToRefreshListView;->setDividerHeight(I)V

    .line 200
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v5, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 201
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 202
    .local v2, lv:Landroid/widget/ListView;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getSecondBgColor()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 204
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    const/high16 v5, 0x3f80

    invoke-static {v6, v8, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v4, Lcom/lx/launcher8/view/LoadingText;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-direct {v4, v5}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    .line 207
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 210
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 211
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/4 v5, -0x2

    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSpacing:I

    invoke-virtual {v1, v4, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mMainView:Landroid/view/View;

    .line 216
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCateId:I

    invoke-static {v4}, Lcom/lx/launcher8/util/CachePathUtil;->getTopApp(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSavePath:Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSavePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 219
    check-cast v3, Ljava/util/List;

    .end local v3           #obj:Ljava/lang/Object;
    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;

    .line 221
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 222
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    .line 223
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    :cond_1
    new-array v4, v7, [Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->bottomBtns:[Landroid/widget/LinearLayout;

    .line 227
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->bottomBtns:[Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    const v7, 0x7f0a0263

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;

    move-result-object v5

    aput-object v5, v4, v8

    .line 229
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->bottomBtns:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v8

    new-instance v5, Lcom/lx/launcher8/setting/wp8/view/TopAppView$4;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void

    .line 227
    :array_0
    .array-data 0x4
        0x51t 0x1t 0x2t 0x7ft
        0x54t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private onLoadOver(Lcom/lx/launcher8/bll/TopAppListBll;Z)V
    .locals 2
    .parameter "bll"
    .parameter "fresh"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshListView;->onRefreshComplete()V

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/TopAppListBll;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCurPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/lx/launcher8/bll/TopAppListBll;->getAppList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;

    .line 171
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mSavePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 172
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setFooterVisible(Z)V

    .line 174
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->notifyDataSetChanged()V

    .line 185
    :goto_2
    iget-object v0, p1, Lcom/lx/launcher8/bll/TopAppListBll;->mPage:Lcom/app/common/bll/CPage;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCurPage:Lcom/app/common/bll/CPage;

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAppList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/TopAppListBll;->getAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 182
    :cond_3
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    .line 183
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private onLoadTask(Z)V
    .locals 4
    .parameter "fresh"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCurPage:Lcom/app/common/bll/CPage;

    .line 149
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://client.anall.cn/wp8/TopAppList.aspx?cateid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCateId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/lx/launcher8/task/TopAppListTask;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-direct {v1, v2, v0, v3}, Lcom/lx/launcher8/task/TopAppListTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;)V

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/task/TopAppListTask;->setReload(Z)Lcom/app/common/task/BaseTask;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TopAppView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppView;)V

    invoke-virtual {v1, v2}, Lcom/app/common/task/BaseTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 160
    return-void

    .line 147
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    goto :goto_0
.end method

.method private openUri(ILjava/lang/String;)V
    .locals 4
    .parameter "appId"
    .parameter "url"

    .prologue
    .line 583
    :try_start_0
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 585
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 586
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->startActivity(Landroid/content/Intent;)V

    .line 596
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 591
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    const-class v3, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "app_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startViewRefreshListener()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 274
    :cond_0
    new-instance v0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>(Lcom/lx/launcher8/setting/view/SettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 275
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "app_download_broadcast_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    return-void
.end method

.method private stopViewRefreshListener()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->bottomBtns:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->stopViewRefreshListener()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->startViewRefreshListener()V

    .line 102
    return-void
.end method

.method public onViewMovingFront()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mCurPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->onLoadTask(Z)V

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->startViewRefreshListener()V

    .line 130
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/lx/launcher8/db/DBDownload;->getInstance()Lcom/lx/launcher8/db/DBDownload;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/db/DBDownload;->getFileList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mDownloadList:Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppView$TopAppAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_0
    return-void
.end method

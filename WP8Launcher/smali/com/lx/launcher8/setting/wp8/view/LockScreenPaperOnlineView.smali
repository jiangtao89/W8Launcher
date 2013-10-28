.class public Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;
.super Ljava/lang/Object;
.source "LockScreenPaperOnlineView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_SELECT_IMAGE:I = 0x19


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

.field private bottomBtns:[Landroid/widget/LinearLayout;

.field private flag:I

.field private gapL:I

.field private gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

.field private h:I

.field private imageLoader:Lcom/lx/launcher8/util/ImageLoader;

.field private isFirstLoading:Z

.field private isLoading:Z

.field private loadingText:Lcom/lx/launcher8/view/LoadingText;

.field private mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

.field private mContext:Landroid/content/Context;

.field private mCurPage:Lcom/app/common/bll/CPage;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

.field private mPaperType:I

.field private onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private paperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/PaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private savePath:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I

.field private selectedPaperPath:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;II)V
    .locals 3
    .parameter "act"
    .parameter "flag"
    .parameter "paperType"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    .line 323
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 331
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 83
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 84
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    .line 85
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->flag:I

    .line 86
    iput p3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I

    .line 87
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I

    invoke-static {v1, p2}, Lcom/lx/launcher8/util/CachePathUtil;->getOnlineCachePath(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->savePath:Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 91
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 92
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenWidth:I

    .line 93
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenHeight:I

    .line 95
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 97
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mMainView:Landroid/view/View;

    .line 99
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->initPaperList()V

    .line 100
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    .line 102
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onRefresh()V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onLoadMore()V

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenWidth:I

    return v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenHeight:I

    return v0
.end method

.method static synthetic access$12(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/app/common/bll/CPage;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->w:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 175
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->h:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Lcom/lx/launcher8/util/ImageLoader;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method private createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;
    .locals 7
    .parameter "column"

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gapL:I

    .line 179
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenWidth:I

    .line 180
    .local v1, width:I
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 181
    add-int/lit8 p1, p1, -0x1

    .line 182
    mul-int/lit8 v1, v1, 0x2

    .line 184
    :cond_0
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gapL:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    int-to-double v4, v4

    sub-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->w:I

    .line 185
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenHeight:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->w:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->h:I

    .line 186
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, view:Lcom/lx/launcher8/view/PullToRefreshGridView;
    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setNumColumns(I)V

    .line 188
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gapL:I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setHorizontalSpacing(I)V

    .line 189
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gapL:I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setVerticalSpacing(I)V

    .line 190
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setStretchMode(I)V

    .line 191
    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFadingEdgeLength(I)V

    .line 192
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gapL:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gapL:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v2, v6, v3, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setPadding(IIII)V

    .line 193
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setScrollBarStyle(I)V

    .line 194
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 130
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 131
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v5, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 133
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x2

    const/high16 v5, 0x4248

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v4, v4, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v1, v4

    .line 137
    .local v1, padding:I
    invoke-virtual {v3, v1, v8, v1, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->flag:I

    packed-switch v4, :pswitch_data_0

    .line 157
    :goto_0
    new-instance v4, Lcom/lx/launcher8/view/LoadingText;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    .line 158
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v4, v9}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 161
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 163
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    invoke-static {v7, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/high16 v5, 0x3f80

    invoke-static {v7, v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-static {v7, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 168
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 169
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-object v0

    .line 140
    .end local v0           #ll:Landroid/widget/LinearLayout;
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0264

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initPaperList()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    .line 321
    return-void
.end method

.method private initSelectPath()V
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 224
    :cond_0
    const-string v0, "none"

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getPaperBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadPaperList()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/lx/launcher8/task/PaperListTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/PicList.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mPaperType:I

    rsub-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pagesize=21&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setPageCount(Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/PaperListTask;->exec()Z

    .line 199
    return-void
.end method

.method private onLoadMore()V
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setRefreshing()V

    .line 208
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadPaperList()V

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    .line 247
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 250
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadPaperList()V

    goto :goto_0
.end method

.method private viewLoadComplete()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->onRefreshComplete()V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->bottomBtns:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 5
    .parameter "bll"

    .prologue
    const/4 v4, 0x0

    .line 254
    iput-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 255
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->stopAnimation()V

    .line 259
    :cond_0
    if-nez p1, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->viewLoadComplete()V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const/4 v1, 0x0

    .line 264
    .local v1, piList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/PaperInfo;>;"
    instance-of v2, p1, Lcom/lx/launcher8/bll/PaperListBll;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 265
    check-cast v0, Lcom/lx/launcher8/bll/PaperListBll;

    .line 266
    .local v0, paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    iget-object v1, v0, Lcom/lx/launcher8/bll/PaperListBll;->piList:Ljava/util/List;

    .line 268
    .end local v0           #paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    :cond_3
    if-nez v1, :cond_4

    .line 269
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->viewLoadComplete()V

    goto :goto_0

    .line 272
    :cond_4
    iget-object v2, p1, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    .line 273
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    if-eqz v2, :cond_5

    .line 274
    iput-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    .line 275
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v3, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 276
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 277
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFooterVisible(Z)V

    .line 278
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    .line 279
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->savePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 284
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    if-nez v2, :cond_6

    .line 286
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    .line 287
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    :goto_2
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->viewLoadComplete()V

    goto :goto_0

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 289
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->initSelectPath()V

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_0
    return-void
.end method

.method public onViewMovingFront()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 239
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperOnlineView;->loadPaperList()V

    goto :goto_0
.end method

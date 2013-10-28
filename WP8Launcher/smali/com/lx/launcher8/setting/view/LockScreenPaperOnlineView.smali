.class public Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;
.super Ljava/lang/Object;
.source "LockScreenPaperOnlineView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_SELECT_IMAGE:I = 0x19


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

.field private flag:I

.field private gapL:I

.field private gapS:I

.field private gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

.field private h:I

.field private imageLoader:Lcom/lx/launcher8/util/ImageLoader;

.field private isFirstLoading:Z

.field private isLoading:Z

.field private loadingText:Lcom/lx/launcher8/view/LoadingText;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurPage:Lcom/app/common/bll/CPage;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

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
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .parameter "act"
    .parameter "flag"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    .line 239
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 247
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$2;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 86
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mAct:Landroid/app/Activity;

    .line 87
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->flag:I

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/util/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreenpaperonlinelist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->savePath:Ljava/lang/String;

    .line 91
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 93
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenWidth:I

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenHeight:I

    .line 97
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 99
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mMainView:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->initPaperList()V

    .line 102
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    .line 104
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onLoadMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Lcom/lx/launcher8/util/ImageLoader;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->w:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapS:I

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->h:I

    return v0
.end method

.method private createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;
    .locals 6
    .parameter "column"

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapS:I

    .line 133
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4140

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapL:I

    .line 134
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenWidth:I

    .line 135
    .local v2, width:I
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenHeight:I

    .line 136
    .local v0, height:I
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapL:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    sub-int v3, v2, v3

    div-int/2addr v3, p1

    iget v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapS:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->w:I

    .line 137
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->w:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->h:I

    .line 138
    new-instance v1, Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, view:Lcom/lx/launcher8/view/PullToRefreshGridView;
    invoke-virtual {v1, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setNumColumns(I)V

    .line 140
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapL:I

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setHorizontalSpacing(I)V

    .line 141
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapL:I

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setVerticalSpacing(I)V

    .line 142
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setStretchMode(I)V

    .line 143
    invoke-virtual {v1, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFadingEdgeLength(I)V

    .line 144
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gapL:I

    invoke-virtual {v1, v3, v5, v4, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setPadding(IIII)V

    .line 145
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setScrollBarStyle(I)V

    .line 146
    return-object v1
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 109
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 110
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v3, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 112
    new-instance v2, Lcom/lx/launcher8/view/LoadingText;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    .line 113
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 114
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x100

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/LoadingText;->setText(Ljava/lang/String;I)V

    .line 115
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 117
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/high16 v3, 0x3f80

    invoke-static {v6, v5, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 121
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-object v0
.end method

.method private initPaperList()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    .line 237
    return-void
.end method

.method private loadPaperList()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mAct:Landroid/app/Activity;

    const v1, 0x7f0a026c

    invoke-static {v0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/lx/launcher8/task/PaperListTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/PicList.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeid=2&order="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pagesize=21&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setPageCount(Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperListTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/PaperListTask;->exec()Z

    goto :goto_0
.end method

.method private onLoadMore()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isLoading:Z

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setRefreshing()V

    .line 161
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadPaperList()V

    goto :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 5
    .parameter "bll"

    .prologue
    const/4 v4, 0x0

    .line 185
    iput-boolean v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 186
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->onRefreshComplete()V

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->stopAnimation()V

    .line 191
    :cond_1
    if-nez p1, :cond_3

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 192
    :cond_3
    const/4 v1, 0x0

    .line 193
    .local v1, piList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/PaperInfo;>;"
    instance-of v2, p1, Lcom/lx/launcher8/bll/PaperListBll;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 194
    check-cast v0, Lcom/lx/launcher8/bll/PaperListBll;

    .line 195
    .local v0, paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    iget-object v1, v0, Lcom/lx/launcher8/bll/PaperListBll;->piList:Ljava/util/List;

    .line 197
    .end local v0           #paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    :cond_4
    if-eqz v1, :cond_2

    .line 198
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    if-eqz v2, :cond_5

    .line 199
    iput-boolean v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    .line 200
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v3, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 201
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 202
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFooterVisible(Z)V

    .line 203
    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    .line 204
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->savePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    if-nez v2, :cond_6

    .line 212
    new-instance v2, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    .line 213
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 206
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->paperList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v2, p1, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mCurPage:Lcom/app/common/bll/CPage;

    goto :goto_1

    .line 215
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 170
    :cond_0
    const-string v0, "none"

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->selectedPaperPath:Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isLoading:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isFirstLoading:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->isLoading:Z

    .line 180
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperOnlineView;->loadPaperList()V

    goto :goto_0
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

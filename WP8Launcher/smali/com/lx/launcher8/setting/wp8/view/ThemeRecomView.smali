.class public Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;
.super Ljava/lang/Object;
.source "ThemeRecomView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;
    }
.end annotation


# instance fields
.field private mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

.field private mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

.field private mCurPage:Lcom/app/common/bll/CPage;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

.field private mLoadView:Lcom/lx/launcher8/view/LoadingText;

.field private mMainView:Landroid/view/View;

.field mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mSavePath:Ljava/lang/String;

.field private mThemeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/Theme;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V
    .locals 12
    .parameter "act"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v7, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 65
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    .line 67
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v7}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 68
    .local v1, display:Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenWidth:I

    .line 69
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenHeight:I

    .line 71
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->createListView()Lcom/lx/launcher8/view/PullToRefreshListView;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    .line 74
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v7, v9}, Lcom/lx/launcher8/view/PullToRefreshListView;->setDividerHeight(I)V

    .line 75
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v8, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 76
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 77
    .local v4, lv:Landroid/widget/ListView;
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getSecondBgColor()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 79
    const/high16 v7, 0x3f80

    invoke-static {v10, v9, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 80
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v2, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v7, Lcom/lx/launcher8/view/LoadingText;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v7, v8}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    .line 82
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 85
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 86
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/4 v8, -0x2

    invoke-static {v10, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/16 v7, 0xf

    invoke-virtual {v2, v7, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mMainView:Landroid/view/View;

    .line 90
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    new-instance v8, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$2;

    invoke-direct {v8, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-static {v11, v9}, Lcom/lx/launcher8/util/CachePathUtil;->getOnlineTheme(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mSavePath:Ljava/lang/String;

    .line 103
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mSavePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;

    .line 104
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 105
    new-instance v7, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    .line 106
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03003f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, adView:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    const v7, 0x7f090104

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 114
    .local v5, wpAd:Landroid/widget/ImageView;
    const v7, 0x7f090105

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 115
    .local v6, wpClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/lx/launcher8/util/WpAdUtil;->showAd(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/app/common/bll/CPage;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenHeight:I

    return v0
.end method

.method private createListView()Lcom/lx/launcher8/view/PullToRefreshListView;
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const/high16 v4, 0x4140

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 120
    .local v1, margin:I
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenWidth:I

    mul-int/lit8 v4, v1, 0x3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemWidth:I

    .line 121
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemWidth:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->screenWidth:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mItemHeight:I

    .line 122
    new-instance v2, Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v2, view:Lcom/lx/launcher8/view/PullToRefreshListView;
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setPadding(IIII)V

    .line 124
    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 125
    .local v0, lv:Landroid/widget/ListView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 127
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshListView;->setScrollBarStyle(I)V

    .line 129
    return-object v2
.end method

.method private isContentEmpty()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoadOver(Lcom/lx/launcher8/bll/BllThemeList;Z)V
    .locals 2
    .parameter "bll"
    .parameter "fresh"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshListView;->onRefreshComplete()V

    .line 193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/BllThemeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p1, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mSavePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 200
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setFooterVisible(Z)V

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->notifyDataSetChanged()V

    .line 213
    :goto_2
    iget-object v0, p1, Lcom/lx/launcher8/bll/BllThemeList;->mPage:Lcom/app/common/bll/CPage;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mThemeList:Ljava/util/List;

    iget-object v1, p1, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 210
    :cond_3
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method protected onLoadTask(Z)V
    .locals 4
    .parameter "fresh"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;

    .line 221
    :goto_0
    const-string v0, "http://client.anall.cn/wp8/ThemeList.aspx?sort=1"

    .line 222
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/lx/launcher8/task/ThemeListTask;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-direct {v1, v2, v0, v3}, Lcom/lx/launcher8/task/ThemeListTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;)V

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/task/ThemeListTask;->setReload(Z)Lcom/app/common/task/BaseTask;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V

    invoke-virtual {v1, v2}, Lcom/app/common/task/BaseTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 232
    return-void

    .line 220
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$RecommandAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_0
    return-void
.end method

.method public onViewMovingFront()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mCurPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->onLoadTask(Z)V

    .line 164
    :cond_1
    return-void
.end method

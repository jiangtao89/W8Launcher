.class public Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;
.super Ljava/lang/Object;
.source "ThemeTypeView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;,
        Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;
    }
.end annotation


# instance fields
.field private bottomBtns:[Landroid/widget/LinearLayout;

.field private mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

.field private mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

.field private mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

.field private mLoadingText:Lcom/lx/launcher8/view/LoadingText;

.field private mMainView:Landroid/view/View;

.field mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mShowIndex:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V
    .locals 3
    .parameter "act"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;

    .line 50
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    .line 52
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mMainView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 54
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->initDefaultAdapter()V

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->changeToPullMode()V

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/view/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    return-object v0
.end method

.method private changeToPullMode()V
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener;)V

    .line 189
    :cond_0
    return-void
.end method

.method private createListView()Lcom/lx/launcher8/view/PullToRefreshListView;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 121
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const/high16 v8, 0x4140

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v3, v7

    .line 122
    .local v3, margin:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v7}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 123
    .local v5, screenWidth:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v7}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 124
    .local v4, screenHeight:I
    mul-int/lit8 v7, v3, 0x3

    sub-int v7, v5, v7

    div-int/lit8 v2, v7, 0x2

    .line 125
    .local v2, mItemWidth:I
    mul-int v7, v2, v4

    div-int v1, v7, v5

    .line 126
    .local v1, mItemHeight:I
    new-instance v6, Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v6, v7}, Lcom/lx/launcher8/view/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v6, view:Lcom/lx/launcher8/view/PullToRefreshListView;
    invoke-virtual {v6, v3, v3, v3, v3}, Lcom/lx/launcher8/view/PullToRefreshListView;->setPadding(IIII)V

    .line 128
    invoke-virtual {v6}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 129
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 131
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 132
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getSecondBgColor()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 134
    const/high16 v7, 0x200

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/PullToRefreshListView;->setScrollBarStyle(I)V

    .line 135
    return-object v6
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 103
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->createListView()Lcom/lx/launcher8/view/PullToRefreshListView;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    .line 104
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v3, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 105
    new-instance v2, Lcom/lx/launcher8/view/LoadingText;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    .line 106
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 107
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    iget v4, v4, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mTitleColorValue:I

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/LoadingText;->setText(Ljava/lang/String;I)V

    .line 108
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    const/high16 v3, 0x3f80

    invoke-static {v6, v5, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 114
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 115
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-object v0
.end method

.method private initDefaultAdapter()V
    .locals 4

    .prologue
    .line 139
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;>;"
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v3, 0x7f0a01a5

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v3, 0x7f0a01a6

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v3, 0x7f0a01ab

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    const/4 v2, 0x0

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    invoke-direct {v3, p0, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;Ljava/util/List;)V

    aput-object v3, v1, v2

    .line 145
    return-void
.end method

.method private isContentEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 228
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->bottomBtns:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I

    if-lez v1, :cond_0

    .line 203
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mShowIndex:I

    .line 204
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 207
    const/4 v0, 0x1

    .line 209
    :cond_0
    return v0
.end method

.method protected onLoadOver(Lcom/lx/launcher8/bll/BllThemeCate;Z)V
    .locals 4
    .parameter "bll"
    .parameter "fresh"

    .prologue
    const/4 v3, 0x1

    .line 174
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshListView;->onRefreshComplete()V

    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/BllThemeCate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    iget-object v2, p1, Lcom/lx/launcher8/bll/BllThemeCate;->mCates:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;Ljava/util/List;)V

    aput-object v1, v0, v3

    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->changeToPullMode()V

    goto :goto_0
.end method

.method onLoadTask(Z)V
    .locals 3
    .parameter "fresh"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mLoadingText:Lcom/lx/launcher8/view/LoadingText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAdapters:[Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    new-instance v0, Lcom/lx/launcher8/task/ThemeCateTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/ThemeCateTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/task/ThemeCateTask;->setReload(Z)Lcom/app/common/task/BaseTask;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)V

    invoke-virtual {v0, v1}, Lcom/app/common/task/BaseTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected startOnlineList([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "titles"
    .parameter "urls"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const-class v2, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_titles"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "extral_urls"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

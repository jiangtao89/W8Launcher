.class public Lcom/lx/launcher8/setting/LockScreenPaperListAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "LockScreenPaperListAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_SELECT_IMAGE:I = 0x19

.field public static final SEARCH_KEY:Ljava/lang/String; = "search_key"

.field public static final TYPE_INFO:Ljava/lang/String; = "type_info"


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

.field private gapL:I

.field private gapS:I

.field private gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

.field private h:I

.field private imageLoader:Lcom/lx/launcher8/util/ImageLoader;

.field private isLoading:Z

.field private loadingText:Lcom/lx/launcher8/view/LoadingText;

.field private mContext:Landroid/content/Context;

.field private mCurPage:Lcom/app/common/bll/CPage;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

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

.field private screenHeight:I

.field private screenWidth:I

.field private searchText:Ljava/lang/String;

.field private selectedPaperPath:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->paperList:Ljava/util/List;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->isLoading:Z

    .line 228
    new-instance v0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$1;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 235
    new-instance v0, Lcom/lx/launcher8/setting/LockScreenPaperListAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$2;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->onLoadMore()V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)Lcom/lx/launcher8/util/ImageLoader;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->paperList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->w:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapS:I

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 155
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->h:I

    return v0
.end method

.method private createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;
    .locals 6
    .parameter "column"

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapS:I

    .line 159
    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4140

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapL:I

    .line 160
    iget v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenWidth:I

    .line 161
    .local v2, width:I
    iget v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenHeight:I

    .line 162
    .local v0, height:I
    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapL:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    sub-int v3, v2, v3

    div-int/2addr v3, p1

    iget v4, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapS:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->w:I

    .line 163
    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->w:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->h:I

    .line 164
    new-instance v1, Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, view:Lcom/lx/launcher8/view/PullToRefreshGridView;
    invoke-virtual {v1, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setNumColumns(I)V

    .line 166
    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapL:I

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setHorizontalSpacing(I)V

    .line 167
    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapL:I

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setVerticalSpacing(I)V

    .line 168
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setStretchMode(I)V

    .line 169
    invoke-virtual {v1, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFadingEdgeLength(I)V

    .line 170
    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gapL:I

    invoke-virtual {v1, v3, v5, v4, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setPadding(IIII)V

    .line 171
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setScrollBarStyle(I)V

    .line 172
    return-object v1
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 126
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 127
    .local v0, ll:Landroid/widget/LinearLayout;
    const v2, 0x7f090006

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->title:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->title:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/LockScreenPaperListAct$3;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$3;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 136
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v3, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 137
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 138
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFooterVisible(Z)V

    .line 140
    new-instance v2, Lcom/lx/launcher8/view/LoadingText;

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    .line 141
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 142
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x100

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/LoadingText;->setText(Ljava/lang/String;I)V

    .line 143
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/high16 v3, 0x3f80

    invoke-static {v6, v5, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 147
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 148
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-object v0
.end method

.method private loadPaperList()V
    .locals 4

    .prologue
    .line 176
    const-string v0, "typeid=2"

    .line 177
    .local v0, params:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&keywords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v1}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    const v1, 0x7f0a026c

    invoke-static {p0, v1}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&classid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getClassid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    new-instance v1, Lcom/lx/launcher8/task/PaperListTask;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;-><init>(Landroid/content/Context;)V

    const-string v2, "http://client.anall.cn/wp8/PicList.aspx"

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&pagesize=21&width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setPageCount(Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/task/PaperListTask;->exec()Z

    goto :goto_1
.end method

.method private onLoadMore()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->isLoading:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->isLoading:Z

    .line 224
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setRefreshing()V

    .line 225
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadPaperList()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iput-object p0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 90
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenWidth:I

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->screenHeight:I

    .line 93
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 95
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 97
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "search_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/TypeInfo;

    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 100
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->isLoading:Z

    .line 111
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadPaperList()V

    .line 112
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getClassname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 4
    .parameter "bll"

    .prologue
    .line 192
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->isLoading:Z

    .line 193
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->onRefreshComplete()V

    .line 194
    :cond_0
    if-nez p1, :cond_2

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    const/4 v1, 0x0

    .line 196
    .local v1, piList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/PaperInfo;>;"
    instance-of v2, p1, Lcom/lx/launcher8/bll/PaperListBll;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/lx/launcher8/bll/PaperListBll;

    .line 198
    .local v0, paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    iget-object v1, v0, Lcom/lx/launcher8/bll/PaperListBll;->piList:Ljava/util/List;

    .line 200
    .end local v0           #paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    :cond_3
    if-eqz v1, :cond_1

    .line 201
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->paperList:Ljava/util/List;

    if-nez v2, :cond_5

    .line 202
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 203
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->stopAnimation()V

    .line 206
    :cond_4
    iput-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->paperList:Ljava/util/List;

    .line 212
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->paperList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    if-nez v2, :cond_6

    .line 214
    new-instance v2, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/LockScreenPaperListAct;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    .line 215
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->paperList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v2, p1, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    iput-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    goto :goto_1

    .line 217
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    .line 121
    :cond_0
    const-string v0, "none"

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/LockScreenPaperListAct$LockScreenPaperAdapter;->notifyDataSetChanged()V

    .line 123
    :cond_2
    return-void
.end method

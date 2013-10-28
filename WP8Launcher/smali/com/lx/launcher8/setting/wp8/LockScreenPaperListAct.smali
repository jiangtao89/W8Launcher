.class public Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "LockScreenPaperListAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;
    }
.end annotation


# static fields
.field public static final TYPE_INFO:Ljava/lang/String; = "type_info"


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

.field private editText:Landroid/widget/EditText;

.field private gapL:I

.field private gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

.field private h:I

.field private imageLoader:Lcom/lx/launcher8/util/ImageLoader;

.field private isLoading:Z

.field private loadingText:Lcom/lx/launcher8/view/LoadingText;

.field private mContext:Landroid/content/Context;

.field private mCurPage:Lcom/app/common/bll/CPage;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

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

.field private screenHeight:I

.field private screenWidth:I

.field private searchBtn:Landroid/widget/ImageView;

.field private searchLinear:Landroid/widget/LinearLayout;

.field private searchText:Ljava/lang/String;

.field private selectedPaperPath:Ljava/lang/String;

.field private typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    .line 285
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 293
    new-instance v0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onRefresh()V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onLoadMore()V

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenHeight:I

    return v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mPaperType:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Lcom/app/common/bll/CPage;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 179
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->w:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->h:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Lcom/lx/launcher8/util/ImageLoader;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenWidth:I

    return v0
.end method

.method private createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;
    .locals 7
    .parameter "column"

    .prologue
    const/4 v6, 0x0

    .line 183
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gapL:I

    .line 184
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenWidth:I

    .line 185
    .local v1, width:I
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mPaperType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 186
    add-int/lit8 p1, p1, -0x1

    .line 187
    mul-int/lit8 v1, v1, 0x2

    .line 189
    :cond_0
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gapL:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    int-to-double v4, v4

    sub-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->w:I

    .line 190
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenHeight:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->w:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->h:I

    .line 191
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, view:Lcom/lx/launcher8/view/PullToRefreshGridView;
    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setNumColumns(I)V

    .line 193
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gapL:I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setHorizontalSpacing(I)V

    .line 194
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gapL:I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setVerticalSpacing(I)V

    .line 195
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setStretchMode(I)V

    .line 196
    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFadingEdgeLength(I)V

    .line 197
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gapL:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gapL:I

    invoke-virtual {v0, v2, v6, v3, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setPadding(IIII)V

    .line 198
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setScrollBarStyle(I)V

    .line 199
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 130
    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    .line 131
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 132
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mTitleColorValue:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 133
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 134
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 135
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 136
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchBtn:Landroid/widget/ImageView;

    .line 137
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchBtn:Landroid/widget/ImageView;

    const v6, 0x7f0201bf

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchBtn:Landroid/widget/ImageView;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 139
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    .line 142
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mbgColorValue:I

    if-ne v5, v9, :cond_0

    .line 145
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    const v6, 0x7f0201ca

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 149
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-static {v8, v8, v12}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-static {v8, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 151
    .local v4, params2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v10, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 156
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v6, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 157
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 158
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v5, v11}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFooterVisible(Z)V

    .line 160
    new-instance v5, Lcom/lx/launcher8/view/LoadingText;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    .line 161
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 162
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0266

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mTitleColorValue:I

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/view/LoadingText;->setText(Ljava/lang/String;I)V

    .line 163
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 165
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    invoke-static {v9, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 168
    .local v3, params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4120

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v1, v5

    .line 169
    .local v1, margin:I
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-static {v9, v8, v12}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-static {v9, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 173
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 174
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    return-object v0

    .line 147
    .end local v0           #ll:Landroid/widget/LinearLayout;
    .end local v1           #margin:I
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #params1:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #params2:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    const v6, 0x7f0201cd

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private loadPaperList()V
    .locals 4

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mPaperType:I

    rsub-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, params:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&keywords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/util/Utils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    new-instance v1, Lcom/lx/launcher8/task/PaperListTask;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

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

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setPageCount(Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/task/PaperListTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperListTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/task/PaperListTask;->exec()Z

    .line 212
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&classid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getClassid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onLoadMore()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    .line 220
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setRefreshing()V

    .line 221
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadPaperList()V

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    .line 233
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadPaperList()V

    goto :goto_0
.end method


# virtual methods
.method protected initData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    iput-object p0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenWidth:I

    .line 90
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->screenHeight:I

    .line 91
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "papertype"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mPaperType:I

    .line 93
    new-instance v2, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 95
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 98
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type_info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/bean/TypeInfo;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 99
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    if-eqz v2, :cond_1

    .line 100
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mPaperType:I

    if-ne v2, v5, :cond_0

    const v1, 0x7f0a0186

    .line 101
    .local v1, titleId:I
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getClassname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->createView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 105
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 107
    iput-boolean v5, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    .line 108
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadPaperList()V

    .line 116
    .end local v1           #titleId:I
    :goto_1
    return-void

    .line 100
    :cond_0
    const v1, 0x7f0a0187

    goto :goto_0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mTitleBar:Landroid/widget/TextView;

    const v3, 0x7f0a026b

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->setVisibility(I)V

    .line 112
    const-string v2, ""

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->createView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 113
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->searchText:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->startAnimation()V

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    .line 276
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 277
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    .line 278
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadPaperList()V

    .line 279
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 4
    .parameter "bll"

    .prologue
    .line 237
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->isLoading:Z

    .line 238
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->onRefreshComplete()V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LoadingText;->stopAnimation()V

    .line 243
    :cond_1
    if-nez p1, :cond_3

    .line 263
    :cond_2
    :goto_0
    return-void

    .line 244
    :cond_3
    const/4 v1, 0x0

    .line 245
    .local v1, piList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/PaperInfo;>;"
    instance-of v2, p1, Lcom/lx/launcher8/bll/PaperListBll;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/lx/launcher8/bll/PaperListBll;

    .line 247
    .local v0, paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    iget-object v1, v0, Lcom/lx/launcher8/bll/PaperListBll;->piList:Ljava/util/List;

    .line 249
    .end local v0           #paperListBll:Lcom/lx/launcher8/bll/PaperListBll;
    :cond_4
    if-eqz v1, :cond_2

    .line 250
    iget-object v2, p1, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mCurPage:Lcom/app/common/bll/CPage;

    .line 251
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    if-nez v2, :cond_5

    .line 252
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    .line 256
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    if-nez v2, :cond_6

    .line 258
    new-instance v2, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    .line 259
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->paperList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 261
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    .line 125
    :cond_0
    const-string v0, "none"

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->selectedPaperPath:Ljava/lang/String;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct;->adapter:Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperListAct$LockScreenPaperAdapter;->notifyDataSetChanged()V

    .line 127
    :cond_2
    return-void
.end method

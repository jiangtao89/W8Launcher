.class public Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "TopAppSearchAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

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

.field private mParams:Ljava/lang/String;

.field private mSpacing:I

.field private mTitleColorValue:I

.field private mbgColorValue:I

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

.field private searchLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 113
    new-instance v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mHandler:Landroid/os/Handler;

    .line 428
    new-instance v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDownloadList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Lcom/lx/launcher8/bll/TopAppListBll;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->onLoadOver(Lcom/lx/launcher8/bll/TopAppListBll;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->onLoadTask(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Lcom/app/common/bll/CPage;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mCurPage:Lcom/app/common/bll/CPage;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDownloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mParams:Ljava/lang/String;

    return-void
.end method

.method private createListView()Lcom/lx/launcher8/view/PullToRefreshListView;
    .locals 6

    .prologue
    .line 206
    new-instance v1, Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/view/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, view:Lcom/lx/launcher8/view/PullToRefreshListView;
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lx/launcher8/view/PullToRefreshListView;->setPadding(IIII)V

    .line 208
    invoke-virtual {v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 209
    .local v0, lv:Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 210
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 211
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PullToRefreshListView;->setScrollBarStyle(I)V

    .line 213
    return-object v1
.end method

.method private getSecondBgColor()I
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 455
    const-string v0, "#313131"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 457
    :goto_0
    return v0

    :cond_0
    const-string v0, "#dddddd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private initView()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0xa

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 142
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0281

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual {v6, v9, v12, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    invoke-static {v11, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 153
    iget v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 154
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 155
    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v5, searchBtn:Landroid/widget/ImageView;
    const v7, 0x7f0201bf

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 160
    new-instance v7, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;

    invoke-direct {v7, p0, v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    .line 171
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 173
    iget v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I

    if-ne v7, v11, :cond_0

    .line 174
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    const v8, 0x7f0201ca

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 178
    :goto_0
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    const/high16 v8, 0x3f80

    invoke-static {v10, v10, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-static {v10, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 180
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v12, v9, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-static {v11, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 183
    .local v4, params2:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v9, v12, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->createListView()Lcom/lx/launcher8/view/PullToRefreshListView;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    .line 187
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v7, v9}, Lcom/lx/launcher8/view/PullToRefreshListView;->setDividerHeight(I)V

    .line 188
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v8, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 189
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 190
    .local v2, lv:Landroid/widget/ListView;
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->getSecondBgColor()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 192
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    const/high16 v8, 0x3f80

    invoke-static {v11, v9, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v7, Lcom/lx/launcher8/view/LoadingText;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    .line 195
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 198
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 199
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    invoke-static {v11, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    invoke-virtual {v1, v7, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->setContentView(Landroid/view/View;)V

    .line 203
    return-void

    .line 176
    .end local v2           #lv:Landroid/widget/ListView;
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #params2:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->searchLinear:Landroid/widget/LinearLayout;

    const v8, 0x7f0201cd

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private onLoadOver(Lcom/lx/launcher8/bll/TopAppListBll;Z)V
    .locals 2
    .parameter "bll"
    .parameter "fresh"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshListView;->onRefreshComplete()V

    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/TopAppListBll;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mCurPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p1}, Lcom/lx/launcher8/bll/TopAppListBll;->getAppList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;

    .line 244
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setFooterVisible(Z)V

    .line 246
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->onRefreshListener2:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 251
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;->notifyDataSetChanged()V

    .line 257
    :goto_2
    iget-object v0, p1, Lcom/lx/launcher8/bll/TopAppListBll;->mPage:Lcom/app/common/bll/CPage;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mCurPage:Lcom/app/common/bll/CPage;

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAppList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/TopAppListBll;->getAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 254
    :cond_3
    new-instance v0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    .line 255
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mListView:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$TopAppAdapter;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private onLoadTask(Z)V
    .locals 3
    .parameter "fresh"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mCurPage:Lcom/app/common/bll/CPage;

    .line 222
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://client.anall.cn/wp8/SearchList.aspx"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/lx/launcher8/task/TopAppListTask;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mCurPage:Lcom/app/common/bll/CPage;

    invoke-direct {v1, p0, v0, v2}, Lcom/lx/launcher8/task/TopAppListTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;)V

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/task/TopAppListTask;->setReload(Z)Lcom/app/common/task/BaseTask;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V

    invoke-virtual {v1, v2}, Lcom/app/common/task/BaseTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 233
    return-void

    .line 220
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    goto :goto_0
.end method

.method private setBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "iv"
    .parameter "bt"

    .prologue
    .line 448
    if-nez p2, :cond_0

    const v0, -0xbcbcbd

    .line 449
    .local v0, color:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 450
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    return-void

    .line 448
    .end local v0           #color:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startViewRefreshListener()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    return-void
.end method

.method private stopViewRefreshListener()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x100

    .line 70
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    .line 73
    .local v0, themeWallPaper:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I

    .line 75
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I

    .line 83
    :cond_0
    :goto_0
    const/high16 v1, 0x4140

    invoke-static {p0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mSpacing:I

    .line 85
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->initView()V

    .line 86
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 77
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I

    .line 78
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I

    goto :goto_0

    .line 79
    :cond_2
    if-nez v0, :cond_0

    .line 80
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mTitleColorValue:I

    .line 81
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mbgColorValue:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onPause()V

    .line 105
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->stopViewRefreshListener()V

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->setRequestedOrientation(I)V

    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 97
    :cond_0
    new-instance v0, Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/download/DownloadChangeBroadcast;-><init>(Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->mBroadcast:Lcom/lx/launcher8/download/DownloadChangeBroadcast;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "app_download_broadcast_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->startViewRefreshListener()V

    .line 100
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TopAppSearchAct;->startViewRefreshListener()V

    .line 110
    return-void
.end method

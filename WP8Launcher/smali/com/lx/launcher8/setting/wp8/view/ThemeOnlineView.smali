.class public Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;
.super Ljava/lang/Object;
.source "ThemeOnlineView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

.field private mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

.field mItemHeight:I

.field mItemWidth:I

.field private mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

.field private mLoadView:Lcom/lx/launcher8/view/LoadingText;

.field private mMainView:Landroid/view/View;

.field final mNetUrl:Ljava/lang/String;

.field mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:Lcom/app/common/bll/CPage;

.field private mParams:Ljava/lang/String;

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

.field private searchBtn:Landroid/widget/ImageView;

.field private searchLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "url"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;Z)V
    .locals 17
    .parameter "act"
    .parameter "url"
    .parameter "search"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    .line 76
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    .line 77
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mNetUrl:Ljava/lang/String;

    .line 78
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mParams:Ljava/lang/String;

    .line 80
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v12, ll:Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    if-eqz p3, :cond_0

    .line 84
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 90
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchBtn:Landroid/widget/ImageView;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchBtn:Landroid/widget/ImageView;

    const v3, 0x7f0201bf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchBtn:Landroid/widget/ImageView;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mbgColorValue:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    const v3, 0x7f0201ca

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 111
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/high16 v6, 0x3f80

    invoke-static {v4, v5, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    .line 113
    .local v14, params2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .end local v14           #params2:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v3, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/GridView;

    .line 121
    .local v11, gv:Landroid/widget/GridView;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->getSecondBgColor()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    .line 123
    .local v13, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v12, v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v2, Lcom/lx/launcher8/view/LoadingText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-direct {v2, v3}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mMainView:Landroid/view/View;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)V

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    const-string v2, "http://client.anall.cn/wp8/ThemeList.aspx?sort="

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v10

    .line 143
    .local v10, flag:I
    const-string v2, "http://client.anall.cn/wp8/ThemeList.aspx?classid="

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v9

    .line 144
    .local v9, classId:I
    if-gtz v10, :cond_1

    if-lez v9, :cond_2

    .line 145
    :cond_1
    invoke-static {v10, v9}, Lcom/lx/launcher8/util/CachePathUtil;->getOnlineTheme(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mSavePath:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mSavePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 148
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    iget v5, v3, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mTitleColorValue:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemHeight:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_2
    if-nez p3, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 155
    .local v8, adView:Landroid/view/View;
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    const v2, 0x7f090104

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 158
    .local v15, wpAd:Landroid/widget/ImageView;
    const v2, 0x7f090105

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 159
    .local v16, wpClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v15, v0, v4}, Lcom/lx/launcher8/util/WpAdUtil;->showAd(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 161
    .end local v8           #adView:Landroid/view/View;
    .end local v15           #wpAd:Landroid/widget/ImageView;
    .end local v16           #wpClose:Landroid/widget/ImageView;
    :cond_3
    return-void

    .line 109
    .end local v9           #classId:I
    .end local v10           #flag:I
    .end local v11           #gv:Landroid/widget/GridView;
    .end local v13           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    const v3, 0x7f0201cd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mParams:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    return-object v0
.end method

.method private createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;
    .locals 7
    .parameter "column"

    .prologue
    .line 164
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    const/high16 v6, 0x4140

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 165
    .local v2, margin:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 167
    .local v4, width:I
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 168
    .local v1, height:I
    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v5, v2

    sub-int v5, v4, v5

    div-int/2addr v5, p1

    iput v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemWidth:I

    .line 169
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemWidth:I

    mul-int/2addr v5, v1

    div-int/2addr v5, v4

    iput v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemHeight:I

    .line 170
    new-instance v3, Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    invoke-direct {v3, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v3, view:Lcom/lx/launcher8/view/PullToRefreshGridView;
    invoke-virtual {v3, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setNumColumns(I)V

    .line 172
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setHorizontalSpacing(I)V

    .line 173
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setVerticalSpacing(I)V

    .line 174
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setStretchMode(I)V

    .line 175
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFadingEdgeLength(I)V

    .line 176
    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setPadding(IIII)V

    .line 177
    const/high16 v5, 0x200

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setScrollBarStyle(I)V

    .line 178
    return-object v3
.end method

.method private isContentEmpty()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->isEmpty()Z

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
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoadOver(ZLcom/lx/launcher8/bll/BllThemeList;)V
    .locals 6
    .parameter "fresh"
    .parameter "bll"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->onRefreshComplete()V

    .line 239
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/lx/launcher8/bll/BllThemeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p2, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mSavePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 246
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v1, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->BOTH:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 247
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFooterVisible(Z)V

    .line 248
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mOnRefreshListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setOnRefreshListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnRefreshListener2;)V

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->notifyDataSetChanged()V

    .line 259
    :goto_2
    iget-object v0, p2, Lcom/lx/launcher8/bll/BllThemeList;->mPage:Lcom/app/common/bll/CPage;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mPage:Lcom/app/common/bll/CPage;

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mThemeList:Ljava/util/List;

    iget-object v1, p2, Lcom/lx/launcher8/bll/BllThemeList;->mThemes:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 256
    :cond_3
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    iget v3, v1, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->mTitleColorValue:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mItemHeight:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    .line 257
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mListView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method protected onLoadTask(Z)V
    .locals 5
    .parameter "fresh"

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 264
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mPage:Lcom/app/common/bll/CPage;

    .line 266
    :goto_0
    new-instance v0, Lcom/lx/launcher8/task/ThemeListTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mNetUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mPage:Lcom/app/common/bll/CPage;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mParams:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lx/launcher8/task/ThemeListTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/task/ThemeListTask;->setReload(Z)Lcom/app/common/task/BaseTask;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)V

    invoke-virtual {v0, v1}, Lcom/app/common/task/BaseTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 275
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mLoadView:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$ThemeListAdapter;->notifyDataSetChanged()V

    .line 185
    :cond_0
    return-void
.end method

.method public onViewMovingFront()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->searchLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_0

    .line 212
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->onLoadTask(Z)V

    goto :goto_0
.end method

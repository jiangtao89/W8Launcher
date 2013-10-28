.class public Lcom/lx/launcher8/setting/wp8/SearchAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "SearchAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/SearchAct$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_PRIVACY_MODE:I = 0x1

.field private static final REQUEST_VOICE:I = 0x2


# instance fields
.field private mAdapter:Lcom/lx/launcher8/setting/wp8/SearchAct$MyPagerAdapter;

.field private mCancelClick:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mEngines:Landroid/widget/LinearLayout;

.field private mFromId:I

.field private mHistory:Landroid/widget/LinearLayout;

.field private mIbCancel:Landroid/widget/ImageButton;

.field private mIbSearch:Landroid/widget/ImageButton;

.field private mIbSearchType:Landroid/widget/ImageButton;

.field private mItemCell:Lcom/lx/launcher8/bean/ItemCell;

.field private mListSv:Landroid/widget/ScrollView;

.field private mLlSearch:Landroid/widget/LinearLayout;

.field private mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mPopupView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRootView:Landroid/view/View;

.field private mSearchClick:Landroid/view/View$OnClickListener;

.field private mSearchDef:I

.field private mSearchKey:Landroid/widget/EditText;

.field private mSearchTypeClick:Landroid/view/View$OnClickListener;

.field private mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mText:Ljava/lang/String;

.field private mTextViewClick:Landroid/view/View$OnClickListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mThemePaper:I

.field private mTitleColorValue:I

.field private mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

.field private mTitleScrollView:Landroid/widget/HorizontalScrollView;

.field private mTvBaidu:Landroid/widget/TextView;

.field private mTvGoogle:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mbgColorValue:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewList:Ljava/util/List;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->pos:I

    .line 345
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SearchAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchTypeClick:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SearchAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchClick:Landroid/view/View$OnClickListener;

    .line 367
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SearchAct$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mCancelClick:Landroid/view/View$OnClickListener;

    .line 378
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTextViewClick:Landroid/view/View$OnClickListener;

    .line 405
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SearchAct$5;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTextWatcher:Landroid/text/TextWatcher;

    .line 464
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SearchAct$6;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$6;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 74
    return-void
.end method

.method private GetDensityBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    const/4 p1, 0x0

    .line 678
    .end local p1
    :goto_0
    return-object p1

    .line 677
    .restart local p1
    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->goSearch()V

    return-void
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mListSv:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/bean/ItemCell;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lx/launcher8/setting/wp8/SearchAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setEditText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/lx/launcher8/setting/wp8/SearchAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->pos:I

    return-void
.end method

.method static synthetic access$18(Lcom/lx/launcher8/setting/wp8/SearchAct;)I
    .locals 1
    .parameter

    .prologue
    .line 97
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->pos:I

    return v0
.end method

.method static synthetic access$19(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/view/TitleLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lx/launcher8/setting/wp8/SearchAct;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->GetDensityBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/SearchAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/SearchAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearchType:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/SearchAct;Lcom/app/common/bll/BllXmlPull;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/SearchAct;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewList:Ljava/util/List;

    return-object v0
.end method

.method private addTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 595
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 596
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    const/high16 v1, 0x4240

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 598
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    const/16 v1, 0x1e

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 600
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/TitleLinearLayout;->addView(Landroid/view/View;)V

    .line 601
    return-void
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 4
    .parameter "column"

    .prologue
    .line 583
    const/high16 v3, 0x40c0

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v0, v3

    .line 584
    .local v0, hGap:I
    const/high16 v3, 0x4140

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 585
    .local v1, vGap:I
    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 586
    .local v2, view:Landroid/widget/GridView;
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 587
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 588
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 589
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 590
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 591
    return-object v2
.end method

.method private getSelectorButton()I
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mbgColorValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 337
    const v0, 0x7f02006c

    .line 339
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201ef

    goto :goto_0
.end method

.method private goSearch()V
    .locals 4

    .prologue
    .line 628
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mText:Ljava/lang/String;

    .line 629
    const-string v2, ""

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/db/DBSearch;->insert(Ljava/lang/String;)V

    .line 634
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mText:Ljava/lang/String;

    invoke-static {v3}, Lcom/lx/launcher8/util/Utils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 635
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 636
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->startActivity(Landroid/content/Intent;)V

    .line 638
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, -0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 192
    const v8, 0x7f0900ac

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mLlSearch:Landroid/widget/LinearLayout;

    .line 193
    const v8, 0x7f0900af

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    .line 194
    const v8, 0x7f0900ad

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearchType:Landroid/widget/ImageButton;

    .line 195
    const v8, 0x7f0900b1

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearch:Landroid/widget/ImageButton;

    .line 196
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupView:Landroid/view/View;

    const v9, 0x7f090205

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvBaidu:Landroid/widget/TextView;

    .line 197
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupView:Landroid/view/View;

    const v9, 0x7f090206

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvGoogle:Landroid/widget/TextView;

    .line 198
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupView:Landroid/view/View;

    const v9, 0x7f090204

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mEngines:Landroid/widget/LinearLayout;

    .line 199
    const v8, 0x7f0900b0

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;

    .line 200
    const v8, 0x7f0900b3

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lx/launcher8/view/TitleLinearLayout;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    .line 201
    const v8, 0x7f0900b2

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/HorizontalScrollView;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    .line 202
    const v8, 0x7f0900b4

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 203
    new-instance v8, Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupView:Landroid/view/View;

    invoke-direct {v8, v9, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 204
    const v8, 0x7f0900b7

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mHistory:Landroid/widget/LinearLayout;

    .line 205
    const v8, 0x7f0900b5

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvTitle:Landroid/widget/TextView;

    .line 206
    const v8, 0x7f0900b6

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mListSv:Landroid/widget/ScrollView;

    .line 207
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mRootView:Landroid/view/View;

    const v9, 0x7f0900ba

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 208
    .local v7, tvVoiceText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mRootView:Landroid/view/View;

    const v9, 0x7f0900bc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 209
    .local v6, tvSetText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mRootView:Landroid/view/View;

    const v9, 0x7f0900bd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 210
    .local v2, btnShowMore:Landroid/widget/Button;
    const v8, 0x7f0900bb

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 211
    .local v1, btnSet:Landroid/widget/Button;
    const v8, 0x7f0900b9

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 212
    .local v3, btnVoice:Landroid/widget/Button;
    const v8, 0x7f0900b8

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/SearchAct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 214
    .local v4, llBottom:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mRootView:Landroid/view/View;

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mbgColorValue:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mLlSearch:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->getSelectorButton()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 216
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mbgColorValue:I

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 217
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 218
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvTitle:Landroid/widget/TextView;

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mThemePaper:I

    if-eqz v8, :cond_0

    .line 222
    const-string v8, "#313131"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 223
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;

    const v9, 0x7f0200a5

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 224
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearch:Landroid/widget/ImageButton;

    const v9, 0x7f0201c4

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 225
    const v8, 0x7f0201a6

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    const v8, 0x7f0201a9

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    const v8, 0x7f020175

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 237
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getSearchDef()I

    move-result v8

    iput v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchDef:I

    .line 238
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mFromId:I

    if-ne v8, v11, :cond_1

    .line 239
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvBaidu:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvGoogle:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :goto_1
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mFromId:I

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchDef:I

    invoke-static {v8, v9}, Lcom/lx/launcher8/util/UrlPath;->getDefEngine(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;

    .line 250
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearchType:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchTypeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearch:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvBaidu:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTextViewClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvGoogle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTextViewClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 258
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v9, Lcom/lx/launcher8/setting/wp8/SearchAct$7;

    invoke-direct {v9, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$7;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    new-instance v9, Lcom/lx/launcher8/setting/wp8/SearchAct$8;

    invoke-direct {v9, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$8;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    new-instance v9, Lcom/lx/launcher8/setting/wp8/SearchAct$9;

    invoke-direct {v9, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$9;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 286
    new-instance v8, Lcom/lx/launcher8/setting/wp8/SearchAct$10;

    invoke-direct {v8, p0, v7, v6}, Lcom/lx/launcher8/setting/wp8/SearchAct$10;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v8, Lcom/lx/launcher8/setting/wp8/SearchAct$11;

    invoke-direct {v8, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$11;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 317
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    .line 318
    const-string v9, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v5, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Lcom/lx/launcher8/setting/wp8/SearchAct$12;

    invoke-direct {v8, p0, v0}, Lcom/lx/launcher8/setting/wp8/SearchAct$12;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;Ljava/util/List;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    return-void

    .line 229
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v8, "#dddddd"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 230
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;

    const v9, 0x7f0200a2

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 231
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearch:Landroid/widget/ImageButton;

    const v9, 0x7f0201c3

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 232
    const v8, 0x7f0201a5

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 233
    const v8, 0x7f0201a8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    const v8, 0x7f020174

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 242
    :cond_1
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchDef:I

    if-eq v8, v11, :cond_2

    .line 243
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearchType:Landroid/widget/ImageButton;

    const v9, 0x7f0201e1

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 245
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvBaidu:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvGoogle:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private loadData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 429
    new-instance v3, Lcom/lx/launcher8/task/SearchEngineTask;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lx/launcher8/task/SearchEngineTask;-><init>(Landroid/content/Context;)V

    const-string v4, "http://client.anall.cn/wp8/EngineList.aspx"

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/SearchEngineTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/SearchEngineTask;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fromid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mFromId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/SearchEngineTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/SearchEngineTask;

    move-result-object v3

    .line 430
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/SearchEngineTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/SearchEngineTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/task/SearchEngineTask;->exec()Z

    .line 432
    new-instance v3, Lcom/lx/launcher8/task/UrlTask;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lx/launcher8/task/UrlTask;-><init>(Landroid/content/Context;)V

    const-string v4, "http://client.anall.cn/wp8/UrlList.aspx"

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/UrlTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/UrlTask;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fromid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mFromId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/UrlTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/UrlTask;

    move-result-object v3

    .line 433
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/UrlTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/UrlTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/task/UrlTask;->exec()Z

    .line 436
    invoke-static {}, Lcom/lx/launcher8/db/DBSearch;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 437
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 462
    :cond_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, s:Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 443
    .local v2, tv:Landroid/widget/TextView;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    .line 444
    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 443
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    const/16 v4, 0xa

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 446
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 447
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 448
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    const/high16 v4, 0x41a0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 453
    new-instance v4, Lcom/lx/launcher8/setting/wp8/SearchAct$13;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$13;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mHistory:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 24
    .parameter "bll"

    .prologue
    .line 472
    if-nez p1, :cond_1

    .line 580
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/lx/launcher8/bll/SearchEngineBll;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 477
    check-cast p1, Lcom/lx/launcher8/bll/SearchEngineBll;

    .end local p1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/lx/launcher8/bll/SearchEngineBll;->engineList:Ljava/util/List;

    .line 478
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/SearchEngineInfo;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_0

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 483
    .local v13, res:Landroid/content/res/Resources;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    .line 484
    const/16 v20, -0x2

    .line 483
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 485
    .local v10, layout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 486
    const v19, 0x7f020122

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 488
    .local v6, defBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mEngines:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 489
    const/4 v7, 0x0

    .line 490
    .local v7, i:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;

    .line 491
    .local v9, item:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 492
    .local v16, tv:Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const v20, -0x5f5f60

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 495
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 496
    .local v5, d:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x20

    const/16 v23, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 498
    const/16 v20, 0x12

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTextViewClick:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchDef:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->getUrl()Ljava/lang/String;

    move-result-object v20

    const-string v21, "google"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_3

    .line 502
    :cond_2
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;

    .line 503
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearchType:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setTextView(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageButton;)V

    .line 508
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mEngines:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto/16 :goto_1

    .line 506
    .end local v7           #i:I
    .restart local v8       #i:I
    :cond_3
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setTextView(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageButton;)V

    goto :goto_2

    .line 513
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #defBitmap:Landroid/graphics/Bitmap;
    .end local v8           #i:I
    .end local v9           #item:Lcom/lx/launcher8/setting/bean/SearchEngineInfo;
    .end local v10           #layout:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/SearchEngineInfo;>;"
    .end local v13           #res:Landroid/content/res/Resources;
    .end local v16           #tv:Landroid/widget/TextView;
    .restart local p1
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/lx/launcher8/bll/UrlBll;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 514
    const-string v14, ""

    .local v14, title:Ljava/lang/String;
    move-object/from16 v17, p1

    .line 515
    check-cast v17, Lcom/lx/launcher8/bll/UrlBll;

    .line 516
    .local v17, uBll:Lcom/lx/launcher8/bll/UrlBll;
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/lx/launcher8/bll/UrlBll;->uiList:Ljava/util/List;

    .line 517
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/UrlInfo;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_0

    .line 521
    const/4 v15, 0x0

    .line 522
    .local v15, tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/UrlInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_6

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_5

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 536
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 537
    .local v4, child:Landroid/view/View;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    .end local v4           #child:Landroid/view/View;
    .end local v18           #width:I
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setViewList(Ljava/util/List;)V

    .line 541
    new-instance v19, Lcom/lx/launcher8/setting/wp8/SearchAct$MyPagerAdapter;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/wp8/SearchAct$MyPagerAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lx/launcher8/setting/wp8/SearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/SearchAct$MyPagerAdapter;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/SearchAct$MyPagerAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lx/launcher8/setting/wp8/SearchAct$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/wp8/SearchAct$14;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_0

    .line 522
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/bean/UrlInfo;

    .line 523
    .local v9, item:Lcom/lx/launcher8/setting/bean/UrlInfo;
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 524
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->addTitle(Ljava/lang/String;)V

    .line 525
    if-eqz v15, :cond_7

    .line 526
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setViewList(Ljava/util/List;)V

    .line 528
    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/UrlInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .restart local v15       #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/UrlInfo;>;"
    :cond_8
    invoke-virtual {v9}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 532
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private setEditText(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 616
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v1

    .line 620
    check-cast v0, Landroid/text/Spannable;

    .line 621
    .local v0, spanText:Landroid/text/Spannable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 622
    return-void
.end method

.method private setTextView(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageButton;)V
    .locals 10
    .parameter "url"
    .parameter "tv"
    .parameter "ib"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 641
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 642
    new-instance v3, Lcom/lx/launcher8/setting/wp8/SearchAct$15;

    invoke-direct {v3, p0, p2, p3}, Lcom/lx/launcher8/setting/wp8/SearchAct$15;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct;Landroid/widget/TextView;Landroid/widget/ImageButton;)V

    move-object v1, p1

    move v5, v4

    .line 641
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 660
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 661
    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/SearchAct;->GetDensityBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 662
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 663
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v4, v4, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 664
    invoke-virtual {p2, v7, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 666
    if-eqz p3, :cond_0

    .line 667
    invoke-virtual {p3, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private setViewList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/UrlInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/UrlInfo;>;"
    new-instance v1, Lcom/lx/launcher8/adapter/UrlAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    invoke-direct {v1, v2, p1, v3}, Lcom/lx/launcher8/adapter/UrlAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 605
    .local v1, urlAdapter:Lcom/lx/launcher8/adapter/UrlAdapter;
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v0

    .line 606
    .local v0, gridView:Landroid/widget/GridView;
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 166
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-nez p3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    const-string v2, "item"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 172
    .local v1, val:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 173
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/db/LauncherModel;->updateCellToDatabase(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 178
    .end local v1           #val:I
    :pswitch_1
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    .local v0, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setEditText(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x100

    .line 111
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iput-object p0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;

    .line 113
    new-instance v1, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030021

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mRootView:Landroid/view/View;

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030079

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupView:Landroid/view/View;

    .line 116
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->setContentView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mThemePaper:I

    .line 119
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mThemePaper:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 120
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    .line 121
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mbgColorValue:I

    .line 129
    :goto_0
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/AnallApp;->getFromId()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mFromId:I

    .line 132
    const v0, 0x38080

    .line 134
    .local v0, cellType:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/db/LauncherModel;->getItemCell(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 136
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->initView()V

    .line 137
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->loadData()V

    .line 138
    return-void

    .line 122
    .end local v0           #cellType:I
    :cond_0
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mThemePaper:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 123
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    .line 124
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mbgColorValue:I

    goto :goto_0

    .line 126
    :cond_1
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleColorValue:I

    .line 127
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mbgColorValue:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 142
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mListSv:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

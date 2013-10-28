.class public Lcom/app/ads/AdsAct;
.super Lcom/app/common/MainActivity;
.source "AdsAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/ads/AdsAct$ViewType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$app$ads$AdsAct$ViewType:[I

.field public static INTENT_KEY_APPINFO:Ljava/lang/String;

.field public static INTENT_KEY_VIEW_TYPE:Ljava/lang/String;


# instance fields
.field protected mAdBar:Lcom/app/common/view/TitleBar;

.field private mAdBll:Lcom/app/ads/bll/BllDetail;

.field private mAdInfo:Lcom/app/ads/bean/AdInfo;

.field mAdItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAdRoot:Landroid/widget/LinearLayout;

.field private mAdaAdInfoAdapters:[Lcom/app/ads/adapter/AdInfoAdapter;

.field private mDownbtn:Landroid/widget/Button;

.field protected mFirstType:Lcom/app/ads/AdsAct$ViewType;

.field private mGallery:Landroid/widget/Gallery;

.field protected mGoDownLoadManage:Landroid/widget/Button;

.field protected mHotOrTopBar:Lcom/app/common/view/MenuBar;

.field private mIconView:Landroid/widget/ImageView;

.field private mImageServer:Lcom/app/common/net/UImageSever;

.field mIndexView:Landroid/widget/TextView;

.field private mIntroduce:Landroid/widget/TextView;

.field private mListView:Lcom/app/common/view/ListViewLM;

.field mLoadMoreClickListener:Landroid/view/View$OnClickListener;

.field private mMainRoot:Landroid/widget/FrameLayout;

.field private mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

.field mPicGallery:Landroid/widget/Gallery;

.field mPicRoot:Landroid/widget/FrameLayout;

.field private mProgressView:Landroid/widget/RelativeLayout;

.field private mRating:Lcom/app/common/view/RatingLayout;

.field mShowAdapter:Lcom/app/ads/adapter/AdPicAdapter;

.field private mShowAll:Landroid/widget/TextView;

.field mShowAllClick:Landroid/view/View$OnClickListener;

.field private mShowIndex:I

.field mShowPicIndex:I

.field mShowType:Lcom/app/ads/AdsAct$ViewType;

.field private mSoftDownloads:Landroid/widget/TextView;

.field private mSoftName:Landroid/widget/TextView;

.field private mSoftSize:Landroid/widget/TextView;

.field private mSofttime:Landroid/widget/TextView;

.field needRequestImg:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$app$ads$AdsAct$ViewType()[I
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/app/ads/AdsAct;->$SWITCH_TABLE$com$app$ads$AdsAct$ViewType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/app/ads/AdsAct$ViewType;->values()[Lcom/app/ads/AdsAct$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    invoke-virtual {v1}, Lcom/app/ads/AdsAct$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    invoke-virtual {v1}, Lcom/app/ads/AdsAct$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_PIC:Lcom/app/ads/AdsAct$ViewType;

    invoke-virtual {v1}, Lcom/app/ads/AdsAct$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/app/ads/AdsAct;->$SWITCH_TABLE$com$app$ads$AdsAct$ViewType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "viewtype"

    sput-object v0, Lcom/app/ads/AdsAct;->INTENT_KEY_VIEW_TYPE:Ljava/lang/String;

    .line 77
    const-string v0, "appid"

    sput-object v0, Lcom/app/ads/AdsAct;->INTENT_KEY_APPINFO:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/app/common/MainActivity;-><init>()V

    .line 88
    sget-object v0, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mFirstType:Lcom/app/ads/AdsAct$ViewType;

    .line 89
    sget-object v0, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    .line 244
    new-instance v0, Lcom/app/ads/AdsAct$1;

    invoke-direct {v0, p0}, Lcom/app/ads/AdsAct$1;-><init>(Lcom/app/ads/AdsAct;)V

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mLoadMoreClickListener:Landroid/view/View$OnClickListener;

    .line 251
    new-instance v0, Lcom/app/ads/AdsAct$2;

    invoke-direct {v0, p0}, Lcom/app/ads/AdsAct$2;-><init>(Lcom/app/ads/AdsAct;)V

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mAdItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 520
    new-instance v0, Lcom/app/ads/AdsAct$3;

    invoke-direct {v0, p0}, Lcom/app/ads/AdsAct$3;-><init>(Lcom/app/ads/AdsAct;)V

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mShowAllClick:Landroid/view/View$OnClickListener;

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/ads/AdsAct;->mShowPicIndex:I

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/app/ads/AdsAct;Lcom/app/ads/bean/AdInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/app/ads/AdsAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/app/ads/AdsAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/app/ads/AdsAct;)Lcom/app/common/view/ListViewLM;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    return-object v0
.end method

.method static synthetic access$3(Lcom/app/ads/AdsAct;)Lcom/app/common/Activity;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/app/ads/AdsAct;Lcom/app/ads/bll/BllDetail;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    return-void
.end method

.method static synthetic access$6(Lcom/app/ads/AdsAct;)Lcom/app/ads/bean/AdInfo;
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    return-object v0
.end method

.method static synthetic access$7(Lcom/app/ads/AdsAct;)Lcom/app/ads/bll/BllDetail;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    return-object v0
.end method

.method static synthetic access$8(Lcom/app/ads/AdsAct;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/app/ads/AdsAct;)Lcom/app/ads/adapter/AdPicAdapter;
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    return-object v0
.end method


# virtual methods
.method backEvent()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_PIC:Lcom/app/ads/AdsAct$ViewType;

    if-ne v0, v1, :cond_1

    .line 595
    sget-object v0, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    .line 605
    :goto_0
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->switchViews()V

    .line 606
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    invoke-virtual {v0}, Lcom/app/common/net/UImageSever;->stop()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    .line 610
    :cond_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mFirstType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    if-ne v0, v1, :cond_2

    .line 598
    sget-object v0, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    .line 599
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->finish()V

    goto :goto_0
.end method

.method createDetailView()V
    .locals 19

    .prologue
    .line 351
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 354
    new-instance v14, Lcom/app/common/view/TitleBar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Lcom/app/common/view/TitleBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mAdBar:Lcom/app/common/view/TitleBar;

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v16, Lcom/app/common/config/Resources;->titilebar_right:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->decodeDrawable(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v8

    .line 356
    .local v8, right:Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdBar:Lcom/app/common/view/TitleBar;

    const/4 v15, 0x0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v8}, Lcom/app/common/view/TitleBar;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mAdBar:Lcom/app/common/view/TitleBar;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-static/range {v16 .. v17}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mProgressView:Landroid/widget/RelativeLayout;

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mProgressView:Landroid/widget/RelativeLayout;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v16 .. v17}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v7, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    const/4 v15, 0x0

    const v16, 0x1010287

    move/from16 v0, v16

    invoke-direct {v7, v14, v15, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 361
    .local v7, pb:Landroid/widget/ProgressBar;
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 362
    .local v5, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xd

    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mProgressView:Landroid/widget/RelativeLayout;

    invoke-virtual {v14, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mProgressView:Landroid/widget/RelativeLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v6, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 366
    .local v6, main:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v11, v14}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 367
    .local v11, sc:Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    const/high16 v15, 0x4140

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v14

    float-to-int v12, v14

    .line 368
    .local v12, tmp:I
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 370
    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    invoke-static/range {v15 .. v17}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    new-instance v6, Landroid/widget/LinearLayout;

    .end local v6           #main:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v6, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 373
    .restart local v6       #main:Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 374
    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v6, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v1, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 377
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 378
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v16, Lcom/app/ads/config/Resources;->ad_icon_bg:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;

    const/16 v15, 0x48

    const/16 v16, 0x48

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v2, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 384
    .local v2, ll1:Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 385
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v12, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 386
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mSoftName:Landroid/widget/TextView;

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftName:Landroid/widget/TextView;

    const/high16 v15, 0x4170

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftName:Landroid/widget/TextView;

    const/high16 v15, -0x100

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftName:Landroid/widget/TextView;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v3, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 392
    .local v3, ll2:Landroid/widget/LinearLayout;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mSoftSize:Landroid/widget/TextView;

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftSize:Landroid/widget/TextView;

    const/high16 v15, 0x4150

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftSize:Landroid/widget/TextView;

    const v15, -0x636364

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftSize:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/high16 v17, 0x3f80

    invoke-static/range {v15 .. v17}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mSofttime:Landroid/widget/TextView;

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSofttime:Landroid/widget/TextView;

    const/high16 v15, 0x4150

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSofttime:Landroid/widget/TextView;

    const v15, -0x636364

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSofttime:Landroid/widget/TextView;

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3           #ll2:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v3, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 402
    .restart local v3       #ll2:Landroid/widget/LinearLayout;
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mSoftDownloads:Landroid/widget/TextView;

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftDownloads:Landroid/widget/TextView;

    const/high16 v15, 0x4150

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftDownloads:Landroid/widget/TextView;

    const v15, -0x7e7e7f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSoftDownloads:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/high16 v17, 0x3f80

    invoke-static/range {v15 .. v17}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v14, Lcom/app/common/view/RatingLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Lcom/app/common/view/RatingLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/app/common/view/RatingLayout;->setFocusable(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v16, Lcom/app/ads/config/Resources;->ad_ratingbaru:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/app/ads/config/Resources;->ad_ratingbars:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/app/common/view/RatingLayout;->setImageResources(II)V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Lcom/app/common/view/RatingLayout;->setNumStars(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/app/common/view/RatingLayout;->setRating(I)V

    .line 414
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    const/high16 v15, 0x4170

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    const v15, -0x666667

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const/high16 v15, 0x4150

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const v15, -0x5f5f60

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const/4 v15, 0x5

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x5

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const-string v15, "\u9605\u8bfb\u5168\u90e8"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mShowAllClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 429
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 430
    .local v4, llp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v14, 0x5

    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 431
    const/4 v14, 0x0

    const/4 v15, 0x0

    mul-int/lit8 v16, v12, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    invoke-virtual {v6, v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 435
    .local v13, tmpll:Landroid/widget/LinearLayout;
    new-instance v14, Landroid/widget/Gallery;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mGallery:Landroid/widget/Gallery;

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v14, v12}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mGallery:Landroid/widget/Gallery;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v12, v0, v12}, Landroid/widget/Gallery;->setPadding(IIII)V

    .line 438
    const v14, -0x27292a

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 439
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mGallery:Landroid/widget/Gallery;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v9, v14}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 444
    .local v9, rl:Landroid/widget/RelativeLayout;
    new-instance v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v14, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    const/high16 v15, 0x4170

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextSize(F)V

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    const-string v15, "\u4e0b\u8f7d"

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v16, Lcom/app/ads/config/Resources;->ad_down_bg:Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 448
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-static {v14, v15}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v10

    .line 449
    .local v10, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v12, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 450
    const/16 v14, 0xd

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    invoke-virtual {v9, v14, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-static/range {v15 .. v16}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/ads/AdsAct;->mGallery:Landroid/widget/Gallery;

    new-instance v15, Lcom/app/ads/AdsAct$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/app/ads/AdsAct$9;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v14, v15}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 463
    return-void
.end method

.method createListView(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)Lcom/app/common/view/ListViewLM;
    .locals 3
    .parameter
    .parameter "loadListener"

    .prologue
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 273
    new-instance v0, Lcom/app/common/view/ListViewLM;

    invoke-direct {v0, p0}, Lcom/app/common/view/ListViewLM;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, lvwlm:Lcom/app/common/view/ListViewLM;
    invoke-static {v1, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual {v0, v2}, Lcom/app/common/view/ListViewLM;->setBackgroundResource(I)V

    .line 276
    iget-object v1, v0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 277
    invoke-virtual {v0, p1}, Lcom/app/common/view/ListViewLM;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    if-eqz p2, :cond_0

    .line 279
    invoke-virtual {v0, p2}, Lcom/app/common/view/ListViewLM;->setOnNextPageClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance v1, Lcom/app/ads/AdsAct$8;

    invoke-direct {v1, p0, v0, p2}, Lcom/app/ads/AdsAct$8;-><init>(Lcom/app/ads/AdsAct;Lcom/app/common/view/ListViewLM;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 299
    :cond_0
    return-object v0
.end method

.method createListView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 139
    const/4 v0, -0x1

    .line 140
    .local v0, colorFocus:I
    const v1, -0xafffb9

    .line 142
    .local v1, colorNormal:I
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    .line 143
    new-instance v4, Lcom/app/common/view/TitleBar;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v4, v5}, Lcom/app/common/view/TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    .line 144
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mTopContainer:Landroid/widget/LinearLayout;

    .line 145
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mMainContainer:Landroid/widget/LinearLayout;

    .line 146
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 148
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    const-string v5, "background"

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 151
    .local v2, id:I
    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/app/common/view/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mTopContainer:Landroid/widget/LinearLayout;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mMainContainer:Landroid/widget/LinearLayout;

    const/high16 v5, 0x3f80

    invoke-static {v7, v7, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 156
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v4, Lcom/app/common/view/MenuBar;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v4, v5}, Lcom/app/common/view/MenuBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    .line 164
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/app/common/view/MenuBar;->setColor(Landroid/content/res/ColorStateList;)V

    .line 165
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v6, Lcom/app/ads/config/Resources;->ad_menu_first:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "\u70ed\u95e8\u4e0b\u8f7d"

    invoke-virtual {v4, v5, v7, v6}, Lcom/app/common/view/MenuBar;->addView(IILjava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v6, Lcom/app/ads/config/Resources;->ad_menu_second:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "\u6700\u65b0\u4e0a\u4f20"

    invoke-virtual {v4, v5, v7, v6}, Lcom/app/common/view/MenuBar;->addView(IILjava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v6, Lcom/app/common/config/Resources;->titilebar_right:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->decodeDrawable(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v3

    .line 169
    .local v3, right:Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v3}, Lcom/app/common/view/TitleBar;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 170
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    iget-object v4, v4, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 171
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    iget-object v4, v4, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    .line 174
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v6, Lcom/app/ads/config/Resources;->ad_menu_third:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 176
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    invoke-static {v0, v0, v0, v1, v0}, Lcom/app/common/utils/ViewHelper;->getColor(IIIII)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    const-string v5, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->setSingleLine()V

    .line 180
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Lcom/app/common/view/MenuBar;->addView(Landroid/view/View;)V

    .line 182
    iget-object v4, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    invoke-virtual {v4, v9}, Lcom/app/common/view/MenuBar;->setDefaultView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->initAdapters()V

    .line 184
    return-void
.end method

.method createPic()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x3f80

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 619
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicRoot:Landroid/widget/FrameLayout;

    if-nez v5, :cond_0

    .line 620
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/ads/AdsAct;->mPicRoot:Landroid/widget/FrameLayout;

    .line 621
    new-instance v5, Landroid/widget/Gallery;

    invoke-direct {v5, p0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/ads/AdsAct;->mPicGallery:Landroid/widget/Gallery;

    .line 622
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    const/high16 v6, 0x4140

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v4, v5

    .line 624
    .local v4, tmp:I
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicGallery:Landroid/widget/Gallery;

    invoke-virtual {v5, v4}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 625
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicRoot:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/app/ads/AdsAct;->mPicGallery:Landroid/widget/Gallery;

    invoke-static {v9, v9}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    new-instance v5, Lcom/app/ads/adapter/AdPicAdapter;

    iget-object v6, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v5, v6}, Lcom/app/ads/adapter/AdPicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/ads/AdsAct;->mShowAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    .line 627
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicGallery:Landroid/widget/Gallery;

    iget-object v6, p0, Lcom/app/ads/AdsAct;->mShowAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 629
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 630
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-static {v9, v8}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 631
    .local v1, fl:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x51

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 632
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, btn:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 635
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 636
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v6, Lcom/app/ads/config/Resources;->ad_pic_pre:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 637
    invoke-static {v8, v8, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    new-instance v5, Lcom/app/ads/AdsAct$15;

    invoke-direct {v5, p0}, Lcom/app/ads/AdsAct$15;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/ads/AdsAct;->mIndexView:Landroid/widget/TextView;

    .line 648
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mIndexView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 650
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mIndexView:Landroid/widget/TextView;

    const/high16 v6, 0x4160

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 651
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mIndexView:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    new-instance v0, Landroid/widget/ImageButton;

    .end local v0           #btn:Landroid/widget/ImageButton;
    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 653
    .restart local v0       #btn:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 654
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 655
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    sget-object v6, Lcom/app/ads/config/Resources;->ad_pic_next:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 656
    invoke-static {v8, v8, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    new-instance v5, Lcom/app/ads/AdsAct$16;

    invoke-direct {v5, p0}, Lcom/app/ads/AdsAct$16;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicGallery:Landroid/widget/Gallery;

    new-instance v6, Lcom/app/ads/AdsAct$17;

    invoke-direct {v6, p0}, Lcom/app/ads/AdsAct$17;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 680
    .end local v0           #btn:Landroid/widget/ImageButton;
    .end local v1           #fl:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #ll:Landroid/widget/LinearLayout;
    .end local v4           #tmp:I
    :cond_0
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    if-eqz v5, :cond_1

    .line 681
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mShowAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    iget-object v6, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v6, v6, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/app/ads/adapter/AdPicAdapter;->setData(Ljava/util/ArrayList;)V

    .line 682
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v5, v5, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 683
    .local v3, size:I
    :goto_0
    iget v5, p0, Lcom/app/ads/AdsAct;->mShowPicIndex:I

    if-le v3, v5, :cond_1

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mPicGallery:Landroid/widget/Gallery;

    iget v6, p0, Lcom/app/ads/AdsAct;->mShowPicIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setSelection(I)V

    .line 685
    .end local v3           #size:I
    :cond_1
    return-void

    .line 682
    :cond_2
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v5, v5, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0
.end method

.method public createView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 111
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    .line 112
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->createListView()V

    .line 113
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->createDetailView()V

    .line 114
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->createPic()V

    .line 115
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mPicRoot:Landroid/widget/FrameLayout;

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/app/ads/AdsAct;->setContentView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, bd:Landroid/os/Bundle;
    if-nez v0, :cond_1

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    iput-object v1, p0, Lcom/app/ads/AdsAct;->mFirstType:Lcom/app/ads/AdsAct$ViewType;

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mFirstType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v2, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    if-ne v1, v2, :cond_3

    .line 127
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    iput-object v1, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    .line 128
    sget-object v1, Lcom/app/ads/AdsAct;->INTENT_KEY_APPINFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/app/ads/bean/AdInfo;

    iput-object v1, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    .line 129
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/app/ads/bean/AdInfo;->setPic(Ljava/lang/String;)V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->switchViews()V

    .line 133
    iget-object v1, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v2, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->execList()V

    .line 136
    :cond_0
    return-void

    .line 122
    :cond_1
    sget-object v1, Lcom/app/ads/AdsAct;->INTENT_KEY_VIEW_TYPE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 123
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    .line 122
    :goto_2
    iput-object v1, p0, Lcom/app/ads/AdsAct;->mFirstType:Lcom/app/ads/AdsAct$ViewType;

    goto :goto_0

    .line 124
    :cond_2
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    goto :goto_2

    .line 130
    :cond_3
    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_LIST:Lcom/app/ads/AdsAct$ViewType;

    iput-object v1, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    goto :goto_1
.end method

.method protected exeTask(I)V
    .locals 8
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 223
    new-instance v0, Lcom/app/ads/task/GetAdInfoTask;

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    const/4 v7, 0x1

    move v4, v3

    move v5, p1

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/app/ads/task/GetAdInfoTask;-><init>(Lcom/app/common/Activity;Lcom/app/common/view/ListViewLM;ZZIIZ)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/app/ads/task/GetAdInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method

.method execDetail()V
    .locals 7

    .prologue
    .line 466
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    if-eqz v2, :cond_0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v3}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    .local v0, bt:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/app/ads/AdsAct;->needRequestImg:Z

    .line 470
    :goto_0
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mAdBar:Lcom/app/common/view/TitleBar;

    iget-object v2, v2, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v3}, Lcom/app/ads/bean/AdInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSoftName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v3}, Lcom/app/ads/bean/AdInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSoftSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v4}, Lcom/app/ads/bean/AdInfo;->getFileSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mRating:Lcom/app/common/view/RatingLayout;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v3}, Lcom/app/ads/bean/AdInfo;->getScore()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/common/view/RatingLayout;->setRating(I)V

    .line 474
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v2}, Lcom/app/ads/bean/AdInfo;->getAddTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, tmp:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSofttime:Landroid/widget/TextView;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :goto_1
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSoftDownloads:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v4}, Lcom/app/ads/bean/AdInfo;->getDownCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    new-instance v2, Lcom/app/ads/task/GetAdDetailTask;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    iget-object v4, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v4}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v4

    iget-object v5, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v5}, Lcom/app/ads/bean/AdInfo;->getIsAd()I

    move-result v5

    new-instance v6, Lcom/app/ads/AdsAct$10;

    invoke-direct {v6, p0}, Lcom/app/ads/AdsAct$10;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/app/ads/task/GetAdDetailTask;-><init>(Landroid/app/Activity;IILcom/app/ads/task/GetAdDetailTask$Callback;)V

    .line 488
    iget-object v3, p0, Lcom/app/ads/AdsAct;->mProgressView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcom/app/ads/task/GetAdDetailTask;->addHitView(Landroid/view/View;)Lcom/app/common/task/BaseTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/common/task/BaseTask;->exec()V

    .line 490
    new-instance v2, Lcom/app/ads/adapter/AdPicAdapter;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    const/16 v4, 0x96

    const/4 v5, -0x2

    sget-object v6, Lcom/app/ads/config/Resources;->ad_pic_def:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/app/ads/adapter/AdPicAdapter;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    .line 491
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mGallery:Landroid/widget/Gallery;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 494
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v1           #tmp:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mAdBar:Lcom/app/common/view/TitleBar;

    iget-object v2, v2, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    new-instance v3, Lcom/app/ads/AdsAct$11;

    invoke-direct {v3, p0}, Lcom/app/ads/AdsAct$11;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mDownbtn:Landroid/widget/Button;

    new-instance v3, Lcom/app/ads/AdsAct$12;

    invoke-direct {v3, p0}, Lcom/app/ads/AdsAct$12;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-void

    .line 469
    .restart local v0       #bt:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 478
    .restart local v1       #tmp:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSofttime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {v3}, Lcom/app/ads/bean/AdInfo;->getAddTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method execList()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mHotOrTopBar:Lcom/app/common/view/MenuBar;

    new-instance v1, Lcom/app/ads/AdsAct$4;

    invoke-direct {v1, p0}, Lcom/app/ads/AdsAct$4;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/MenuBar;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mTitle:Lcom/app/common/view/TitleBar;

    iget-object v0, v0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    new-instance v1, Lcom/app/ads/AdsAct$5;

    invoke-direct {v1, p0}, Lcom/app/ads/AdsAct$5;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mGoDownLoadManage:Landroid/widget/Button;

    new-instance v1, Lcom/app/ads/AdsAct$6;

    invoke-direct {v1, p0}, Lcom/app/ads/AdsAct$6;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    new-instance v1, Lcom/app/ads/AdsAct$7;

    invoke-direct {v1, p0}, Lcom/app/ads/AdsAct$7;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->setFreshListener(Lcom/app/common/view/EmptyView$OnFreshListener;)Z

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/app/ads/AdsAct;->exeTask(I)V

    .line 220
    return-void
.end method

.method getCurGyAdapter()Lcom/app/common/gy/GyAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/app/common/gy/GyAdapter",
            "<",
            "Lcom/app/ads/bll/BllAds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdaAdInfoAdapters:[Lcom/app/ads/adapter/AdInfoAdapter;

    iget v1, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getOrder()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initAdapters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 97
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mLoadMoreClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/app/ads/AdsAct;->createListView(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)Lcom/app/common/view/ListViewLM;

    move-result-object v0

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    .line 98
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mMainContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/app/ads/adapter/AdInfoAdapter;

    iput-object v0, p0, Lcom/app/ads/AdsAct;->mAdaAdInfoAdapters:[Lcom/app/ads/adapter/AdInfoAdapter;

    .line 101
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdaAdInfoAdapters:[Lcom/app/ads/adapter/AdInfoAdapter;

    new-instance v1, Lcom/app/ads/adapter/AdInfoAdapter;

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    new-instance v3, Lcom/app/ads/bll/BllAds;

    invoke-direct {v3}, Lcom/app/ads/bll/BllAds;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/app/ads/adapter/AdInfoAdapter;-><init>(Landroid/content/Context;Lcom/app/ads/bll/BllAds;Z)V

    aput-object v1, v0, v5

    .line 103
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdaAdInfoAdapters:[Lcom/app/ads/adapter/AdInfoAdapter;

    new-instance v1, Lcom/app/ads/adapter/AdInfoAdapter;

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    new-instance v3, Lcom/app/ads/bll/BllAds;

    invoke-direct {v3}, Lcom/app/ads/bll/BllAds;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/app/ads/adapter/AdInfoAdapter;-><init>(Landroid/content/Context;Lcom/app/ads/bll/BllAds;Z)V

    aput-object v1, v0, v4

    .line 104
    iput v5, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    .line 106
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->getCurGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->setGyAdapter(Lcom/app/common/gy/GyAdapter;)V

    .line 107
    return-void
.end method

.method loadImg(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 569
    .local v3, size:I
    new-array v4, v3, [Ljava/lang/String;

    .line 570
    .local v4, urls:[Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    .line 571
    .local v2, paths:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 572
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_2

    .line 579
    if-lez v0, :cond_0

    .line 580
    new-instance v5, Lcom/app/common/net/UImageSever;

    sget-object v6, Lcom/app/ads/AdsAct;->mCurActivity:Lcom/app/common/Activity;

    invoke-direct {v5, v6, v4, v2}, Lcom/app/common/net/UImageSever;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    .line 581
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    new-instance v6, Lcom/app/ads/AdsAct$14;

    invoke-direct {v6, p0}, Lcom/app/ads/AdsAct$14;-><init>(Lcom/app/ads/AdsAct;)V

    invoke-virtual {v5, v6}, Lcom/app/common/net/UImageSever;->setOnLoadedListener(Lcom/app/common/net/UImageSever$LoadedListener;)V

    .line 588
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/app/common/net/UImageSever;->setCreadNail(Z)V

    .line 589
    iget-object v5, p0, Lcom/app/ads/AdsAct;->mImageServer:Lcom/app/common/net/UImageSever;

    invoke-virtual {v5}, Lcom/app/common/net/UImageSever;->start()V

    goto :goto_0

    .line 573
    :cond_2
    iget-object v6, p0, Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/app/ads/adapter/AdPicAdapter;->getItemLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 574
    aget-object v5, v2, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    aget-object v6, v2, v1

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 575
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 576
    add-int/lit8 v0, v0, 0x1

    .line 572
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_PIC:Lcom/app/ads/AdsAct$ViewType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->backEvent()V

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/app/common/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/app/common/MainActivity;->onResume()V

    .line 237
    invoke-static {}, Lcom/app/ads/bll/CreditManager;->getInstance()Lcom/app/ads/bll/CreditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-virtual {v0, v1}, Lcom/app/ads/bll/CreditManager;->checkCredit(Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method show(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 227
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mListView:Lcom/app/common/view/ListViewLM;

    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->getCurGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->setGyAdapter(Lcom/app/common/gy/GyAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdaAdInfoAdapters:[Lcom/app/ads/adapter/AdInfoAdapter;

    iget v1, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/app/ads/adapter/AdInfoAdapter;->notifyDataSetChanged()V

    .line 232
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    goto :goto_0
.end method

.method showInfos()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    if-nez v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v0, v0, Lcom/app/ads/bll/BllDetail;->mInstroduce:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v1, v1, Lcom/app/ads/bll/BllDetail;->mInstroduce:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :goto_1
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v1, v1, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/app/ads/adapter/AdPicAdapter;->setData(Ljava/util/ArrayList;)V

    .line 543
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mShowAll:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/app/ads/AdsAct;->needRequestImg:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v0, v0, Lcom/app/ads/bll/BllDetail;->mPic:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 547
    new-instance v0, Lcom/app/ads/AdsAct$13;

    iget-object v1, p0, Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, p0, v1}, Lcom/app/ads/AdsAct$13;-><init>(Lcom/app/ads/AdsAct;Landroid/content/Context;)V

    .line 560
    invoke-virtual {v0}, Lcom/app/ads/AdsAct$13;->exec()V

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;

    iget-object v0, v0, Lcom/app/ads/bll/BllDetail;->mImgs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/app/ads/AdsAct;->loadImg(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mIntroduce:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u7b80\u4ecb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method switchViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 311
    iget-object v3, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 312
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 316
    invoke-static {}, Lcom/app/ads/AdsAct;->$SWITCH_TABLE$com$app$ads$AdsAct$ViewType()[I

    move-result-object v3

    iget-object v4, p0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    invoke-virtual {v4}, Lcom/app/ads/AdsAct$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 327
    iget-object v3, p0, Lcom/app/ads/AdsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    :goto_1
    return-void

    .line 313
    :cond_0
    iget-object v3, p0, Lcom/app/ads/AdsAct;->mMainRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0           #child:Landroid/view/View;
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->execDetail()V

    .line 319
    iget-object v3, p0, Lcom/app/ads/AdsAct;->mAdRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 322
    :pswitch_1
    invoke-virtual {p0}, Lcom/app/ads/AdsAct;->createPic()V

    .line 323
    iget-object v3, p0, Lcom/app/ads/AdsAct;->mPicRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateIndexView()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/app/ads/AdsAct;->mIndexView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/app/ads/AdsAct;->mShowIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    invoke-virtual {v2}, Lcom/app/ads/adapter/AdPicAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

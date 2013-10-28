.class public Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;
.super Ljava/lang/Object;
.source "TopAppDetailView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
    }
.end annotation


# instance fields
.field private isLoading:Z

.field private mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

.field private mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

.field private mAppId:I

.field private mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

.field private mBtnDownload:Landroid/widget/Button;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIvIcon:Landroid/widget/ImageView;

.field private mIvStar1:Landroid/widget/ImageView;

.field private mIvStar2:Landroid/widget/ImageView;

.field private mIvStar3:Landroid/widget/ImageView;

.field private mIvStar4:Landroid/widget/ImageView;

.field private mIvStar5:Landroid/widget/ImageView;

.field private mMainView:Landroid/view/ViewGroup;

.field private mPageIndex:I

.field private mPicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TopAppPicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpacing:I

.field private mState:I

.field private mTvAppProfile:Landroid/widget/TextView;

.field private mTvDownCount:Landroid/widget/TextView;

.field private mTvFileSize:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mTvUpdates:Landroid/widget/TextView;

.field private mTvUpdatesTitle:Landroid/widget/TextView;

.field private mTvVsName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;II)V
    .locals 1
    .parameter "act"
    .parameter "appId"
    .parameter "pageIndex"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    .line 77
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppId:I

    .line 78
    iput p3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPageIndex:I

    .line 79
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->createView()V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->createBottom()V

    return-void
.end method

.method static synthetic access$12(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPageIndex:I

    return v0
.end method

.method static synthetic access$13(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    return-void
.end method

.method static synthetic access$15(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvVsName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvFileSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mState:I

    return-void
.end method

.method static synthetic access$20(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvDownCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvAppProfile:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdatesTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdates:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar5:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mState:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->stopViewRefreshListener()V

    return-void
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPicList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->isLoading:Z

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;Lcom/lx/launcher8/setting/bean/TopAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    return-void
.end method

.method private createBottom()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x4190

    const/high16 v10, 0x3f80

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 245
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 248
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    .line 249
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    const v7, 0x7f0a0288

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 251
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 252
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getSelectorButton()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 253
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    new-instance v6, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;

    invoke-direct {v6, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-static {v8, v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 260
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-virtual {v2, v8, v8, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mBtnDownload:Landroid/widget/Button;

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    new-instance v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, btnReplace:Landroid/widget/Button;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    const v6, 0x7f0a0289

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 269
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->getSelectorButton()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 271
    new-instance v5, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-static {v8, v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 292
    .local v3, params2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0xf

    invoke-virtual {v3, v5, v8, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .end local v0           #btnReplace:Landroid/widget/Button;
    .end local v3           #params2:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v5, -0x1

    invoke-static {v5, v9}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 297
    .local v4, params3:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x5

    invoke-virtual {v4, v8, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 298
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method private createGrid()Landroid/widget/GridView;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/16 v2, 0xa

    .line 302
    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, view:Landroid/widget/GridView;
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 304
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 305
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 306
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 307
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 309
    return-object v0
.end method

.method private createView()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I

    .line 203
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mPageIndex:I

    if-ne v2, v4, :cond_0

    .line 204
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 208
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->createGrid()Landroid/widget/GridView;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mGridView:Landroid/widget/GridView;

    .line 209
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mGridView:Landroid/widget/GridView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f80

    invoke-static {v3, v4, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    .line 242
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mbgColorValue:I

    invoke-static {v2}, Lcom/lx/launcher8/util/TopAppUtil;->getTextColor(I)I

    move-result v1

    .line 215
    .local v1, textColor:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    .line 216
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mSpacing:I

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 217
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTitle:Landroid/widget/TextView;

    .line 218
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901f6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvVsName:Landroid/widget/TextView;

    .line 219
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901f7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvFileSize:Landroid/widget/TextView;

    .line 220
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901f8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTime:Landroid/widget/TextView;

    .line 221
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvDownCount:Landroid/widget/TextView;

    .line 222
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901fa

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvAppProfile:Landroid/widget/TextView;

    .line 223
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901fc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdates:Landroid/widget/TextView;

    .line 224
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901fb

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdatesTitle:Landroid/widget/TextView;

    .line 225
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvIcon:Landroid/widget/ImageView;

    .line 226
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar1:Landroid/widget/ImageView;

    .line 227
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar2:Landroid/widget/ImageView;

    .line 228
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar3:Landroid/widget/ImageView;

    .line 229
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar4:Landroid/widget/ImageView;

    .line 230
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0900f7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mIvStar5:Landroid/widget/ImageView;

    .line 232
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvVsName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvFileSize:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvDownCount:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvAppProfile:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdates:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mTvUpdatesTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    const v3, 0x7f0901f9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private startViewRefreshListener()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 340
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    return-void
.end method

.method private stopViewRefreshListener()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mMainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->stopViewRefreshListener()V

    .line 194
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAdapter:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$ImageAdapter;->notifyDataSetChanged()V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->startViewRefreshListener()V

    .line 88
    return-void
.end method

.method public onViewMovingFront()V
    .locals 5

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->startViewRefreshListener()V

    .line 113
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->isLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->isLoading:Z

    .line 118
    new-instance v0, Lcom/lx/launcher8/task/TopAppDetailTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    const-string v2, "http://client.anall.cn/wp8/TopAppDetail.aspx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lx/launcher8/task/TopAppDetailTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/TopAppDetailTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/app/common/task/BaseTask;->exec()Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->startViewRefreshListener()V

    .line 198
    return-void
.end method

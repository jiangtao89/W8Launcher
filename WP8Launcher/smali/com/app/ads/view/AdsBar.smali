.class public Lcom/app/ads/view/AdsBar;
.super Landroid/widget/LinearLayout;
.source "AdsBar.java"


# static fields
.field public static final ADS_CACHE_PATH:Ljava/lang/String;


# instance fields
.field private isMeasurePicIvLp:Z

.field private mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

.field private mAdLoop:I

.field private mAdPicIv:Landroid/widget/ImageView;

.field private mAdShowingPosition:I

.field private mAdsIamgeWidth:I

.field private mAdsImageHeight:I

.field private mAimHeight:I

.field private mCloseIv:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private mOnCloseListenner:Landroid/view/View$OnClickListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSlideTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ads.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/ads/view/AdsBar;->ADS_CACHE_PATH:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v2, p0, Lcom/app/ads/view/AdsBar;->mIsShowing:Z

    .line 46
    iput v1, p0, Lcom/app/ads/view/AdsBar;->mAdLoop:I

    .line 47
    iput v2, p0, Lcom/app/ads/view/AdsBar;->mAdShowingPosition:I

    .line 48
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/app/ads/view/AdsBar;->mSlideTime:I

    .line 50
    iput v1, p0, Lcom/app/ads/view/AdsBar;->mAimHeight:I

    .line 52
    iput v1, p0, Lcom/app/ads/view/AdsBar;->mAdsIamgeWidth:I

    .line 246
    iput-boolean v2, p0, Lcom/app/ads/view/AdsBar;->isMeasurePicIvLp:Z

    .line 59
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->initView()V

    .line 60
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->initData()V

    .line 61
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->initAction()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/app/ads/view/AdsBar;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/app/ads/view/AdsBar;->mAdLoop:I

    return v0
.end method

.method static synthetic access$2(Lcom/app/ads/view/AdsBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/app/ads/view/AdsBar;->mAdLoop:I

    return-void
.end method

.method static synthetic access$3(Lcom/app/ads/view/AdsBar;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/app/ads/view/AdsBar;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/app/ads/view/AdsBar;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mOnCloseListenner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private measurePicIvLp(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 249
    iget-boolean v1, p0, Lcom/app/ads/view/AdsBar;->isMeasurePicIvLp:Z

    if-eqz v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 253
    .local v0, scale:F
    const/high16 v1, 0x40c0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 254
    iget v1, p0, Lcom/app/ads/view/AdsBar;->mAdsIamgeWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/app/ads/view/AdsBar;->mAdsImageHeight:I

    .line 255
    iget-object v1, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/app/ads/view/AdsBar;->mAdsIamgeWidth:I

    iget v4, p0, Lcom/app/ads/view/AdsBar;->mAdsImageHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/app/ads/view/AdsBar;->isMeasurePicIvLp:Z

    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/app/ads/view/AdsBar;->mIsShowing:Z

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/ads/view/AdsBar;->mIsShowing:Z

    .line 207
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/app/ads/view/AdsBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/app/ads/view/AdsBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public getAdShowingPosition()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/app/ads/view/AdsBar;->mAdShowingPosition:I

    return v0
.end method

.method public getSlideTime()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/app/ads/view/AdsBar;->mSlideTime:I

    return v0
.end method

.method protected initAction()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mCloseIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/ads/view/AdsBar$2;

    invoke-direct {v1, p0}, Lcom/app/ads/view/AdsBar$2;-><init>(Lcom/app/ads/view/AdsBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/ads/view/AdsBar$3;

    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/app/ads/view/AdsBar$3;-><init>(Lcom/app/ads/view/AdsBar;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/app/ads/adapter/AdInfoAdapter;

    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/app/ads/bll/BllAds;

    invoke-direct {v2}, Lcom/app/ads/bll/BllAds;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/app/ads/adapter/AdInfoAdapter;-><init>(Landroid/content/Context;Lcom/app/ads/bll/BllAds;Z)V

    iput-object v0, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    .line 99
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    const-string v1, "bar"

    iput-object v1, v0, Lcom/app/ads/adapter/AdInfoAdapter;->mAttchePath:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    const/4 v1, -0x1

    iget v2, p0, Lcom/app/ads/view/AdsBar;->mAimHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/app/ads/adapter/AdInfoAdapter;->setBitmapAimRect(II)V

    .line 102
    new-instance v0, Lcom/app/ads/view/AdsBar$1;

    invoke-direct {v0, p0}, Lcom/app/ads/view/AdsBar$1;-><init>(Lcom/app/ads/view/AdsBar;)V

    iput-object v0, p0, Lcom/app/ads/view/AdsBar;->mRunnable:Ljava/lang/Runnable;

    .line 127
    return-void
.end method

.method protected initView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 66
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 68
    .local v3, mw:I
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    .local v2, mh:I
    const/16 v5, 0x3c

    iput v5, p0, Lcom/app/ads/view/AdsBar;->mAdsImageHeight:I

    .line 73
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/app/ads/view/AdsBar;->mAdsIamgeWidth:I

    .line 74
    iget v5, p0, Lcom/app/ads/view/AdsBar;->mAdsIamgeWidth:I

    const/16 v6, 0x2d0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/app/ads/view/AdsBar;->mAdsIamgeWidth:I

    .line 75
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v4, rl:Landroid/widget/RelativeLayout;
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 77
    invoke-static {v8, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/app/ads/view/AdsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    .line 79
    invoke-static {v8, v7}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 80
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 84
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/app/ads/view/AdsBar;->mCloseIv:Landroid/widget/ImageView;

    .line 86
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 87
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    const/high16 v5, 0x4120

    invoke-static {v0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 90
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mCloseIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mCloseIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v5, p0, Lcom/app/ads/view/AdsBar;->mCloseIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/app/ads/config/Resources;->ad_close_icon:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/app/ads/view/AdsBar;->setVisibility(I)V

    .line 94
    const/high16 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/app/ads/view/AdsBar;->setDescendantFocusability(I)V

    .line 95
    return-void
.end method

.method public loadAds(Z)V
    .locals 2
    .parameter "isImgRequest"

    .prologue
    .line 158
    new-instance v0, Lcom/app/ads/view/AdsBar$4;

    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/app/ads/view/AdsBar$4;-><init>(Lcom/app/ads/view/AdsBar;Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1}, Lcom/app/ads/view/AdsBar$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method protected setAdShowingPosition(I)V
    .locals 0
    .parameter "adShowingPosition"

    .prologue
    .line 271
    iput p1, p0, Lcom/app/ads/view/AdsBar;->mAdShowingPosition:I

    .line 272
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/app/ads/view/AdsBar;->mOnCloseListenner:Landroid/view/View$OnClickListener;

    .line 149
    return-void
.end method

.method public setOnCloseListenner(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/app/ads/view/AdsBar;->mOnCloseListenner:Landroid/view/View$OnClickListener;

    .line 153
    return-void
.end method

.method public setSlideTime(I)V
    .locals 0
    .parameter "slideTime"

    .prologue
    .line 263
    iput p1, p0, Lcom/app/ads/view/AdsBar;->mSlideTime:I

    .line 264
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 287
    .local v0, vlp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 288
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 289
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/app/ads/view/AdsBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 290
    :cond_2
    if-nez p1, :cond_1

    .line 291
    iget v1, p0, Lcom/app/ads/view/AdsBar;->mAdsImageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method public declared-synchronized show()V
    .locals 4

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/app/ads/view/AdsBar;->mIsShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/app/ads/view/AdsBar;->mIsShowing:Z

    .line 194
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/app/ads/view/AdsBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/app/ads/view/AdsBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected showAdAt(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 222
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    invoke-virtual {v3}, Lcom/app/ads/adapter/AdInfoAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v2

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    invoke-virtual {v3, p1}, Lcom/app/ads/adapter/AdInfoAdapter;->getItemImgLocalPath(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;

    invoke-virtual {v3, p1}, Lcom/app/ads/adapter/AdInfoAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 231
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/app/ads/view/AdsBar;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-direct {p0, v0}, Lcom/app/ads/view/AdsBar;->measurePicIvLp(Landroid/graphics/Bitmap;)V

    .line 235
    iget-object v3, p0, Lcom/app/ads/view/AdsBar;->mAdPicIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/app/ads/view/AdsBar;->setAdShowingPosition(I)V

    .line 238
    invoke-virtual {p0}, Lcom/app/ads/view/AdsBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    invoke-virtual {p0, v2}, Lcom/app/ads/view/AdsBar;->setVisibility(I)V

    .line 241
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

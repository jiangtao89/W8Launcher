.class public Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;
.super Ljava/lang/Object;
.source "ScaleBitmapView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# instance fields
.field private isLoaded:Z

.field private mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

.field private mImageView:Landroid/widget/ImageView;

.field private mImgScaleUrl:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mLoading:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field private mType:I

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;I)V
    .locals 4
    .parameter "act"
    .parameter "type"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    .line 41
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mType:I

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mMainView:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mMainView:Landroid/view/View;

    const v2, 0x7f0900e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImageView:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mMainView:Landroid/view/View;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mLoading:Landroid/widget/LinearLayout;

    .line 47
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 48
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->screenWidth:I

    .line 49
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->screenHeight:I

    .line 51
    if-eqz p2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mType:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setShowBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setShowBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->isLoaded:Z

    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onViewMovingFront()V
    .locals 7

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->isLoaded:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mType:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getSaveBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setShowBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgScaleUrl:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgScaleUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)V

    .line 111
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->screenWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->screenHeight:I

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 112
    .local v6, bit:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 113
    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setShowBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_3
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$3;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;)V

    .line 124
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->screenWidth:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->screenHeight:I

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 125
    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setShowBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImgUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "scaleUrl"
    .parameter "url"

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->isLoaded:Z

    .line 68
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgScaleUrl:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->mImgUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

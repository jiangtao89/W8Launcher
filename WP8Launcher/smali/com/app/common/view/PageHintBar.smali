.class public Lcom/app/common/view/PageHintBar;
.super Landroid/widget/LinearLayout;
.source "PageHintBar.java"


# instance fields
.field private mBgIds:[I

.field private mBgdraws:[Landroid/graphics/drawable/Drawable;

.field private mCurPage:I

.field private mImageViews:[Landroid/widget/ImageView;

.field private mTotalPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/PageHintBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/app/common/view/PageHintBar;->setGravity(I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    .line 27
    return-void
.end method


# virtual methods
.method public creatDoc()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/app/common/view/PageHintBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, iv:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 58
    invoke-virtual {p0, v0, v2}, Lcom/app/common/view/PageHintBar;->setImageSrc(Landroid/widget/ImageView;I)V

    .line 59
    return-object v0
.end method

.method public getCurPage()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/app/common/view/PageHintBar;->mTotalPages:I

    return v0
.end method

.method lightUp(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    iget v0, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    if-ne v0, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/app/common/view/PageHintBar;->setImageSrc(Landroid/widget/ImageView;I)V

    .line 81
    iget v0, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mImageViews:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/app/common/view/PageHintBar;->setImageSrc(Landroid/widget/ImageView;I)V

    .line 82
    :cond_1
    iput p1, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    goto :goto_0
.end method

.method public setChildDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "fouces"
    .parameter "def"

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgdraws:[Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgdraws:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgdraws:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 52
    return-void
.end method

.method public setChildResources(II)V
    .locals 2
    .parameter "fouces"
    .parameter "def"

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgIds:[I

    .line 44
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgIds:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgIds:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 46
    return-void
.end method

.method setImageSrc(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "iv"
    .parameter "index"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgIds:[I

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgIds:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgIds:[I

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/app/common/view/PageHintBar;->mBgdraws:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_1
    return-void
.end method

.method public setLightUp(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 72
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/app/common/view/PageHintBar;->mTotalPages:I

    if-le p1, v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/PageHintBar;->lightUp(I)V

    goto :goto_0
.end method

.method public setTotalPages(I)V
    .locals 3
    .parameter "totalPages"

    .prologue
    .line 30
    iput p1, p0, Lcom/app/common/view/PageHintBar;->mTotalPages:I

    .line 31
    iget v1, p0, Lcom/app/common/view/PageHintBar;->mTotalPages:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/app/common/view/PageHintBar;->mImageViews:[Landroid/widget/ImageView;

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/app/common/view/PageHintBar;->mCurPage:I

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/app/common/view/PageHintBar;->mTotalPages:I

    if-lt v0, v1, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/app/common/view/PageHintBar;->lightUp(I)V

    .line 40
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/app/common/view/PageHintBar;->mImageViews:[Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/app/common/view/PageHintBar;->creatDoc()Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 36
    iget-object v1, p0, Lcom/app/common/view/PageHintBar;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/app/common/view/PageHintBar;->addView(Landroid/view/View;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

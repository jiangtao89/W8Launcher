.class public Lcom/anall/app/bean/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mAlpha:I

    .line 35
    iput-object p1, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    .line 38
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/anall/app/bean/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 75
    iput p1, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mAlpha:I

    .line 76
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    .line 111
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 56
    sub-int v0, p3, p1

    .line 57
    .local v0, newDis:I
    if-lez v0, :cond_0

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mWidth:I

    .line 58
    :cond_0
    sub-int v0, p4, p2

    .line 59
    if-lez v0, :cond_1

    iput v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mHeight:I

    .line 60
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 66
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filterBitmap"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/anall/app/bean/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 81
    return-void
.end method

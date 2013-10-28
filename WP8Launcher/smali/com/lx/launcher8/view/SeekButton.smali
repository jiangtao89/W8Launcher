.class public Lcom/lx/launcher8/view/SeekButton;
.super Landroid/view/View;
.source "SeekButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;
    }
.end annotation


# static fields
.field public static final DRAW_END:I = 0x4

.field public static final DRAW_START:I = 0x0

.field public static final DRAW_TOUCH_DOWN:I = 0x1

.field public static final DRAW_TOUCH_MOVING:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I = 0x14


# instance fields
.field private btn:Landroid/graphics/Bitmap;

.field private btnOff:Landroid/graphics/Bitmap;

.field private btnOn:Landroid/graphics/Bitmap;

.field private drawType:I

.field private fillPaint:Landroid/graphics/Paint;

.field private fontHeight:I

.field private fontPaint:Landroid/graphics/Paint;

.field private fontWidth:I

.field private h:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mWidth:I

.field private onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

.field private paint:Landroid/graphics/Paint;

.field private px:F

.field private state:I

.field private w:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/SeekButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    .line 23
    iput-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->btnOff:Landroid/graphics/Bitmap;

    .line 25
    iput-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->fillPaint:Landroid/graphics/Paint;

    .line 27
    iput v6, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    .line 29
    const/4 v2, 0x0

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    .line 31
    iput v6, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    .line 33
    iput v6, p0, Lcom/lx/launcher8/view/SeekButton;->state:I

    .line 35
    iput v6, p0, Lcom/lx/launcher8/view/SeekButton;->fontHeight:I

    .line 45
    iput-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 53
    iput-object p1, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    .line 54
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btn:Landroid/graphics/Bitmap;

    .line 55
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btnOn:Landroid/graphics/Bitmap;

    .line 56
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btnOff:Landroid/graphics/Bitmap;

    .line 57
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btnOn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->width:I

    .line 58
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btnOff:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->height:I

    .line 59
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->w:I

    .line 60
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->h:I

    .line 61
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    .line 62
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/high16 v5, 0x4160

    invoke-static {v3, v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;IF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fillPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 78
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v6, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontWidth:I

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontHeight:I

    .line 82
    return-void
.end method

.method private isMoving(F)Z
    .locals 2
    .parameter "x"

    .prologue
    .line 145
    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    iget v1, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 146
    iput p1, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4120

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SeekButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    .line 124
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SeekButton;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    .line 125
    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btnOff:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->width:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->height:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btn:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->w:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->h:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->fontWidth:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->fontHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    :goto_1
    int-to-float v0, v0

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->fontHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_1

    .line 132
    :pswitch_2
    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    iget v1, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btnOn:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->width:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->height:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btn:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->w:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->h:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    add-int/lit8 v4, v4, -0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    iget v5, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btnOff:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->width:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->height:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btnOn:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->width:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->height:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->btn:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lx/launcher8/view/SeekButton;->w:I

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->h:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 139
    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/view/SeekButton;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->fontHeight:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    :goto_3
    int-to-float v0, v0

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->fontHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_3

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/SeekButton;->px:F

    .line 89
    iput v2, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 93
    :cond_2
    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    if-ne v3, v2, :cond_6

    .line 94
    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->state:I

    if-nez v3, :cond_5

    .line 95
    iput v5, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    .line 106
    :cond_3
    :goto_1
    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    iput v3, p0, Lcom/lx/launcher8/view/SeekButton;->state:I

    .line 107
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SeekButton;->invalidate()V

    .line 108
    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    if-ne v4, v5, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {v3, p0, v1}, Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;->onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V

    goto :goto_0

    .line 97
    :cond_5
    iput v1, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    goto :goto_1

    .line 99
    :cond_6
    iget v3, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    if-ne v3, v4, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/lx/launcher8/view/SeekButton;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 101
    iput v1, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    goto :goto_1

    .line 103
    :cond_7
    iput v5, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    goto :goto_1

    .line 110
    :cond_8
    if-ne v0, v4, :cond_9

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/SeekButton;->isMoving(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iput v4, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    .line 113
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SeekButton;->invalidate()V

    goto :goto_0

    .line 117
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setFitColor(I)V
    .locals 0
    .parameter "fitColor"

    .prologue
    .line 162
    return-void
.end method

.method public setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V
    .locals 0
    .parameter "onTouchOverListener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lx/launcher8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 154
    return-void
.end method

.method public setState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 171
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/lx/launcher8/view/SeekButton;->state:I

    .line 172
    iget v0, p0, Lcom/lx/launcher8/view/SeekButton;->state:I

    iput v0, p0, Lcom/lx/launcher8/view/SeekButton;->drawType:I

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThemeColor(I)V
    .locals 0
    .parameter "themeColor"

    .prologue
    .line 158
    return-void
.end method

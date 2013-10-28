.class public Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;
.super Landroid/view/View;
.source "SeekButtonTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;
    }
.end annotation


# static fields
.field public static final DRAW_END:I = 0x4

.field public static final DRAW_START:I = 0x0

.field public static final DRAW_TOUCH_DOWN:I = 0x1

.field public static final DRAW_TOUCH_MOVING:I = 0x2

.field public static final THEME_BLACK:I = 0xa

.field public static final THEME_WHITE:I = 0x14


# instance fields
.field private btn:Landroid/graphics/Bitmap;

.field private drawType:I

.field private fitColor:I

.field private fontPaint:Landroid/graphics/Paint;

.field private h:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private px:F

.field private state:I

.field private themeColor:I

.field private w:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->mContext:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    .line 24
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    .line 26
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->h:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    .line 30
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    .line 32
    const/16 v0, 0x14

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->themeColor:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fitColor:I

    .line 36
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->state:I

    .line 46
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;

    .line 56
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->mContext:Landroid/content/Context;

    .line 57
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->themeColor:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    .line 59
    const v0, 0x7f02018d

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->setBackgroundResource(I)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->h:I

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    const/high16 v0, 0x40a0

    invoke-static {p1, v0}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    .line 76
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    .line 62
    const v0, 0x7f02018f

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private isMoving(F)Z
    .locals 2
    .parameter "x"

    .prologue
    .line 146
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->width:I

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 147
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, -0x1

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->width:I

    .line 119
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->height:I

    .line 120
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->height:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->h:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fitColor:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fitColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    float-to-int v3, v3

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->height:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->height:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->h:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 136
    :pswitch_3
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fitColor:I

    if-eq v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fitColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->width:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->height:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->padding:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->width:I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->height:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->h:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 120
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
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 80
    const-string v3, "myLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 82
    .local v0, action:I
    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->px:F

    .line 84
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    .line 112
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 88
    :cond_2
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    if-ne v3, v2, :cond_6

    .line 89
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->state:I

    if-nez v3, :cond_5

    .line 90
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    .line 101
    :cond_3
    :goto_1
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->state:I

    .line 102
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->invalidate()V

    .line 103
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    if-ne v4, v7, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {v3, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;->onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;Z)V

    goto :goto_0

    .line 92
    :cond_5
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    goto :goto_1

    .line 94
    :cond_6
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    if-ne v3, v6, :cond_3

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 96
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    goto :goto_1

    .line 98
    :cond_7
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    goto :goto_1

    .line 105
    :cond_8
    if-ne v0, v6, :cond_9

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->isMoving(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iput v6, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    .line 108
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->invalidate()V

    goto :goto_0

    .line 112
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setFitColor(I)V
    .locals 0
    .parameter "fitColor"

    .prologue
    .line 171
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->fitColor:I

    .line 172
    return-void
.end method

.method public setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;)V
    .locals 0
    .parameter "onTouchOverListener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest$OnTouchOverListener;

    .line 155
    return-void
.end method

.method public setState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->state:I

    .line 182
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->state:I

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->drawType:I

    .line 183
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThemeColor(I)V
    .locals 2
    .parameter "themeColor"

    .prologue
    .line 158
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->themeColor:I

    .line 159
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    .line 161
    const v0, 0x7f02018d

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->setBackgroundResource(I)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->w:I

    .line 167
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->h:I

    .line 168
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->btn:Landroid/graphics/Bitmap;

    .line 164
    const v0, 0x7f02018f

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButtonTest;->setBackgroundResource(I)V

    goto :goto_0
.end method

.class public Lcom/lx/launcher8/setting/wp8/view/SeekButton;
.super Landroid/view/View;
.source "SeekButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;
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
.field private bgColor:I

.field private boundHeight:I

.field private colorPaint:Landroid/graphics/Paint;

.field private drawType:I

.field private fgColor:I

.field private fitColor:I

.field private fitHeight:I

.field private fitLine:I

.field private height:I

.field private lineHeight:I

.field private onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

.field private px:F

.field private state:I

.field private themeColor:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, -0x100

    const/4 v2, -0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    .line 21
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    .line 23
    const/16 v0, 0x14

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->themeColor:I

    .line 25
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitColor:I

    .line 29
    const/4 v0, 0x6

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    .line 31
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->state:I

    .line 41
    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->themeColor:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 55
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->bgColor:I

    .line 56
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fgColor:I

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->bgColor:I

    .line 59
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fgColor:I

    goto :goto_0
.end method

.method private getRect(II)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"
    .parameter "w"

    .prologue
    .line 149
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    add-int v2, p1, p2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitHeight:I

    add-int/2addr v3, v4

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private isMoving(F)Z
    .locals 3
    .parameter "x"

    .prologue
    .line 153
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 154
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    .line 103
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->height:I

    .line 104
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->height:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    .line 105
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    .line 106
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    .line 107
    :cond_0
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->height:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitHeight:I

    .line 108
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitHeight:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitHeight:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    mul-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getRect(II)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_2

    .line 126
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    sub-int v1, v2, v3

    .line 127
    .local v1, x:I
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    .line 128
    .local v0, w:I
    if-gez v1, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 130
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    float-to-int v0, v2

    .line 132
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getRect(II)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    .end local v0           #w:I
    .end local v1           #x:I
    :cond_2
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 135
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    mul-int/2addr v3, v4

    add-int v1, v2, v3

    .line 136
    .restart local v1       #x:I
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    .line 137
    .restart local v0       #w:I
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    if-le v2, v3, :cond_3

    .line 138
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    sub-int v0, v2, v1

    .line 140
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getRect(II)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 142
    .end local v0           #w:I
    .end local v1           #x:I
    :cond_4
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    float-to-int v5, v5

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->boundHeight:I

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitHeight:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    :cond_5
    return-void

    .line 114
    :pswitch_1
    iput v8, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    goto/16 :goto_0

    .line 119
    :pswitch_2
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->lineHeight:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitLine:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
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

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 66
    .local v0, action:I
    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->px:F

    .line 68
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 72
    :cond_2
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    if-ne v3, v2, :cond_6

    .line 73
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->state:I

    if-nez v3, :cond_5

    .line 74
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    .line 85
    :cond_3
    :goto_1
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->state:I

    .line 86
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->invalidate()V

    .line 87
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    if-ne v4, v5, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {v3, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;->onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V

    goto :goto_0

    .line 76
    :cond_5
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    goto :goto_1

    .line 78
    :cond_6
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    if-ne v3, v4, :cond_3

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 80
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    goto :goto_1

    .line 82
    :cond_7
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    goto :goto_1

    .line 89
    :cond_8
    if-ne v0, v4, :cond_9

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->isMoving(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    .line 92
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->invalidate()V

    goto :goto_0

    .line 96
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setFitColor(I)V
    .locals 0
    .parameter "fitColor"

    .prologue
    .line 176
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fitColor:I

    .line 177
    return-void
.end method

.method public setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V
    .locals 0
    .parameter "onTouchOverListener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 162
    return-void
.end method

.method public setState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->state:I

    .line 187
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->state:I

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->drawType:I

    .line 189
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->invalidate()V

    .line 190
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThemeColor(I)V
    .locals 3
    .parameter "themeColor"

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x100

    .line 165
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->themeColor:I

    .line 166
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 167
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->bgColor:I

    .line 168
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fgColor:I

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->bgColor:I

    .line 171
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->fgColor:I

    goto :goto_0
.end method

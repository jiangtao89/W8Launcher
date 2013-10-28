.class public Lcom/app/common/view/IndexView;
.super Landroid/view/View;
.source "IndexView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/view/IndexView$OnIndexChangeListener;
    }
.end annotation


# instance fields
.field private mDeFaultSpace:F

.field private mHitDelay:I

.field private mHitShow:Z

.field private mHitView:Landroid/widget/TextView;

.field private mIndexListener:Lcom/app/common/view/IndexView$OnIndexChangeListener;

.field private mLastPosition:I

.field private mPaint:Landroid/graphics/Paint;

.field private mResurce:[C

.field private mSpace:F

.field private mTextSize:F

.field private mWManager:Landroid/view/WindowManager;

.field private mWlp:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/IndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method cancelChar()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getWManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 147
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    .line 150
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/app/common/view/IndexView;->mLastPosition:I

    .line 151
    return-void
.end method

.method completeSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 268
    .local v0, height:I
    iget-object v2, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    array-length v1, v2

    .line 269
    .local v1, len:I
    iget v2, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 270
    iget v2, p0, Lcom/app/common/view/IndexView;->mSpace:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 271
    int-to-double v2, v0

    int-to-double v4, v1

    const-wide/high16 v6, 0x4018

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/app/common/view/IndexView;->mDeFaultSpace:F

    .line 272
    iget-object v2, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/app/common/view/IndexView;->mDeFaultSpace:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->invalidate()V

    .line 280
    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/app/common/view/IndexView;->mSpace:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff0

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 277
    :cond_1
    int-to-float v2, v0

    int-to-float v3, v1

    iget v4, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4000

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/app/common/view/IndexView;->mSpace:F

    goto :goto_0
.end method

.method protected getDefaultChars()[C
    .locals 1

    .prologue
    .line 178
    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method getPosition(F)I
    .locals 5
    .parameter "y"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getSpace()F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 118
    .local v0, p:I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    const/16 v1, 0x1a

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method getSpace()F
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/app/common/view/IndexView;->mDeFaultSpace:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 5

    .prologue
    .line 172
    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    .line 173
    .local v0, tmp:I
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/high16 v2, 0x4140

    :goto_0
    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 174
    .local v1, width:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 173
    .end local v1           #width:I
    :cond_0
    iget v2, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    goto :goto_0
.end method

.method getWManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mWManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/app/common/view/IndexView;->mWManager:Landroid/view/WindowManager;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    const/high16 v1, 0x41b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/app/common/view/IndexView;->mHitDelay:I

    .line 75
    iput-boolean v3, p0, Lcom/app/common/view/IndexView;->mHitShow:Z

    .line 77
    iput v2, p0, Lcom/app/common/view/IndexView;->mLastPosition:I

    .line 78
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingLeft()I

    move-result v6

    int-to-float v3, v6

    .line 84
    .local v3, startX:F
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getPaddingTop()I

    move-result v6

    int-to-float v4, v6

    .line 85
    .local v4, startY:F
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getSpace()F

    move-result v2

    .line 86
    .local v2, space:F
    iget-object v6, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    const-string v7, "W"

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 87
    .local v5, tsize:F
    iget-object v6, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    array-length v1, v6

    .line 88
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 93
    return-void

    .line 89
    :cond_0
    add-float v6, v2, v5

    add-float/2addr v4, v6

    .line 90
    iget-object v6, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    aget-char v6, v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    add-float/2addr v4, v2

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 160
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 161
    .local v0, heightMode:I
    const/high16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IndexView height can only be used in EXACTLY mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/app/common/view/IndexView;->resolveSize(II)I

    move-result v1

    .line 165
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/app/common/view/IndexView;->resolveSize(II)I

    move-result v2

    .line 164
    invoke-virtual {p0, v1, v2}, Lcom/app/common/view/IndexView;->setMeasuredDimension(II)V

    .line 166
    iget-object v1, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getDefaultChars()[C

    move-result-object v1

    iput-object v1, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->completeSpace()V

    .line 168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :pswitch_0
    new-instance v0, Lcom/app/common/view/IndexView$1;

    invoke-direct {v0, p0}, Lcom/app/common/view/IndexView$1;-><init>(Lcom/app/common/view/IndexView;)V

    .line 108
    iget v1, p0, Lcom/app/common/view/IndexView;->mHitDelay:I

    int-to-long v1, v1

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lcom/app/common/view/IndexView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 100
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/app/common/view/IndexView;->getPosition(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/app/common/view/IndexView;->showChar(I)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHitBackgroudColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 238
    return-void
.end method

.method public setHitBackgroudResources(I)V
    .locals 1
    .parameter "rid"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    return-void
.end method

.method public setHitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "draw"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void
.end method

.method public setHitDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 255
    iput p1, p0, Lcom/app/common/view/IndexView;->mHitDelay:I

    .line 256
    return-void
.end method

.method public setHitShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/app/common/view/IndexView;->mHitShow:Z

    .line 250
    return-void
.end method

.method public setHitTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    return-void
.end method

.method public setHitTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    return-void
.end method

.method public setIndexChars(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    goto :goto_0
.end method

.method public setOnIndexChangeListener(Lcom/app/common/view/IndexView$OnIndexChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/app/common/view/IndexView;->mIndexListener:Lcom/app/common/view/IndexView$OnIndexChangeListener;

    .line 260
    return-void
.end method

.method public setSpace(I)V
    .locals 2
    .parameter "space"

    .prologue
    .line 207
    iget v0, p0, Lcom/app/common/view/IndexView;->mSpace:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 208
    int-to-float v0, p1

    iput v0, p0, Lcom/app/common/view/IndexView;->mSpace:F

    .line 209
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->completeSpace()V

    .line 211
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 4
    .parameter "size"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 188
    .local v1, tmp:I
    int-to-float v2, v1

    iget v3, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 189
    int-to-float v2, v1

    iput v2, p0, Lcom/app/common/view/IndexView;->mTextSize:F

    .line 190
    iget-object v2, p0, Lcom/app/common/view/IndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->requestLayout()V

    .line 193
    :cond_1
    return-void
.end method

.method showChar(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, -0x2

    .line 123
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mResurce:[C

    aget-char v0, v3, p1

    .line 124
    .local v0, ch:C
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mIndexListener:Lcom/app/common/view/IndexView$OnIndexChangeListener;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/app/common/view/IndexView;->mLastPosition:I

    if-eq v3, p1, :cond_0

    .line 125
    iput p1, p0, Lcom/app/common/view/IndexView;->mLastPosition:I

    .line 126
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mIndexListener:Lcom/app/common/view/IndexView$OnIndexChangeListener;

    invoke-interface {v3, p1, v0}, Lcom/app/common/view/IndexView$OnIndexChangeListener;->onIndexChange(IC)V

    .line 128
    :cond_0
    iget-boolean v3, p0, Lcom/app/common/view/IndexView;->mHitShow:Z

    if-nez v3, :cond_1

    .line 143
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getWManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 130
    .local v2, wm:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/app/common/view/IndexView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a0

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 132
    .local v1, padding:I
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    .line 134
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 136
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x3f4ccccd

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 137
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x290

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 139
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .end local v1           #padding:I
    :cond_2
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/app/common/view/IndexView;->mHitView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/app/common/view/IndexView;->mWlp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

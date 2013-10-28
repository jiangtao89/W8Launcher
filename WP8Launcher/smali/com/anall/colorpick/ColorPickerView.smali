.class public Lcom/anall/colorpick/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I

.field private static mDensity:F


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/high16 v0, 0x3f80

    sput v0, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anall/colorpick/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anall/colorpick/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 67
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 72
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    .line 76
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 81
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    .line 105
    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    .line 106
    iput v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    .line 107
    iput v1, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    .line 109
    const-string v0, "Alpha"

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 110
    const v0, -0xe3e3e4

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSliderTrackerColor:I

    .line 111
    const v0, -0x919192

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderColor:I

    .line 112
    iput-boolean v2, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    .line 118
    iput v2, p0, Lcom/anall/colorpick/ColorPickerView;->mLastTouchedPanel:I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 153
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->init()V

    .line 154
    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .parameter "alpha"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 380
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 382
    .local v2, width:F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 384
    .local v0, p:Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 385
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 387
    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 211
    const/16 v3, 0x169

    new-array v1, v3, [I

    .line 213
    .local v1, hue:[I
    const/4 v0, 0x0

    .line 214
    .local v0, count:I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 218
    return-object v1

    .line 215
    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    .line 214
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    .line 203
    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 204
    .local v0, offset:F
    const/high16 v1, 0x3f80

    sget v2, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 206
    const/high16 v1, 0x3fc0

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    .line 710
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 713
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    .line 702
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 705
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v11, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 308
    .local v11, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    .line 310
    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    .line 311
    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    .line 312
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    .line 313
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 317
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/anall/colorpick/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    aput v1, v8, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    aput v1, v8, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    aput v1, v8, v0

    .line 320
    .local v8, hsv:[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 321
    .local v5, color:I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 323
    .local v6, acolor:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    .line 324
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 323
    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 327
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 329
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 331
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 332
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x4080

    sget v4, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 335
    :cond_2
    const/high16 v0, 0x4080

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v12, v0, v1

    .line 337
    .local v12, rectWidth:F
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lcom/anall/colorpick/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .line 339
    .local v9, p:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 340
    .local v10, r:Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 341
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 342
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 343
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 345
    const/high16 v0, 0x4000

    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v4, 0x3f80

    .line 268
    iget-object v10, p0, Lcom/anall/colorpick/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 271
    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    .line 273
    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    .line 274
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    .line 275
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    .line 276
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 272
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 281
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 286
    const/high16 v0, 0x4080

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .line 288
    .local v11, rectHeight:F
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lcom/anall/colorpick/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .line 290
    .local v8, p:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 291
    .local v9, r:Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    .line 292
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 293
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 294
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 297
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 299
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 235
    iget-object v10, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 238
    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    .line 244
    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 243
    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 247
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 249
    .local v6, rgb:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    .line 250
    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 249
    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 251
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 252
    .local v8, mShader:Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 254
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 256
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lcom/anall/colorpick/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .line 258
    .local v9, p:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v3, 0x3f80

    sget v4, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    .line 732
    const/high16 v1, 0x4348

    sget v2, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 734
    .local v0, height:I
    iget-boolean v1, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 735
    int-to-float v1, v0

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 738
    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 721
    .local v0, width:I
    iget-boolean v1, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 722
    int-to-float v1, v0

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 726
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .parameter "hue"

    .prologue
    .line 352
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 353
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 355
    .local v0, height:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 357
    .local v1, p:Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 358
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 360
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    .line 158
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 159
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 160
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 161
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 162
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    .line 164
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingOffset:F

    .line 166
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->initPaintTools()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/anall/colorpick/ColorPickerView;->setFocusable(Z)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/anall/colorpick/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 171
    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x1

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    sget v2, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 200
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 613
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v5, :cond_1

    move v3, v4

    .line 649
    :cond_0
    :goto_0
    return v3

    .line 615
    :cond_1
    const/4 v3, 0x0

    .line 617
    .local v3, update:Z
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 618
    .local v1, startX:I
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 621
    .local v2, startY:I
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 622
    iput v8, p0, Lcom/anall/colorpick/ColorPickerView;->mLastTouchedPanel:I

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/anall/colorpick/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    .line 626
    const/4 v3, 0x1

    goto :goto_0

    .line 628
    :cond_2
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 630
    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mLastTouchedPanel:I

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/anall/colorpick/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .line 634
    .local v0, result:[F
    aget v4, v0, v4

    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    .line 635
    aget v4, v0, v8

    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    .line 637
    const/4 v3, 0x1

    goto :goto_0

    .line 639
    .end local v0           #result:[F
    :cond_3
    iget-object v4, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    const/4 v4, 0x2

    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mLastTouchedPanel:I

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/anall/colorpick/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    .line 645
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 448
    .local v0, rect:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 450
    .local v1, width:I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 451
    const/4 p1, 0x0

    .line 460
    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    .line 453
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 454
    move p1, v1

    goto :goto_0

    .line 457
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .parameter "y"

    .prologue
    const/high16 v3, 0x43b4

    .line 428
    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 430
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 432
    .local v0, height:F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 433
    const/4 p1, 0x0

    .line 442
    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    .line 435
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 436
    move p1, v0

    goto :goto_0

    .line 439
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    .line 393
    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 394
    .local v1, rect:Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 396
    .local v2, result:[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 397
    .local v3, width:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 399
    .local v0, height:F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 400
    const/4 p1, 0x0

    .line 409
    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 410
    const/4 p2, 0x0

    .line 420
    :goto_1
    const/4 v4, 0x0

    div-float v5, v6, v3

    mul-float/2addr v5, p1

    aput v5, v2, v4

    .line 421
    const/4 v4, 0x1

    div-float v5, v6, v0

    mul-float/2addr v5, p2

    sub-float v5, v6, v5

    aput v5, v2, v4

    .line 423
    return-object v2

    .line 402
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 403
    move p1, v3

    goto :goto_0

    .line 406
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    .line 412
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 413
    move p2, v0

    goto :goto_1

    .line 416
    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .parameter "sat"
    .parameter "val"

    .prologue
    .line 365
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 366
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 367
    .local v0, height:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 369
    .local v3, width:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 371
    .local v1, p:Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 372
    const/high16 v4, 0x3f80

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 374
    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f80

    .line 788
    iget-boolean v5, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    .line 807
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 792
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .line 793
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .line 794
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .line 795
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .line 797
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 800
    new-instance v5, Lcom/anall/colorpick/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    sget v7, Lcom/anall/colorpick/ColorPickerView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/anall/colorpick/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    .line 801
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaPattern:Lcom/anall/colorpick/AlphaPatternDrawable;

    iget-object v6, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 802
    iget-object v7, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 803
    iget-object v9, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 801
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/anall/colorpick/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 776
    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 778
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .line 779
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .line 780
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    .line 781
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 783
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 784
    return-void

    .line 780
    .end local v0           #bottom:F
    .end local v3           #right:F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 760
    iget-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 761
    .local v1, dRect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x4000

    sub-float v3, v6, v7

    .line 763
    .local v3, panelSide:F
    iget-boolean v6, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    .line 764
    iget v6, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 767
    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .line 768
    .local v2, left:F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .line 769
    .local v5, top:F
    add-float v0, v5, v3

    .line 770
    .local v0, bottom:F
    add-float v4, v2, v3

    .line 772
    .local v4, right:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/anall/colorpick/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 773
    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 840
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Lcom/anall/colorpick/ColorPickerView;->mSliderTrackerColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 656
    const/4 v3, 0x0

    .line 657
    .local v3, width:I
    const/4 v0, 0x0

    .line 659
    .local v0, height:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 660
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 662
    .local v2, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 663
    .local v4, widthAllowed:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 666
    .local v1, heightAllowed:I
    invoke-direct {p0, v5, v4}, Lcom/anall/colorpick/ColorPickerView;->chooseWidth(II)I

    move-result v4

    .line 667
    invoke-direct {p0, v2, v1}, Lcom/anall/colorpick/ColorPickerView;->chooseHeight(II)I

    move-result v1

    .line 670
    iget-boolean v6, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_1

    .line 671
    int-to-float v6, v4

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 674
    if-le v0, v1, :cond_0

    .line 675
    move v0, v1

    .line 676
    int-to-float v6, v0

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 698
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/anall/colorpick/ColorPickerView;->setMeasuredDimension(II)V

    .line 699
    return-void

    .line 679
    :cond_0
    move v3, v4

    goto :goto_0

    .line 684
    :cond_1
    int-to-float v6, v1

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 686
    if-le v3, v4, :cond_2

    .line 687
    move v3, v4

    .line 688
    int-to-float v6, v4

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/anall/colorpick/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 691
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 745
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 747
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 748
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 749
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 750
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 751
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/anall/colorpick/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 753
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->setUpSatValRect()V

    .line 754
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->setUpHueRect()V

    .line 755
    invoke-direct {p0}, Lcom/anall/colorpick/ColorPickerView;->setUpAlphaRect()V

    .line 756
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 569
    const/4 v0, 0x0

    .line 571
    .local v0, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 597
    :goto_0
    if-eqz v0, :cond_1

    .line 599
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    aput v6, v4, v5

    iget v5, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    aput v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->invalidate()V

    .line 608
    :goto_1
    return v1

    .line 575
    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 577
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 579
    goto :goto_0

    .line 583
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 585
    goto :goto_0

    .line 589
    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/anall/colorpick/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 591
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 608
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x4248

    const/high16 v12, 0x4120

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 469
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 471
    .local v6, y:F
    const/4 v3, 0x0

    .line 474
    .local v3, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 476
    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v8, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 554
    iget-object v8, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    if-eqz v8, :cond_1

    .line 555
    iget-object v8, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    iget v9, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    aput v12, v10, v11

    iget v11, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    aput v11, v10, v7

    const/4 v11, 0x2

    iget v12, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->invalidate()V

    .line 563
    :goto_1
    return v7

    .line 482
    :pswitch_0
    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    div-float v9, v5, v13

    add-float v2, v8, v9

    .line 483
    .local v2, sat:F
    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    div-float v9, v6, v13

    sub-float v4, v8, v9

    .line 485
    .local v4, val:F
    cmpg-float v8, v2, v10

    if-gez v8, :cond_4

    .line 486
    const/4 v2, 0x0

    .line 492
    :cond_2
    :goto_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_5

    .line 493
    const/4 v4, 0x0

    .line 499
    :cond_3
    :goto_3
    iput v2, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    .line 500
    iput v4, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    .line 502
    const/4 v3, 0x1

    .line 504
    goto :goto_0

    .line 488
    :cond_4
    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    .line 489
    const/high16 v2, 0x3f80

    goto :goto_2

    .line 495
    :cond_5
    cmpl-float v8, v4, v11

    if-lez v8, :cond_3

    .line 496
    const/high16 v4, 0x3f80

    goto :goto_3

    .line 508
    .end local v2           #sat:F
    .end local v4           #val:F
    :pswitch_1
    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    mul-float v9, v6, v12

    sub-float v1, v8, v9

    .line 510
    .local v1, hue:F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_7

    .line 511
    const/4 v1, 0x0

    .line 517
    :cond_6
    :goto_4
    iput v1, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    .line 519
    const/4 v3, 0x1

    .line 521
    goto :goto_0

    .line 513
    :cond_7
    const/high16 v8, 0x43b4

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    .line 514
    const/high16 v1, 0x43b4

    goto :goto_4

    .line 525
    .end local v1           #hue:F
    :pswitch_2
    iget-boolean v8, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v8, :cond_9

    .line 526
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 530
    :cond_9
    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    int-to-float v8, v8

    mul-float v9, v5, v12

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 532
    .local v0, alpha:I
    if-gez v0, :cond_b

    .line 533
    const/4 v0, 0x0

    .line 539
    :cond_a
    :goto_5
    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    .line 542
    const/4 v3, 0x1

    goto :goto_0

    .line 535
    :cond_b
    const/16 v8, 0xff

    if-le v0, v8, :cond_a

    .line 536
    const/16 v0, 0xff

    goto :goto_5

    .line 563
    .end local v0           #alpha:I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/anall/colorpick/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 946
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->invalidate()V

    .line 947
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-boolean v0, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    .line 900
    iput-boolean p1, p0, Lcom/anall/colorpick/ColorPickerView;->mShowAlphaPanel:Z

    .line 907
    iput-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 908
    iput-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 909
    iput-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 910
    iput-object v1, p0, Lcom/anall/colorpick/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 912
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->requestLayout()V

    .line 915
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 824
    iput p1, p0, Lcom/anall/colorpick/ColorPickerView;->mBorderColor:I

    .line 825
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->invalidate()V

    .line 826
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anall/colorpick/ColorPickerView;->setColor(IZ)V

    .line 849
    return-void
.end method

.method public setColor(IZ)V
    .locals 12
    .parameter "color"
    .parameter "callback"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 859
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 860
    .local v0, alpha:I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 861
    .local v4, red:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 862
    .local v1, blue:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 864
    .local v2, green:I
    new-array v3, v7, [F

    .line 866
    .local v3, hsv:[F
    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 868
    iput v0, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    .line 869
    aget v5, v3, v9

    iput v5, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    .line 870
    aget v5, v3, v10

    iput v5, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    .line 871
    aget v5, v3, v11

    iput v5, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    .line 873
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 874
    iget-object v5, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lcom/anall/colorpick/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lcom/anall/colorpick/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->invalidate()V

    .line 878
    return-void
.end method

.method public setOnColorChangedListener(Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 816
    iput-object p1, p0, Lcom/anall/colorpick/ColorPickerView;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    .line 817
    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 918
    iput p1, p0, Lcom/anall/colorpick/ColorPickerView;->mSliderTrackerColor:I

    .line 920
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anall/colorpick/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 922
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerView;->invalidate()V

    .line 923
    return-void
.end method

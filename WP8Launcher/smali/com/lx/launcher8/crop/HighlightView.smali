.class Lcom/lx/launcher8/crop/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/crop/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field private mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "hidden"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mHidden:Z

    .line 395
    sget-object v0, Lcom/lx/launcher8/crop/HighlightView$ModifyMode;->None:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mMode:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    .line 402
    iput-boolean v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mMaintainAspectRatio:Z

    .line 404
    iput-boolean v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCircle:Z

    .line 410
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 411
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 412
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 49
    iput-object p1, p0, Lcom/lx/launcher8/crop/HighlightView;->mContext:Landroid/view/View;

    .line 50
    iput-boolean p2, p0, Lcom/lx/launcher8/crop/HighlightView;->mHidden:Z

    .line 51
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 357
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 358
    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 357
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 359
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 361
    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 360
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 58
    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 60
    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mHidden:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 84
    .local v11, path:Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/crop/HighlightView;->hasFocus()Z

    move-result v22

    if-nez v22, :cond_2

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/high16 v23, -0x100

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .local v14, viewDrawingRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 90
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mCircle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    .line 92
    .local v15, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v7, v0

    .line 93
    .local v7, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v15, v23

    add-float v22, v22, v23

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v7, v24

    add-float v23, v23, v24

    .line 95
    const/high16 v24, 0x4000

    div-float v24, v15, v24

    .line 96
    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 93
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, -0x10fb2a

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    .end local v7           #height:F
    .end local v15           #width:F
    :goto_1
    sget-object v22, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/crop/HighlightView;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 103
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mMode:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/lx/launcher8/crop/HighlightView$ModifyMode;->Grow:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mCircle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 112
    .local v15, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 114
    .local v7, height:I
    const-wide v22, 0x3fe921fb54442d18L

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    .line 114
    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v6, v0

    .line 116
    .local v6, d:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    .line 116
    add-int v22, v22, v23

    add-int v22, v22, v6

    .line 117
    div-int/lit8 v23, v15, 0x2

    .line 116
    sub-int v18, v22, v23

    .line 118
    .local v18, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    .line 118
    add-int v22, v22, v23

    sub-int v22, v22, v6

    .line 119
    div-int/lit8 v23, v7, 0x2

    .line 118
    sub-int v20, v22, v23

    .line 120
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v23, v23, v18

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v24

    add-int v24, v24, v20

    .line 120
    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 99
    .end local v6           #d:I
    .end local v7           #height:I
    .end local v15           #width:I
    .end local v18           #x:I
    .end local v20           #y:I
    :cond_3
    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, -0x7600

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 104
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 125
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v10, v22, 0x1

    .line 126
    .local v10, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int/lit8 v12, v22, 0x1

    .line 127
    .local v12, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int/lit8 v13, v22, 0x4

    .line 128
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, 0x3

    .line 131
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v17, v22, 0x2

    .line 133
    .local v17, widthWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v16, v22, 0x2

    .line 135
    .local v16, widthHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v8, v22, 0x2

    .line 137
    .local v8, heightHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v9, v22, 0x2

    .line 139
    .local v9, heightWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    .line 139
    add-int v19, v22, v23

    .line 141
    .local v19, xMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    .line 141
    add-int v21, v22, v23

    .line 144
    .local v21, yMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v10, v17

    .line 145
    sub-int v24, v21, v16

    .line 146
    add-int v25, v10, v17

    .line 147
    add-int v26, v21, v16

    .line 144
    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v12, v17

    .line 151
    sub-int v24, v21, v16

    .line 152
    add-int v25, v12, v17

    .line 153
    add-int v26, v21, v16

    .line 150
    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v19, v9

    .line 157
    sub-int v24, v13, v8

    .line 158
    add-int v25, v19, v9

    .line 159
    add-int v26, v13, v8

    .line 156
    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v19, v9

    .line 163
    sub-int v24, v5, v8

    .line 164
    add-int v25, v19, v9

    .line 165
    add-int v26, v5, v8

    .line 162
    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/crop/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 351
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 352
    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 351
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 182
    .local v6, r:Landroid/graphics/Rect;
    const/high16 v5, 0x41a0

    .line 183
    .local v5, hysteresis:F
    const/4 v8, 0x1

    .line 185
    .local v8, retval:I
    iget-boolean v10, p0, Lcom/lx/launcher8/crop/HighlightView;->mCircle:Z

    if-eqz v10, :cond_6

    .line 186
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 187
    .local v1, distX:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 189
    .local v2, distY:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 190
    .local v3, distanceFromCenter:I
    iget-object v10, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    .line 191
    .local v7, radius:I
    sub-int v0, v3, v7

    .line 192
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    .line 193
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 194
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1

    .line 195
    const/16 v8, 0x8

    .line 238
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_0
    :goto_0
    return v8

    .line 197
    .restart local v0       #delta:I
    .restart local v1       #distX:F
    .restart local v2       #distY:F
    .restart local v3       #distanceFromCenter:I
    .restart local v7       #radius:I
    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    .line 200
    :cond_2
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_3

    .line 201
    const/4 v8, 0x2

    goto :goto_0

    .line 203
    :cond_3
    const/4 v8, 0x4

    goto :goto_0

    .line 206
    :cond_4
    if-ge v3, v7, :cond_5

    .line 207
    const/16 v8, 0x20

    goto :goto_0

    .line 209
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 214
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_6
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_b

    .line 215
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_b

    const/4 v9, 0x1

    .line 216
    .local v9, verticalCheck:Z
    :goto_1
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_c

    .line 217
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_c

    const/4 v4, 0x1

    .line 220
    .local v4, horizCheck:Z
    :goto_2
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    if-eqz v9, :cond_7

    .line 221
    or-int/lit8 v8, v8, 0x2

    .line 223
    :cond_7
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    if-eqz v9, :cond_8

    .line 224
    or-int/lit8 v8, v8, 0x4

    .line 226
    :cond_8
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    if-eqz v4, :cond_9

    .line 227
    or-int/lit8 v8, v8, 0x8

    .line 229
    :cond_9
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    if-eqz v4, :cond_a

    .line 230
    or-int/lit8 v8, v8, 0x10

    .line 234
    :cond_a
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 235
    const/16 v8, 0x20

    goto/16 :goto_0

    .line 215
    .end local v4           #horizCheck:Z
    .end local v9           #verticalCheck:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 217
    .restart local v9       #verticalCheck:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_2
.end method

.method growBy(FF)V
    .locals 8
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v1, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 291
    iget-boolean v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_0

    .line 292
    cmpl-float v4, p1, v6

    if-eqz v4, :cond_8

    .line 293
    iget v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 302
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 303
    .local v2, r:Landroid/graphics/RectF;
    cmpl-float v4, p1, v6

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 305
    .local v0, adjustment:F
    move p1, v0

    .line 306
    iget-boolean v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_1

    .line 307
    iget v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    .line 310
    .end local v0           #adjustment:F
    :cond_1
    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    .line 312
    .restart local v0       #adjustment:F
    move p2, v0

    .line 313
    iget-boolean v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_2

    .line 314
    iget v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    .line 318
    .end local v0           #adjustment:F
    :cond_2
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 321
    const/high16 v3, 0x41c8

    .line 322
    .local v3, widthCap:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    .line 323
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 325
    :cond_3
    iget-boolean v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_4

    .line 326
    iget v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    .line 328
    .local v1, heightCap:F
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    .line 329
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 333
    :cond_5
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 334
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 338
    :cond_6
    :goto_1
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 339
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 344
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 345
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 346
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 347
    return-void

    .line 294
    .end local v1           #heightCap:F
    .end local v2           #r:Landroid/graphics/RectF;
    .end local v3           #widthCap:F
    :cond_8
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_0

    .line 295
    iget v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_0

    .line 335
    .restart local v1       #heightCap:F
    .restart local v2       #r:Landroid/graphics/RectF;
    .restart local v3       #widthCap:F
    :cond_9
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 336
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 340
    :cond_a
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 341
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2
.end method

.method handleMotion(IFF)V
    .locals 7
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 244
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 245
    .local v0, r:Landroid/graphics/Rect;
    if-ne p1, v4, :cond_0

    .line 266
    :goto_0
    return-void

    .line 247
    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    .line 249
    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    .line 250
    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    .line 249
    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/crop/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 252
    :cond_1
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_2

    .line 253
    const/4 p2, 0x0

    .line 256
    :cond_2
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_3

    .line 257
    const/4 p3, 0x0

    .line 261
    :cond_3
    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 262
    .local v1, xDelta:F
    iget-object v5, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 263
    .local v2, yDelta:F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    .line 264
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_5

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 263
    invoke-virtual {p0, v5, v3}, Lcom/lx/launcher8/crop/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    .line 264
    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 366
    return-void
.end method

.method moveBy(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 272
    .local v0, invalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 275
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 276
    iget-object v2, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 277
    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 275
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 279
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 280
    iget-object v2, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 281
    iget-object v3, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 283
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 284
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 285
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 286
    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 287
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lx/launcher8/crop/HighlightView;->mIsFocused:Z

    .line 72
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/lx/launcher8/crop/HighlightView;->mHidden:Z

    .line 76
    return-void
.end method

.method public setMode(Lcom/lx/launcher8/crop/HighlightView$ModifyMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mMode:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 174
    iput-object p1, p0, Lcom/lx/launcher8/crop/HighlightView;->mMode:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    .line 175
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 177
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 4
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "circle"
    .parameter "maintainAspectRatio"

    .prologue
    const/16 v3, 0x7d

    const/16 v2, 0x32

    .line 370
    if-eqz p4, :cond_0

    .line 371
    const/4 p5, 0x1

    .line 373
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 375
    iput-object p3, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 376
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 377
    iput-boolean p5, p0, Lcom/lx/launcher8/crop/HighlightView;->mMaintainAspectRatio:Z

    .line 378
    iput-boolean p4, p0, Lcom/lx/launcher8/crop/HighlightView;->mCircle:Z

    .line 380
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mInitialAspectRatio:F

    .line 381
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 383
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 384
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 385
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 386
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 389
    sget-object v0, Lcom/lx/launcher8/crop/HighlightView$ModifyMode;->None:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/lx/launcher8/crop/HighlightView;->mMode:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    .line 390
    invoke-direct {p0}, Lcom/lx/launcher8/crop/HighlightView;->init()V

    .line 391
    return-void
.end method

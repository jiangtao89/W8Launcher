.class public Lcom/app/common/view/KeywordsFlow;
.super Landroid/widget/FrameLayout;
.source "KeywordsFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final ANIMATION_IN:I = 0x1

.field public static final ANIMATION_OUT:I = 0x2

.field public static final ANIM_DURATION:J = 0x320L

.field public static final CENTER_TO_LOCATION:I = 0x3

.field public static final IDX_DIS_Y:I = 0x3

.field public static final IDX_TXT_LENGTH:I = 0x2

.field public static final IDX_X:I = 0x0

.field public static final IDX_Y:I = 0x1

.field public static final LOCATION_TO_CENTER:I = 0x4

.field public static final LOCATION_TO_OUTSIDE:I = 0x2

.field public static final MAX:I = 0xa

.field public static final OUTSIDE_TO_LOCATION:I = 0x1

.field public static final TEXT_SIZE_MAX:I = 0x19

.field public static final TEXT_SIZE_MIN:I = 0xf

.field private static animAlpha2Opaque:Landroid/view/animation/AlphaAnimation;

.field private static animAlpha2Transparent:Landroid/view/animation/AlphaAnimation;

.field private static animScaleLarge2Normal:Landroid/view/animation/ScaleAnimation;

.field private static animScaleNormal2Large:Landroid/view/animation/ScaleAnimation;

.field private static animScaleNormal2Zero:Landroid/view/animation/ScaleAnimation;

.field private static animScaleZero2Normal:Landroid/view/animation/ScaleAnimation;

.field private static interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private animDuration:J

.field private enableShow:Z

.field private height:I

.field private isBeDrag:Z

.field private itemClickListener:Landroid/view/View$OnClickListener;

.field private lastStartAnimationTime:J

.field private mKeywords:[Ljava/lang/String;

.field private mLastX:I

.field private mLastY:I

.field private mTouchSlop:I

.field private random:Ljava/util/Random;

.field private txtAnimInType:I

.field private txtAnimOutType:I

.field private vecKeywords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->init()V

    .line 89
    return-void
.end method

.method private attach2Screen(Ljava/util/LinkedList;III)V
    .locals 23
    .parameter
    .parameter "xCenter"
    .parameter "yCenter"
    .parameter "yItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/TextView;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, listTxt:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v14

    .line 262
    .local v14, size:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/app/common/view/KeywordsFlow;->sortXYList(Ljava/util/LinkedList;I)V

    .line 263
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v14, :cond_0

    .line 315
    return-void

    .line 264
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 265
    .local v17, txt:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 270
    .local v7, iXY:[I
    const/16 v20, 0x1

    aget v20, v7, v20

    sub-int v18, v20, p3

    .line 273
    .local v18, yDistance:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 274
    .local v19, yMove:I
    add-int/lit8 v8, v6, -0x1

    .local v8, k:I
    :goto_1
    if-gez v8, :cond_3

    .line 296
    :cond_1
    :goto_2
    move/from16 v0, v19

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 297
    sub-int v11, v19, p4

    .line 298
    .local v11, maxMove:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 299
    .local v12, randomMove:I
    shr-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    mul-int v20, v20, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v21

    div-int v13, v20, v21

    .line 300
    .local v13, realMove:I
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget v21, v7, v21

    sub-int v21, v21, v13

    aput v21, v7, v20

    .line 301
    const/16 v20, 0x3

    const/16 v21, 0x1

    aget v21, v7, v21

    sub-int v21, v21, p3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    aput v21, v7, v20

    .line 303
    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/app/common/view/KeywordsFlow;->sortXYList(Ljava/util/LinkedList;I)V

    .line 305
    .end local v11           #maxMove:I
    .end local v12           #randomMove:I
    .end local v13           #realMove:I
    :cond_2
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, -0x2

    .line 306
    const/16 v21, -0x2

    .line 305
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v10, layParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x33

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 308
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 309
    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/app/common/view/KeywordsFlow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->txtAnimInType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/app/common/view/KeywordsFlow;->getAnimationSet([IIII)Landroid/view/animation/AnimationSet;

    move-result-object v4

    .line 313
    .local v4, animSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 275
    .end local v4           #animSet:Landroid/view/animation/AnimationSet;
    .end local v10           #layParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 276
    .local v9, kXY:[I
    const/16 v20, 0x0

    aget v15, v9, v20

    .line 277
    .local v15, startX:I
    const/16 v20, 0x2

    aget v20, v9, v20

    add-int v5, v15, v20

    .line 279
    .local v5, endX:I
    const/16 v20, 0x1

    aget v20, v9, v20

    sub-int v20, v20, p3

    mul-int v20, v20, v18

    if-lez v20, :cond_5

    .line 282
    const/16 v20, 0x0

    aget v20, v7, v20

    const/16 v21, 0x0

    aget v21, v7, v21

    const/16 v22, 0x2

    aget v22, v7, v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v15, v5, v1, v2}, Lcom/app/common/view/KeywordsFlow;->isXMixed(IIII)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 283
    const/16 v20, 0x1

    aget v20, v7, v20

    const/16 v21, 0x1

    aget v21, v9, v21

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 284
    .local v16, tmpMove:I
    move/from16 v0, v16

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    .line 285
    move/from16 v19, v16

    goto/16 :goto_2

    .line 286
    :cond_4
    if-lez v19, :cond_1

    .line 288
    const/16 v19, 0x0

    .line 291
    goto/16 :goto_2

    .line 274
    .end local v16           #tmpMove:I
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1
.end method

.method private disapper()V
    .locals 9

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->getChildCount()I

    move-result v3

    .line 162
    .local v3, size:I
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 189
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, v1}, Lcom/app/common/view/KeywordsFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, txt:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 165
    invoke-virtual {p0, v4}, Lcom/app/common/view/KeywordsFlow;->removeView(Landroid/view/View;)V

    .line 162
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .local v2, layParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x3

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    aput v7, v5, v6

    .line 173
    .local v5, xy:[I
    iget v6, p0, Lcom/app/common/view/KeywordsFlow;->width:I

    shr-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/app/common/view/KeywordsFlow;->height:I

    shr-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/app/common/view/KeywordsFlow;->txtAnimOutType:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/app/common/view/KeywordsFlow;->getAnimationSet([IIII)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 174
    .local v0, animSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    new-instance v6, Lcom/app/common/view/KeywordsFlow$1;

    invoke-direct {v6, p0, v4}, Lcom/app/common/view/KeywordsFlow$1;-><init>(Lcom/app/common/view/KeywordsFlow;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method private feedKeywordsFlow()Z
    .locals 5

    .prologue
    .line 422
    iget-object v3, p0, Lcom/app/common/view/KeywordsFlow;->mKeywords:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/app/common/view/KeywordsFlow;->mKeywords:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 429
    :goto_0
    return v3

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->rubAllViews()V

    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    .line 429
    const/4 v3, 0x1

    goto :goto_0

    .line 425
    :cond_2
    iget-object v3, p0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    iget-object v4, p0, Lcom/app/common/view/KeywordsFlow;->mKeywords:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 426
    .local v1, ran:I
    iget-object v3, p0, Lcom/app/common/view/KeywordsFlow;->mKeywords:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 427
    .local v2, tmp:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/app/common/view/KeywordsFlow;->feedKeyword(Ljava/lang/String;)Z

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/app/common/view/KeywordsFlow;->lastStartAnimationTime:J

    .line 103
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/app/common/view/KeywordsFlow;->animDuration:J

    .line 104
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    .line 105
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    .line 106
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->interpolator:Landroid/view/animation/Interpolator;

    .line 108
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->animAlpha2Opaque:Landroid/view/animation/AlphaAnimation;

    .line 109
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->animAlpha2Transparent:Landroid/view/animation/AlphaAnimation;

    .line 110
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v4, v2, v4, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->animScaleLarge2Normal:Landroid/view/animation/ScaleAnimation;

    .line 111
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v4, v2, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->animScaleNormal2Large:Landroid/view/animation/ScaleAnimation;

    .line 112
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v3, v2, v3, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->animScaleZero2Normal:Landroid/view/animation/ScaleAnimation;

    .line 113
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v3, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/app/common/view/KeywordsFlow;->animScaleNormal2Zero:Landroid/view/animation/ScaleAnimation;

    .line 115
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/app/common/view/KeywordsFlow;->mTouchSlop:I

    .line 116
    return-void
.end method

.method private isXMixed(IIII)Z
    .locals 1
    .parameter "startA"
    .parameter "endA"
    .parameter "startB"
    .parameter "endB"

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, result:Z
    if-lt p3, p1, :cond_1

    if-gt p3, p2, :cond_1

    .line 373
    const/4 v0, 0x1

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    if-lt p4, p1, :cond_2

    if-gt p4, p2, :cond_2

    .line 375
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :cond_2
    if-lt p1, p3, :cond_3

    if-gt p1, p4, :cond_3

    .line 377
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    :cond_3
    if-lt p2, p3, :cond_0

    if-gt p2, p4, :cond_0

    .line 379
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private randomXY(Ljava/util/Random;Ljava/util/LinkedList;Ljava/util/LinkedList;I)[I
    .locals 3
    .parameter "ran"
    .parameter
    .parameter
    .parameter "xItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)[I"
        }
    .end annotation

    .prologue
    .line 385
    .local p2, listX:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local p3, listY:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 386
    .local v0, arr:[I
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 387
    const/4 v2, 0x1

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 388
    return-object v0
.end method

.method private show()Z
    .locals 26

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->width:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->height:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    if-lez v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/app/common/view/KeywordsFlow;->enableShow:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 193
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/app/common/view/KeywordsFlow;->enableShow:Z

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/app/common/view/KeywordsFlow;->lastStartAnimationTime:J

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->width:I

    move/from16 v22, v0

    shr-int/lit8 v17, v22, 0x1

    .local v17, xCenter:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->height:I

    move/from16 v22, v0

    shr-int/lit8 v20, v22, 0x1

    .line 198
    .local v20, yCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v13

    .line 199
    .local v13, size:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->width:I

    move/from16 v22, v0

    div-int v18, v22, v13

    .local v18, xItem:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->height:I

    move/from16 v22, v0

    div-int v21, v22, v13

    .line 203
    .local v21, yItem:I
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .local v9, listX:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 204
    .local v10, listY:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v13, :cond_0

    .line 211
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 212
    .local v8, listTxtTop:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 213
    .local v7, listTxtBottom:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v13, :cond_1

    .line 252
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/app/common/view/KeywordsFlow;->attach2Screen(Ljava/util/LinkedList;III)V

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/app/common/view/KeywordsFlow;->attach2Screen(Ljava/util/LinkedList;III)V

    .line 254
    const/16 v22, 0x1

    .line 256
    .end local v5           #i:I
    .end local v7           #listTxtBottom:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    .end local v8           #listTxtTop:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    .end local v9           #listX:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v10           #listY:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v13           #size:I
    .end local v17           #xCenter:I
    .end local v18           #xItem:I
    .end local v20           #yCenter:I
    .end local v21           #yItem:I
    :goto_2
    return v22

    .line 206
    .restart local v5       #i:I
    .restart local v9       #listX:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v10       #listY:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v13       #size:I
    .restart local v17       #xCenter:I
    .restart local v18       #xItem:I
    .restart local v20       #yCenter:I
    .restart local v21       #yItem:I
    :cond_0
    mul-int v22, v5, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    mul-int v22, v5, v21

    shr-int/lit8 v23, v21, 0x2

    add-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    .restart local v7       #listTxtBottom:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    .restart local v8       #listTxtTop:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    .local v6, keyword:Ljava/lang/String;
    const/high16 v22, -0x100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    move-object/from16 v23, v0

    const v24, 0x77ffff

    invoke-virtual/range {v23 .. v24}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    or-int v12, v22, v23

    .line 218
    .local v12, ranColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/app/common/view/KeywordsFlow;->randomXY(Ljava/util/Random;Ljava/util/LinkedList;Ljava/util/LinkedList;I)[I

    move-result-object v19

    .line 220
    .local v19, xy:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    move-object/from16 v22, v0

    const/16 v23, 0xb

    invoke-virtual/range {v22 .. v23}, Ljava/util/Random;->nextInt(I)I

    move-result v22

    add-int/lit8 v16, v22, 0xf

    .line 222
    .local v16, txtSize:I
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/app/common/view/KeywordsFlow;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 223
    .local v15, txt:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->itemClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    const/16 v22, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    const/high16 v22, 0x3f80

    const/high16 v23, 0x3f80

    const/high16 v24, 0x3f80

    const v25, -0x22969697

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 228
    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 233
    .local v11, paint:Landroid/graphics/Paint;
    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v14, v0

    .line 234
    .local v14, strWidth:I
    const/16 v22, 0x2

    aput v14, v19, v22

    .line 236
    const/16 v22, 0x0

    aget v22, v19, v22

    add-int v22, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->width:I

    move/from16 v23, v0

    shr-int/lit8 v24, v18, 0x1

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/app/common/view/KeywordsFlow;->width:I

    move/from16 v22, v0

    sub-int v4, v22, v14

    .line 239
    .local v4, baseX:I
    const/16 v22, 0x0

    sub-int v23, v4, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    move-object/from16 v24, v0

    shr-int/lit8 v25, v18, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Random;->nextInt(I)I

    move-result v24

    add-int v23, v23, v24

    aput v23, v19, v22

    .line 244
    .end local v4           #baseX:I
    :cond_2
    :goto_3
    const/16 v22, 0x3

    const/16 v23, 0x1

    aget v23, v19, v23

    sub-int v23, v23, v20

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    aput v23, v19, v22

    .line 245
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 246
    const/16 v22, 0x1

    aget v22, v19, v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 247
    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 240
    :cond_3
    const/16 v22, 0x0

    aget v22, v19, v22

    if-nez v22, :cond_2

    .line 242
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/common/view/KeywordsFlow;->random:Ljava/util/Random;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    div-int/lit8 v24, v18, 0x3

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    aput v23, v19, v22

    goto :goto_3

    .line 249
    :cond_4
    invoke-virtual {v8, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 256
    .end local v5           #i:I
    .end local v6           #keyword:Ljava/lang/String;
    .end local v7           #listTxtBottom:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    .end local v8           #listTxtTop:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    .end local v9           #listX:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v10           #listY:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v11           #paint:Landroid/graphics/Paint;
    .end local v12           #ranColor:I
    .end local v13           #size:I
    .end local v14           #strWidth:I
    .end local v15           #txt:Landroid/widget/TextView;
    .end local v16           #txtSize:I
    .end local v17           #xCenter:I
    .end local v18           #xItem:I
    .end local v19           #xy:[I
    .end local v20           #yCenter:I
    .end local v21           #yItem:I
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_2
.end method

.method private sortXYList(Ljava/util/LinkedList;I)V
    .locals 7
    .parameter
    .parameter "endIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/TextView;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, listTxt:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/TextView;>;"
    const/4 v6, 0x3

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 367
    return-void

    .line 358
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .local v2, k:I
    :goto_1
    if-lt v2, p2, :cond_1

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v6

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v6

    if-ge v5, v4, :cond_2

    .line 360
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 361
    .local v1, iTmp:Landroid/widget/TextView;
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 362
    .local v3, kTmp:Landroid/widget/TextView;
    invoke-virtual {p1, v0, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v1           #iTmp:Landroid/widget/TextView;
    .end local v3           #kTmp:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public feedKeyword(Ljava/lang/String;)Z
    .locals 3
    .parameter "keyword"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, result:Z
    iget-object v1, p0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    :cond_0
    return v0
.end method

.method public getAnimationSet([IIII)Landroid/view/animation/AnimationSet;
    .locals 7
    .parameter "xy"
    .parameter "xCenter"
    .parameter "yCenter"
    .parameter "type"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 319
    .local v0, animSet:Landroid/view/animation/AnimationSet;
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 320
    if-ne p4, v5, :cond_1

    .line 321
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animAlpha2Opaque:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 322
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animScaleLarge2Normal:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 323
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 324
    aget v2, p1, v3

    aget v3, p1, v6

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v2, p2

    shl-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aget v3, p1, v5

    sub-int/2addr v3, p3

    shl-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    .line 323
    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 325
    .local v1, translate:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 343
    .end local v1           #translate:Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/app/common/view/KeywordsFlow;->animDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 344
    return-object v0

    .line 326
    :cond_1
    if-ne p4, v6, :cond_2

    .line 327
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animAlpha2Transparent:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 328
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animScaleNormal2Large:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 329
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 330
    aget v2, p1, v3

    aget v3, p1, v6

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v2, p2

    shl-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aget v3, p1, v5

    sub-int/2addr v3, p3

    shl-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    .line 329
    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 331
    .restart local v1       #translate:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 332
    .end local v1           #translate:Landroid/view/animation/TranslateAnimation;
    :cond_2
    const/4 v2, 0x4

    if-ne p4, v2, :cond_3

    .line 333
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animAlpha2Transparent:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 334
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animScaleNormal2Zero:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 335
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p1, v3

    neg-int v2, v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    aget v3, p1, v5

    neg-int v3, v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 336
    .restart local v1       #translate:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 337
    .end local v1           #translate:Landroid/view/animation/TranslateAnimation;
    :cond_3
    const/4 v2, 0x3

    if-ne p4, v2, :cond_0

    .line 338
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animAlpha2Opaque:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 339
    sget-object v2, Lcom/app/common/view/KeywordsFlow;->animScaleZero2Normal:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 340
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p1, v3

    neg-int v2, v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    aget v3, p1, v5

    neg-int v3, v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 341
    .restart local v1       #translate:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/app/common/view/KeywordsFlow;->animDuration:J

    return-wide v0
.end method

.method public getKeywords()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    return-object v0
.end method

.method public go2Show(I)Z
    .locals 7
    .parameter "animType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/app/common/view/KeywordsFlow;->lastStartAnimationTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/app/common/view/KeywordsFlow;->animDuration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->feedKeywordsFlow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iput-boolean v5, p0, Lcom/app/common/view/KeywordsFlow;->enableShow:Z

    .line 146
    if-ne p1, v5, :cond_1

    .line 147
    iput v5, p0, Lcom/app/common/view/KeywordsFlow;->txtAnimInType:I

    .line 148
    const/4 v1, 0x4

    iput v1, p0, Lcom/app/common/view/KeywordsFlow;->txtAnimOutType:I

    .line 153
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->disapper()V

    .line 154
    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->show()Z

    move-result v0

    .line 157
    :goto_1
    return v0

    .line 149
    :cond_1
    if-ne p1, v6, :cond_0

    .line 150
    const/4 v1, 0x3

    iput v1, p0, Lcom/app/common/view/KeywordsFlow;->txtAnimInType:I

    .line 151
    iput v6, p0, Lcom/app/common/view/KeywordsFlow;->txtAnimOutType:I

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->getWidth()I

    move-result v1

    .line 393
    .local v1, tmpW:I
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->getHeight()I

    move-result v0

    .line 394
    .local v0, tmpH:I
    iget v2, p0, Lcom/app/common/view/KeywordsFlow;->width:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/app/common/view/KeywordsFlow;->height:I

    if-eq v2, v0, :cond_1

    .line 395
    :cond_0
    iput v1, p0, Lcom/app/common/view/KeywordsFlow;->width:I

    .line 396
    iput v0, p0, Lcom/app/common/view/KeywordsFlow;->height:I

    .line 397
    invoke-direct {p0}, Lcom/app/common/view/KeywordsFlow;->show()Z

    .line 399
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 435
    .local v0, action:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/app/common/view/KeywordsFlow;->isBeDrag:Z

    if-eqz v2, :cond_0

    .line 452
    :goto_0
    return v1

    .line 438
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 450
    :pswitch_0
    iput-boolean v3, p0, Lcom/app/common/view/KeywordsFlow;->isBeDrag:Z

    .line 452
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/app/common/view/KeywordsFlow;->isBeDrag:Z

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/app/common/view/KeywordsFlow;->mLastX:I

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/app/common/view/KeywordsFlow;->mLastY:I

    .line 442
    iput-boolean v3, p0, Lcom/app/common/view/KeywordsFlow;->isBeDrag:Z

    goto :goto_1

    .line 445
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/app/common/view/KeywordsFlow;->mLastX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/app/common/view/KeywordsFlow;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/app/common/view/KeywordsFlow;->mLastY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/app/common/view/KeywordsFlow;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 446
    :cond_2
    iput-boolean v1, p0, Lcom/app/common/view/KeywordsFlow;->isBeDrag:Z

    goto :goto_1

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 458
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 466
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/app/common/view/KeywordsFlow;->mLastX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 467
    .local v1, disX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/app/common/view/KeywordsFlow;->mLastY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 468
    .local v2, disY:I
    iget v3, p0, Lcom/app/common/view/KeywordsFlow;->mTouchSlop:I

    if-gt v1, v3, :cond_0

    iget v3, p0, Lcom/app/common/view/KeywordsFlow;->mTouchSlop:I

    if-le v2, v3, :cond_1

    .line 469
    :cond_0
    if-le v1, v2, :cond_2

    .line 470
    invoke-virtual {p0, v5}, Lcom/app/common/view/KeywordsFlow;->go2Show(I)Z

    .line 478
    .end local v1           #disX:I
    .end local v2           #disY:I
    :cond_1
    :goto_0
    :pswitch_1
    return v5

    .line 460
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/app/common/view/KeywordsFlow;->mLastX:I

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/app/common/view/KeywordsFlow;->mLastY:I

    goto :goto_0

    .line 472
    .restart local v1       #disX:I
    .restart local v2       #disY:I
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/app/common/view/KeywordsFlow;->go2Show(I)Z

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public rubAllViews()V
    .locals 0

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/app/common/view/KeywordsFlow;->removeAllViews()V

    .line 412
    return-void
.end method

.method public rubKeywords()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/app/common/view/KeywordsFlow;->vecKeywords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 407
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/app/common/view/KeywordsFlow;->animDuration:J

    .line 124
    return-void
.end method

.method public setKeyWord([Ljava/lang/String;)V
    .locals 0
    .parameter "words"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/app/common/view/KeywordsFlow;->mKeywords:[Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/app/common/view/KeywordsFlow;->itemClickListener:Landroid/view/View$OnClickListener;

    .line 416
    return-void
.end method

.class Lcom/lx/launcher8/crop/CropImageView;
.super Lcom/lx/launcher8/crop/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/crop/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    .line 822
    invoke-direct {p0}, Lcom/lx/launcher8/crop/CropImageView;->setViewLayers()V

    .line 823
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/lx/launcher8/crop/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 1013
    iget-object v1, p1, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 1015
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 1016
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 1018
    .local v2, height:F
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 1019
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 1021
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 1022
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 1024
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1025
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 1026
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1028
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 1029
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    .line 1030
    iget-object v10, p1, Lcom/lx/launcher8/crop/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 1031
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1032
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/lx/launcher8/crop/CropImageView;->zoomTo(FFFF)V

    .line 1035
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/lx/launcher8/crop/CropImageView;->ensureVisible(Lcom/lx/launcher8/crop/HighlightView;)V

    .line 1036
    return-void
.end method

.method private ensureVisible(Lcom/lx/launcher8/crop/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 994
    iget-object v6, p1, Lcom/lx/launcher8/crop/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 996
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 997
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 999
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1000
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1002
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 1003
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 1005
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 1006
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/lx/launcher8/crop/CropImageView;->panBy(FF)V

    .line 1008
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 1002
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 1003
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 879
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 885
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 896
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->invalidate()V

    .line 897
    return-void

    .line 880
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/crop/HighlightView;

    .line 881
    .local v1, hv:Lcom/lx/launcher8/crop/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/crop/HighlightView;->setFocus(Z)V

    .line 882
    invoke-virtual {v1}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    .end local v1           #hv:Lcom/lx/launcher8/crop/HighlightView;
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/crop/HighlightView;

    .line 887
    .restart local v1       #hv:Lcom/lx/launcher8/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/lx/launcher8/crop/HighlightView;->getHit(FF)I

    move-result v0

    .line 888
    .local v0, edge:I
    if-eq v0, v5, :cond_3

    .line 889
    invoke-virtual {v1}, Lcom/lx/launcher8/crop/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 890
    invoke-virtual {v1, v5}, Lcom/lx/launcher8/crop/HighlightView;->setFocus(Z)V

    .line 891
    invoke-virtual {v1}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    goto :goto_2

    .line 885
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setViewLayers()V
    .locals 7

    .prologue
    .line 827
    const/4 v4, 0x2

    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    .line 828
    .local v3, types:[Ljava/lang/Class;
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 829
    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    .line 830
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 831
    .local v0, args:[Ljava/lang/Object;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 832
    const-class v4, Landroid/view/View;

    const-string v5, "setLayerType"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 833
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #types:[Ljava/lang/Class;
    :goto_0
    return-void

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "lexun.Game"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "invoke view Layer method error, msg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/lx/launcher8/crop/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->invalidate()V

    .line 1049
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1040
    invoke-super {p0, p1}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 1041
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1044
    return-void

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/crop/HighlightView;

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/crop/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 808
    invoke-super/range {p0 .. p5}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 809
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mBitmapDisplayed:Lcom/lx/launcher8/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/lx/launcher8/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 818
    :cond_1
    return-void

    .line 810
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/crop/HighlightView;

    .line 811
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v2, v0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 812
    invoke-virtual {v0}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    .line 813
    iget-boolean v2, v0, Lcom/lx/launcher8/crop/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 814
    invoke-direct {p0, v0}, Lcom/lx/launcher8/crop/CropImageView;->centerBasedOnHighlightView(Lcom/lx/launcher8/crop/HighlightView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 901
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/crop/CropImage;

    .line 902
    .local v0, cropImage:Lcom/lx/launcher8/crop/CropImage;
    iget-boolean v5, v0, Lcom/lx/launcher8/crop/CropImage;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 989
    :goto_0
    return v5

    .line 906
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 974
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v7

    .line 989
    goto :goto_0

    .line 908
    :pswitch_0
    iget-boolean v5, v0, Lcom/lx/launcher8/crop/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_3

    .line 909
    invoke-direct {p0, p1}, Lcom/lx/launcher8/crop/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 911
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 912
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/crop/HighlightView;

    .line 913
    .local v2, hv:Lcom/lx/launcher8/crop/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/lx/launcher8/crop/HighlightView;->getHit(FF)I

    move-result v1

    .line 914
    .local v1, edge:I
    if-eq v1, v7, :cond_5

    .line 915
    iput v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionEdge:I

    .line 916
    iput-object v2, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mLastX:F

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mLastY:F

    .line 919
    iget-object v6, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    .line 920
    const/16 v5, 0x20

    if-ne v1, v5, :cond_4

    .line 921
    sget-object v5, Lcom/lx/launcher8/crop/HighlightView$ModifyMode;->Move:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    .line 919
    :goto_4
    invoke-virtual {v6, v5}, Lcom/lx/launcher8/crop/HighlightView;->setMode(Lcom/lx/launcher8/crop/HighlightView$ModifyMode;)V

    goto :goto_1

    .line 922
    :cond_4
    sget-object v5, Lcom/lx/launcher8/crop/HighlightView$ModifyMode;->Grow:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    goto :goto_4

    .line 911
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 929
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/lx/launcher8/crop/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    iget-boolean v5, v0, Lcom/lx/launcher8/crop/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 930
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 950
    .end local v3           #i:I
    :cond_6
    :goto_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    goto :goto_1

    .line 931
    .restart local v3       #i:I
    :cond_7
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/crop/HighlightView;

    .line 932
    .restart local v2       #hv:Lcom/lx/launcher8/crop/HighlightView;
    invoke-virtual {v2}, Lcom/lx/launcher8/crop/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 933
    iput-object v2, v0, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    .line 934
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 940
    invoke-direct {p0, v2}, Lcom/lx/launcher8/crop/CropImageView;->centerBasedOnHighlightView(Lcom/lx/launcher8/crop/HighlightView;)V

    .line 941
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/crop/CropImage;

    iput-boolean v6, v5, Lcom/lx/launcher8/crop/CropImage;->mWaitingToPick:Z

    move v5, v7

    .line 942
    goto/16 :goto_0

    .line 935
    :cond_8
    if-ne v4, v3, :cond_9

    .line 934
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 938
    :cond_9
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/crop/HighlightView;

    invoke-virtual {v5, v7}, Lcom/lx/launcher8/crop/HighlightView;->setHidden(Z)V

    goto :goto_8

    .line 930
    .end local v4           #j:I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 945
    .end local v2           #hv:Lcom/lx/launcher8/crop/HighlightView;
    .end local v3           #i:I
    :cond_b
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    if-eqz v5, :cond_6

    .line 946
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    invoke-direct {p0, v5}, Lcom/lx/launcher8/crop/CropImageView;->centerBasedOnHighlightView(Lcom/lx/launcher8/crop/HighlightView;)V

    .line 947
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    .line 948
    sget-object v6, Lcom/lx/launcher8/crop/HighlightView$ModifyMode;->None:Lcom/lx/launcher8/crop/HighlightView$ModifyMode;

    .line 947
    invoke-virtual {v5, v6}, Lcom/lx/launcher8/crop/HighlightView;->setMode(Lcom/lx/launcher8/crop/HighlightView$ModifyMode;)V

    goto :goto_6

    .line 953
    :pswitch_2
    iget-boolean v5, v0, Lcom/lx/launcher8/crop/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_c

    .line 954
    invoke-direct {p0, p1}, Lcom/lx/launcher8/crop/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 955
    :cond_c
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    if-eqz v5, :cond_1

    .line 956
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    iget v6, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionEdge:I

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/lx/launcher8/crop/CropImageView;->mLastX:F

    sub-float/2addr v8, v9

    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/lx/launcher8/crop/CropImageView;->mLastY:F

    sub-float/2addr v9, v10

    .line 956
    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/crop/HighlightView;->handleMotion(IFF)V

    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mLastX:F

    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mLastY:F

    .line 968
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImageView;->mMotionHighlightView:Lcom/lx/launcher8/crop/HighlightView;

    invoke-direct {p0, v5}, Lcom/lx/launcher8/crop/CropImageView;->ensureVisible(Lcom/lx/launcher8/crop/HighlightView;)V

    goto/16 :goto_1

    .line 976
    :pswitch_3
    invoke-virtual {p0, v7, v7}, Lcom/lx/launcher8/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 983
    :pswitch_4
    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 984
    invoke-virtual {p0, v7, v7}, Lcom/lx/launcher8/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 974
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 868
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 869
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 874
    return-void

    .line 870
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/crop/HighlightView;

    .line 871
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v2, v0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 872
    invoke-virtual {v0}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 850
    invoke-super {p0}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->zoomIn()V

    .line 851
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    return-void

    .line 851
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/crop/HighlightView;

    .line 852
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v2, v0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 853
    invoke-virtual {v0}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 859
    invoke-super {p0}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->zoomOut()V

    .line 860
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    return-void

    .line 860
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/crop/HighlightView;

    .line 861
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v2, v0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 862
    invoke-virtual {v0}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 841
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 842
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    return-void

    .line 842
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/crop/HighlightView;

    .line 843
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v2, v0, Lcom/lx/launcher8/crop/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/lx/launcher8/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 844
    invoke-virtual {v0}, Lcom/lx/launcher8/crop/HighlightView;->invalidate()V

    goto :goto_0
.end method

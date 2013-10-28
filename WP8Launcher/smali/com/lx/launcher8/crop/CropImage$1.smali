.class Lcom/lx/launcher8/crop/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/crop/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/lx/launcher8/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    .line 638
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/crop/CropImage$1;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/lx/launcher8/crop/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/crop/CropImage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/lx/launcher8/crop/CropImage$1;->makeDefault()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    return-object v0
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 13
    .parameter "f"

    .prologue
    .line 643
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 645
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 646
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 647
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 648
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 650
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 651
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 653
    .local v9, midY:I
    new-instance v0, Lcom/lx/launcher8/crop/HighlightView;

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    iget-boolean v1, v1, Lcom/lx/launcher8/crop/CropImage;->mJustCrop:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v4, v1}, Lcom/lx/launcher8/crop/HighlightView;-><init>(Landroid/view/View;Z)V

    .line 655
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 656
    .local v11, width:I
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 658
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 660
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 661
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 662
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 663
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 666
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 667
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 670
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 671
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    .line 672
    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 671
    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 675
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 676
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    .line 677
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 676
    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 680
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$2(Lcom/lx/launcher8/crop/CropImage;)Z

    move-result v4

    .line 681
    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    .line 680
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/crop/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 683
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/crop/CropImageView;->add(Lcom/lx/launcher8/crop/HighlightView;)V

    .line 684
    return-void

    .line 653
    .end local v0           #hv:Lcom/lx/launcher8/crop/HighlightView;
    .end local v2           #imageRect:Landroid/graphics/Rect;
    .end local v3           #faceRect:Landroid/graphics/RectF;
    .end local v6           #height:I
    .end local v11           #width:I
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 681
    .restart local v0       #hv:Lcom/lx/launcher8/crop/HighlightView;
    .restart local v2       #imageRect:Landroid/graphics/Rect;
    .restart local v3       #faceRect:Landroid/graphics/RectF;
    .restart local v6       #height:I
    .restart local v11       #width:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private makeDefault()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 688
    new-instance v0, Lcom/lx/launcher8/crop/HighlightView;

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    iget-boolean v1, v1, Lcom/lx/launcher8/crop/CropImage;->mJustCrop:Z

    if-eqz v1, :cond_3

    move v1, v5

    :goto_0
    invoke-direct {v0, v4, v1}, Lcom/lx/launcher8/crop/HighlightView;-><init>(Landroid/view/View;Z)V

    .line 690
    .local v0, hv:Lcom/lx/launcher8/crop/HighlightView;
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 691
    .local v9, width:I
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 693
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 712
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 713
    .local v7, cropWidth:I
    move v6, v7

    .line 715
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    div-int v1, v9, v1

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v4

    div-int v4, v8, v4

    if-le v1, v4, :cond_4

    .line 717
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v8

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    .line 718
    move v6, v8

    .line 723
    :goto_1
    if-le v7, v9, :cond_0

    .line 724
    move v7, v9

    .line 725
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v9

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 727
    :cond_0
    if-le v6, v8, :cond_1

    .line 728
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v8

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    .line 729
    move v6, v8

    .line 733
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    sub-int v1, v9, v7

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v4, v8, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-int v11, v9, v7

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-int v12, v8, v6

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-direct {v3, v1, v4, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 734
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$2(Lcom/lx/launcher8/crop/CropImage;)Z

    move-result v4

    .line 735
    iget-object v11, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v11}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v11}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v11

    if-eqz v11, :cond_2

    move v5, v10

    .line 734
    :cond_2
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/crop/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 736
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/crop/CropImageView;->add(Lcom/lx/launcher8/crop/HighlightView;)V

    .line 737
    return-void

    .end local v0           #hv:Lcom/lx/launcher8/crop/HighlightView;
    .end local v2           #imageRect:Landroid/graphics/Rect;
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    .end local v8           #height:I
    .end local v9           #width:I
    :cond_3
    move v1, v10

    .line 688
    goto/16 :goto_0

    .line 720
    .restart local v0       #hv:Lcom/lx/launcher8/crop/HighlightView;
    .restart local v2       #imageRect:Landroid/graphics/Rect;
    .restart local v6       #cropHeight:I
    .restart local v7       #cropWidth:I
    .restart local v8       #height:I
    .restart local v9       #width:I
    :cond_4
    move v7, v9

    .line 721
    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$4(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v9

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$3(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    goto :goto_1
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 742
    const/4 v7, 0x0

    .line 753
    :goto_0
    return-object v7

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 747
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    .line 749
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 750
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    iget v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 751
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 752
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 751
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 753
    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 757
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    .line 758
    invoke-direct {p0}, Lcom/lx/launcher8/crop/CropImage$1;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 760
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->mScale:F

    .line 761
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$5(Lcom/lx/launcher8/crop/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 763
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    .line 762
    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 764
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->mNumFaces:I

    .line 767
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 768
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 771
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$6(Lcom/lx/launcher8/crop/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/crop/CropImage$1$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/crop/CropImage$1$1;-><init>(Lcom/lx/launcher8/crop/CropImage$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.class Lcom/lx/launcher8/crop/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/crop/CropImage$1;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 773
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v5

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    iget v2, v2, Lcom/lx/launcher8/crop/CropImage$1;->mNumFaces:I

    if-le v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v5, Lcom/lx/launcher8/crop/CropImage;->mWaitingToPick:Z

    .line 774
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    iget v2, v2, Lcom/lx/launcher8/crop/CropImage$1;->mNumFaces:I

    if-lez v2, :cond_4

    .line 775
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    iget v2, v2, Lcom/lx/launcher8/crop/CropImage$1;->mNumFaces:I

    if-lt v0, v2, :cond_3

    .line 781
    .end local v0           #i:I
    :goto_2
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/crop/CropImageView;->invalidate()V

    .line 782
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 783
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v5

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/crop/HighlightView;

    iput-object v2, v5, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    .line 784
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/crop/CropImage;->mCrop:Lcom/lx/launcher8/crop/HighlightView;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/crop/HighlightView;->setFocus(Z)V

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    iget v2, v2, Lcom/lx/launcher8/crop/CropImage$1;->mNumFaces:I

    if-le v2, v3, :cond_1

    .line 788
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #getter for: Lcom/lx/launcher8/crop/CropImage$1;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$2(Lcom/lx/launcher8/crop/CropImage$1;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v2

    .line 789
    const v3, 0x7f0a01d7

    .line 788
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 791
    .local v1, t:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 793
    .end local v1           #t:Landroid/widget/Toast;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 773
    goto :goto_0

    .line 776
    .restart local v0       #i:I
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    iget-object v5, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    iget-object v5, v5, Lcom/lx/launcher8/crop/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v5, v5, v0

    #calls: Lcom/lx/launcher8/crop/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v2, v5}, Lcom/lx/launcher8/crop/CropImage$1;->access$0(Lcom/lx/launcher8/crop/CropImage$1;Landroid/media/FaceDetector$Face;)V

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 779
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$1$1;->this$1:Lcom/lx/launcher8/crop/CropImage$1;

    #calls: Lcom/lx/launcher8/crop/CropImage$1;->makeDefault()V
    invoke-static {v2}, Lcom/lx/launcher8/crop/CropImage$1;->access$1(Lcom/lx/launcher8/crop/CropImage$1;)V

    goto :goto_2
.end method

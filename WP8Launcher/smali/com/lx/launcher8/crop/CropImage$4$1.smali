.class Lcom/lx/launcher8/crop/CropImage$4$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/crop/CropImage$4;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage$4;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    iput-object p2, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    #getter for: Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage$4;->access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    #getter for: Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage$4;->access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 322
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    #getter for: Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage$4;->access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    #getter for: Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage$4;->access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/lx/launcher8/crop/CropImage;->access$13(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    #getter for: Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage$4;->access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->this$1:Lcom/lx/launcher8/crop/CropImage$4;

    #getter for: Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage$4;->access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/lx/launcher8/crop/CropImageView;->center(ZZ)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 329
    return-void
.end method

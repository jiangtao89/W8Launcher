.class Lcom/lx/launcher8/crop/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/crop/CropImage$4;)Lcom/lx/launcher8/crop/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 314
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;
    invoke-static {v3}, Lcom/lx/launcher8/crop/CropImage;->access$12(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/img/IImage;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImage:Lcom/lx/launcher8/crop/img/IImage;
    invoke-static {v3}, Lcom/lx/launcher8/crop/CropImage;->access$12(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/img/IImage;

    move-result-object v3

    const/4 v4, -0x1

    .line 316
    const/high16 v5, 0x10

    .line 315
    invoke-interface {v3, v4, v5}, Lcom/lx/launcher8/crop/img/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lx/launcher8/crop/CropImage;->access$6(Lcom/lx/launcher8/crop/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/crop/CropImage$4$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/lx/launcher8/crop/CropImage$4$1;-><init>(Lcom/lx/launcher8/crop/CropImage$4;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    iget-object v3, v3, Lcom/lx/launcher8/crop/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 337
    return-void

    .line 317
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/crop/CropImage$4;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 333
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

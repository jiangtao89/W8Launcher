.class Lcom/lx/launcher8/crop/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/crop/CropImage;

.field private final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$6;->this$0:Lcom/lx/launcher8/crop/CropImage;

    iput-object p2, p0, Lcom/lx/launcher8/crop/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$6;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mImageView:Lcom/lx/launcher8/crop/CropImageView;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$0(Lcom/lx/launcher8/crop/CropImage;)Lcom/lx/launcher8/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/crop/CropImageView;->clear()V

    .line 539
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 540
    return-void
.end method

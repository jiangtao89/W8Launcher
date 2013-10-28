.class Lcom/lx/launcher8/crop/CropImage$2$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/crop/CropImage$2;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/CropImage$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$2$1;->this$1:Lcom/lx/launcher8/crop/CropImage$2;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2$1;->this$1:Lcom/lx/launcher8/crop/CropImage$2;

    #getter for: Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage$2;->access$0(Lcom/lx/launcher8/crop/CropImage$2;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$2$1;->this$1:Lcom/lx/launcher8/crop/CropImage$2;

    #getter for: Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage$2;->access$0(Lcom/lx/launcher8/crop/CropImage$2;)Lcom/lx/launcher8/crop/CropImage;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    #calls: Lcom/lx/launcher8/crop/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/crop/CropImage;->access$11(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 206
    return-void
.end method

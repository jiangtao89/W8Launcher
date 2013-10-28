.class Lcom/lx/launcher8/crop/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage;->onSaveClicked()V
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
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$5;->this$0:Lcom/lx/launcher8/crop/CropImage;

    iput-object p2, p0, Lcom/lx/launcher8/crop/CropImage$5;->val$b:Landroid/graphics/Bitmap;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$5;->this$0:Lcom/lx/launcher8/crop/CropImage;

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$5;->val$b:Landroid/graphics/Bitmap;

    #calls: Lcom/lx/launcher8/crop/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/crop/CropImage;->access$11(Lcom/lx/launcher8/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 456
    return-void
.end method

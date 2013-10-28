.class Lcom/lx/launcher8/crop/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/crop/CropImage;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/crop/CropImage$2;)Lcom/lx/launcher8/crop/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    invoke-virtual {v0}, Lcom/lx/launcher8/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "return-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mOutputX:I
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$7(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mOutputY:I
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$8(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mOutputX:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$7(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$1(Lcom/lx/launcher8/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mOutputY:I
    invoke-static {v1}, Lcom/lx/launcher8/crop/CropImage;->access$8(Lcom/lx/launcher8/crop/CropImage;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/crop/CropImage;->crop:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/crop/CropImage;->access$9(Lcom/lx/launcher8/crop/CropImage;Z)V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #calls: Lcom/lx/launcher8/crop/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/lx/launcher8/crop/CropImage;->access$10(Lcom/lx/launcher8/crop/CropImage;)V

    .line 209
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    invoke-virtual {v2}, Lcom/lx/launcher8/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    invoke-virtual {v0}, Lcom/lx/launcher8/crop/CropImage;->finish()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    invoke-virtual {v2}, Lcom/lx/launcher8/crop/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    new-instance v3, Lcom/lx/launcher8/crop/CropImage$2$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/crop/CropImage$2$1;-><init>(Lcom/lx/launcher8/crop/CropImage$2;)V

    .line 207
    iget-object v4, p0, Lcom/lx/launcher8/crop/CropImage$2;->this$0:Lcom/lx/launcher8/crop/CropImage;

    #getter for: Lcom/lx/launcher8/crop/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lx/launcher8/crop/CropImage;->access$6(Lcom/lx/launcher8/crop/CropImage;)Landroid/os/Handler;

    move-result-object v4

    .line 201
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lx/launcher8/crop/img/Util;->startBackgroundJob(Lcom/lx/launcher8/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

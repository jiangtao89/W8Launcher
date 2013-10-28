.class Lcom/lx/launcher8/view/ContactCellView$DynView$1;
.super Ljava/lang/Object;
.source "ContactCellView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/ContactCellView$DynView;-><init>(Lcom/lx/launcher8/view/ContactCellView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/ContactCellView$DynView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12
    .parameter "animation"

    .prologue
    const/high16 v3, 0x2000

    const/4 v11, 0x3

    const/high16 v10, -0x8000

    const/16 v4, 0x12c

    .line 540
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->getId()I

    move-result v8

    .line 541
    .local v8, id:I
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView;->access$1(Lcom/lx/launcher8/view/ContactCellView;)[I

    move-result-object v0

    aget v9, v0, v8

    .line 542
    .local v9, position:I
    const v0, 0xffffff

    and-int v2, v9, v0

    .line 544
    .local v2, pos:I
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView;->access$1(Lcom/lx/launcher8/view/ContactCellView;)[I

    move-result-object v0

    const v1, -0x40000001

    and-int/2addr v1, v9

    aput v1, v0, v8

    .line 545
    and-int v0, v9, v10

    if-ne v0, v10, :cond_0

    .line 546
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView;->access$2(Lcom/lx/launcher8/view/ContactCellView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v3}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v3

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;
    invoke-static {v3}, Lcom/lx/launcher8/view/ContactCellView;->access$3(Lcom/lx/launcher8/view/ContactCellView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->anim2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$0(Lcom/lx/launcher8/view/ContactCellView$DynView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 566
    return-void

    .line 549
    :cond_0
    const/4 v7, 0x0

    .line 550
    .local v7, bitmap:Landroid/graphics/Bitmap;
    and-int v0, v9, v3

    if-ne v0, v3, :cond_1

    .line 551
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView;->access$4(Lcom/lx/launcher8/view/ContactCellView;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v3}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v3

    #calls: Lcom/lx/launcher8/view/ContactCellView;->getGroupId(I)I
    invoke-static {v3, v9}, Lcom/lx/launcher8/view/ContactCellView;->access$5(Lcom/lx/launcher8/view/ContactCellView;I)I

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/DynTileManager;->getGroupBitmap(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 555
    :goto_1
    if-eqz v7, :cond_2

    .line 556
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 557
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v0

    iget v0, v0, Lcom/lx/launcher8/view/ContactCellView;->mFGAlpha:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 558
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 553
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView;->access$4(Lcom/lx/launcher8/view/ContactCellView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/lx/launcher8/util/DynTileManager;->getContactIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->picRemember:[I
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView;->access$1(Lcom/lx/launcher8/view/ContactCellView;)[I

    move-result-object v0

    aput v10, v0, v8

    .line 561
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->themeColorDraws:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView;->access$2(Lcom/lx/launcher8/view/ContactCellView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$1;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v3}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v3

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->r:Ljava/util/Random;
    invoke-static {v3}, Lcom/lx/launcher8/view/ContactCellView;->access$3(Lcom/lx/launcher8/view/ContactCellView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 569
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 537
    return-void
.end method

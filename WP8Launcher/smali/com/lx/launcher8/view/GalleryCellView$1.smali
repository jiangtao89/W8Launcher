.class Lcom/lx/launcher8/view/GalleryCellView$1;
.super Ljava/lang/Object;
.source "GalleryCellView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/GalleryCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/GalleryCellView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/GalleryCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    iget-object v1, v1, Lcom/lx/launcher8/view/GalleryCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mSmoothStart:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$0(Lcom/lx/launcher8/view/GalleryCellView;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I
    invoke-static {v2}, Lcom/lx/launcher8/view/GalleryCellView;->access$1(Lcom/lx/launcher8/view/GalleryCellView;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    #calls: Lcom/lx/launcher8/view/GalleryCellView;->nextFrame(I)V
    invoke-static {v1, v2}, Lcom/lx/launcher8/view/GalleryCellView;->access$2(Lcom/lx/launcher8/view/GalleryCellView;I)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowIndex:I
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$1(Lcom/lx/launcher8/view/GalleryCellView;)I

    move-result v1

    rem-int/lit8 v0, v1, 0x2

    .line 242
    .local v0, viewIndex:I
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$3(Lcom/lx/launcher8/view/GalleryCellView;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 243
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$3(Lcom/lx/launcher8/view/GalleryCellView;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$4(Lcom/lx/launcher8/view/GalleryCellView;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$4(Lcom/lx/launcher8/view/GalleryCellView;)I

    move-result v1

    if-nez v1, :cond_3

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$3(Lcom/lx/launcher8/view/GalleryCellView;)[Landroid/widget/ImageView;

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mSmoothEnd:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/lx/launcher8/view/GalleryCellView;->access$5(Lcom/lx/launcher8/view/GalleryCellView;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #calls: Lcom/lx/launcher8/view/GalleryCellView;->ensureIndexBounds()V
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$7(Lcom/lx/launcher8/view/GalleryCellView;)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mAnimaViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$3(Lcom/lx/launcher8/view/GalleryCellView;)[Landroid/widget/ImageView;

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lx/launcher8/view/GalleryCellView$1;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mSmoothAnima:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/lx/launcher8/view/GalleryCellView;->access$6(Lcom/lx/launcher8/view/GalleryCellView;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 233
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 230
    return-void
.end method

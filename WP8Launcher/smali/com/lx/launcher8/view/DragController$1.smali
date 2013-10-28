.class Lcom/lx/launcher8/view/DragController$1;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/DragController;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 270
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/lx/launcher8/view/DragController;->access$0(Lcom/lx/launcher8/view/DragController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    iget-object v2, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/lx/launcher8/view/DragController;->access$0(Lcom/lx/launcher8/view/DragController;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/lx/launcher8/view/DragController;->access$0(Lcom/lx/launcher8/view/DragController;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/DragController;->updateDragTo(II)V

    .line 272
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lx/launcher8/view/DragController;->access$1(Lcom/lx/launcher8/view/DragController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    iget-object v2, v2, Lcom/lx/launcher8/view/DragController;->mAnimaRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/lx/launcher8/view/DragController;->access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #calls: Lcom/lx/launcher8/view/DragController;->ensureInLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    invoke-static {v1, v0}, Lcom/lx/launcher8/view/DragController;->access$3(Lcom/lx/launcher8/view/DragController;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 276
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$1;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/lx/launcher8/view/DragController;->access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

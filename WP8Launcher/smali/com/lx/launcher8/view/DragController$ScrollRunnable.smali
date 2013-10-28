.class Lcom/lx/launcher8/view/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field private mMinLen:I

.field final synthetic this$0:Lcom/lx/launcher8/view/DragController;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;
    invoke-static {v0}, Lcom/lx/launcher8/view/DragController;->access$9(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget v0, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;
    invoke-static {v0}, Lcom/lx/launcher8/view/DragController;->access$9(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellLayout;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->mMinLen:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellLayout;->scrollTop(I)V

    .line 656
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/view/DragController;->mScrollState:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/DragController;->access$10(Lcom/lx/launcher8/view/DragController;I)V

    .line 658
    :cond_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;
    invoke-static {v0}, Lcom/lx/launcher8/view/DragController;->access$9(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellLayout;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->mMinLen:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellLayout;->scrollBottom(I)V

    goto :goto_0
.end method

.method setDirection(II)V
    .locals 0
    .parameter "direction"
    .parameter "minLen"

    .prologue
    .line 661
    iput p1, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->mDirection:I

    .line 662
    iput p2, p0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->mMinLen:I

    .line 663
    return-void
.end method

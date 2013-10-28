.class Lcom/lx/launcher8/view/DragController$DelayDragRunnable;
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
    name = "DelayDragRunnable"
.end annotation


# instance fields
.field mSpanX:I

.field mSpanY:I

.field mTouchAble:Z

.field mX:I

.field mY:I

.field final synthetic this$0:Lcom/lx/launcher8/view/DragController;


# direct methods
.method private constructor <init>(Lcom/lx/launcher8/view/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lx/launcher8/view/DragController;Lcom/lx/launcher8/view/DragController$DelayDragRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;-><init>(Lcom/lx/launcher8/view/DragController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 678
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;
    invoke-static {v0}, Lcom/lx/launcher8/view/DragController;->access$9(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/lx/launcher8/view/DragController;->access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v2}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mX:I

    iget v4, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mY:I

    iget v5, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mSpanX:I

    iget v6, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mSpanY:I

    iget-boolean v7, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mTouchAble:Z

    invoke-virtual/range {v0 .. v7}, Lcom/lx/launcher8/view/CellLayout;->onDragUp(Landroid/view/View;Lcom/lx/launcher8/view/CellView;IIIIZ)Landroid/graphics/Point;

    .line 679
    return-void
.end method

.method public setParams(IIIIZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "touchable"

    .prologue
    .line 670
    iput p1, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mX:I

    .line 671
    iput p2, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mY:I

    .line 672
    iput p3, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mSpanX:I

    .line 673
    iput p4, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mSpanY:I

    .line 674
    iput-boolean p5, p0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->mTouchAble:Z

    .line 675
    return-void
.end method

.class Lcom/lx/launcher8/view/DragController$2;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/high16 v6, 0x4000

    const/4 v8, 0x0

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 635
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 613
    .restart local p1
    :pswitch_0
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mMainAct:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$4(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/AnallLauncher;->startCellViewSet(Lcom/lx/launcher8/view/CellView;)V

    goto :goto_0

    .line 616
    :pswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mMainAct:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$4(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/AnallLauncher;->deleteCellView(Lcom/lx/launcher8/view/CellView;)V

    .line 617
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    move-object v5, p1

    .line 620
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    .line 621
    .local v2, level:I
    if-ltz v2, :cond_0

    const/4 v5, 0x2

    if-gt v2, v5, :cond_0

    .line 622
    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v2, v5, 0x3

    .line 623
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #calls: Lcom/lx/launcher8/view/DragController;->changeLevelToSize(I)V
    invoke-static {v5, v2}, Lcom/lx/launcher8/view/DragController;->access$6(Lcom/lx/launcher8/view/DragController;I)V

    .line 624
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/view/CellView;->getSizeLevel()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 625
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v0

    .line 626
    .local v0, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    iget v5, v0, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 627
    .local v4, widthSpec:I
    iget v5, v0, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 628
    .local v1, heightSpec:I
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/lx/launcher8/view/CellView;->measure(II)V

    .line 629
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v6}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/view/CellView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v7}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lx/launcher8/view/CellView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Lcom/lx/launcher8/view/CellView;->layout(IIII)V

    .line 630
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    iget-object v7, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;
    invoke-static {v7}, Lcom/lx/launcher8/view/DragController;->access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;

    move-result-object v7

    #calls: Lcom/lx/launcher8/view/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    invoke-static {v6, v7}, Lcom/lx/launcher8/view/DragController;->access$7(Lcom/lx/launcher8/view/DragController;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v6

    #calls: Lcom/lx/launcher8/view/DragController;->setDragviewView(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v6}, Lcom/lx/launcher8/view/DragController;->access$8(Lcom/lx/launcher8/view/DragController;Landroid/graphics/Bitmap;)V

    .line 631
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 632
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #calls: Lcom/lx/launcher8/view/DragController;->ensureInLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    invoke-static {v5, v3}, Lcom/lx/launcher8/view/DragController;->access$3(Lcom/lx/launcher8/view/DragController;Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v5, p0, Lcom/lx/launcher8/view/DragController$2;->this$0:Lcom/lx/launcher8/view/DragController;

    #getter for: Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;
    invoke-static {v5}, Lcom/lx/launcher8/view/DragController;->access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x7f090137
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

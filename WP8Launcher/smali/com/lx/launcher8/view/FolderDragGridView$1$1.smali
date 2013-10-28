.class Lcom/lx/launcher8/view/FolderDragGridView$1$1;
.super Ljava/lang/Object;
.source "FolderDragGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/FolderDragGridView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

.field private final synthetic val$adapter:Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

.field private final synthetic val$endIndex:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/FolderDragGridView$1;ILcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

    iput p2, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->val$endIndex:I

    iput-object p3, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->val$adapter:Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 293
    iget v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->val$endIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->val$adapter:Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v1}, Lcom/lx/launcher8/view/FolderDragGridView$1;->access$0(Lcom/lx/launcher8/view/FolderDragGridView$1;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I
    invoke-static {v1}, Lcom/lx/launcher8/view/FolderDragGridView;->access$0(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v2}, Lcom/lx/launcher8/view/FolderDragGridView$1;->access$0(Lcom/lx/launcher8/view/FolderDragGridView$1;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I
    invoke-static {v2}, Lcom/lx/launcher8/view/FolderDragGridView;->access$1(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->exchange(II)V

    .line 295
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v0}, Lcom/lx/launcher8/view/FolderDragGridView$1;->access$0(Lcom/lx/launcher8/view/FolderDragGridView$1;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v1}, Lcom/lx/launcher8/view/FolderDragGridView$1;->access$0(Lcom/lx/launcher8/view/FolderDragGridView$1;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I
    invoke-static {v1}, Lcom/lx/launcher8/view/FolderDragGridView;->access$1(Lcom/lx/launcher8/view/FolderDragGridView;)I

    move-result v1

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->access$2(Lcom/lx/launcher8/view/FolderDragGridView;I)V

    .line 296
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$1$1;->this$1:Lcom/lx/launcher8/view/FolderDragGridView$1;

    #getter for: Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;
    invoke-static {v0}, Lcom/lx/launcher8/view/FolderDragGridView$1;->access$0(Lcom/lx/launcher8/view/FolderDragGridView$1;)Lcom/lx/launcher8/view/FolderDragGridView;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->isMoving:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->access$3(Lcom/lx/launcher8/view/FolderDragGridView;Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 289
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 285
    return-void
.end method

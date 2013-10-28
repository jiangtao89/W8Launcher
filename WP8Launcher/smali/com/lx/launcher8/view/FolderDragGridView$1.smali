.class Lcom/lx/launcher8/view/FolderDragGridView$1;
.super Landroid/os/Handler;
.source "FolderDragGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/FolderDragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/FolderDragGridView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/FolderDragGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    .line 271
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/FolderDragGridView$1;)Lcom/lx/launcher8/view/FolderDragGridView;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 274
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/widget/ImageView;

    .line 275
    .local v5, item:Landroid/widget/ImageView;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 276
    .local v0, Xoffset:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 277
    .local v1, Yoffset:I
    iget v4, p1, Landroid/os/Message;->what:I

    .line 278
    .local v4, endIndex:I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/FolderDragGridView$ViewHolder;

    iget v7, v7, Lcom/lx/launcher8/view/FolderDragGridView$ViewHolder;->position:I

    iget-object v8, p0, Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    invoke-virtual {v8}, Lcom/lx/launcher8/view/FolderDragGridView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v6, v7, v8

    .line 279
    .local v6, position:I
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {v7, v8, v9, v6, v4}, Lcom/lx/launcher8/view/FolderDragGridView;->getMoveAnimation(FFII)Landroid/view/animation/Animation;

    move-result-object v3

    .line 280
    .local v3, animation:Landroid/view/animation/Animation;
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v7, p0, Lcom/lx/launcher8/view/FolderDragGridView$1;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/FolderDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    .line 282
    .local v2, adapter:Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;
    new-instance v7, Lcom/lx/launcher8/view/FolderDragGridView$1$1;

    invoke-direct {v7, p0, v4, v2}, Lcom/lx/launcher8/view/FolderDragGridView$1$1;-><init>(Lcom/lx/launcher8/view/FolderDragGridView$1;ILcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;)V

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    .end local v0           #Xoffset:I
    .end local v1           #Yoffset:I
    .end local v2           #adapter:Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;
    .end local v3           #animation:Landroid/view/animation/Animation;
    .end local v4           #endIndex:I
    .end local v5           #item:Landroid/widget/ImageView;
    .end local v6           #position:I
    :cond_0
    return-void
.end method

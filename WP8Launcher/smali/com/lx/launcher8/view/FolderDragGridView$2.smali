.class Lcom/lx/launcher8/view/FolderDragGridView$2;
.super Ljava/lang/Object;
.source "FolderDragGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/FolderDragGridView;->setOnItemLongClickListener(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/FolderDragGridView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/FolderDragGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->mSatrtPos:I
    invoke-static {v0, p3}, Lcom/lx/launcher8/view/FolderDragGridView;->access$2(Lcom/lx/launcher8/view/FolderDragGridView;I)V

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->mDragPos:I
    invoke-static {v0, p3}, Lcom/lx/launcher8/view/FolderDragGridView;->access$10(Lcom/lx/launcher8/view/FolderDragGridView;I)V

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->mDropPos:I
    invoke-static {v0, p3}, Lcom/lx/launcher8/view/FolderDragGridView;->access$11(Lcom/lx/launcher8/view/FolderDragGridView;I)V

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/view/FolderDragGridView;->startDrag(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    #setter for: Lcom/lx/launcher8/view/FolderDragGridView;->isEditing:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->access$5(Lcom/lx/launcher8/view/FolderDragGridView;Z)V

    .line 112
    iget-object v0, p0, Lcom/lx/launcher8/view/FolderDragGridView$2;->this$0:Lcom/lx/launcher8/view/FolderDragGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderDragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderDragGridView$DragGridAdapter;->notifyDataSetChanged()V

    .line 113
    return v1
.end method

.class Lcom/lx/launcher8/view/ContactCellView$1;
.super Landroid/os/Handler;
.source "ContactCellView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/ContactCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/ContactCellView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/ContactCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/ContactCellView$1;->this$0:Lcom/lx/launcher8/view/ContactCellView;

    .line 516
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 520
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$1;->this$0:Lcom/lx/launcher8/view/ContactCellView;

    iget-boolean v1, v1, Lcom/lx/launcher8/view/ContactCellView;->isAnimationOver:Z

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$1;->this$0:Lcom/lx/launcher8/view/ContactCellView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lx/launcher8/view/ContactCellView;->isAnimationOver:Z

    .line 522
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 523
    .local v0, id:I
    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$1;->this$0:Lcom/lx/launcher8/view/ContactCellView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->dynViews:[Lcom/lx/launcher8/view/ContactCellView$DynView;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView;->access$0(Lcom/lx/launcher8/view/ContactCellView;)[Lcom/lx/launcher8/view/ContactCellView$DynView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->startAnimation()V

    .line 525
    .end local v0           #id:I
    :cond_0
    return-void
.end method

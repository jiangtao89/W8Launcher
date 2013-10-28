.class Lcom/lx/launcher8/view/UnHorizontalScrollView$1;
.super Landroid/os/Handler;
.source "UnHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/UnHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/UnHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;->this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;->this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iget-object v0, v0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->anim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;->this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iget-object v0, v0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->anim1:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;->this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iget-object v0, v0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;->this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iget-object v0, v0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollView:Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;->this$0:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iget-object v1, v1, Lcom/lx/launcher8/view/UnHorizontalScrollView;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :cond_0
    return-void
.end method

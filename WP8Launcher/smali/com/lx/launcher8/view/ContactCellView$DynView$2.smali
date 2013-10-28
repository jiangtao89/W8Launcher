.class Lcom/lx/launcher8/view/ContactCellView$DynView$2;
.super Ljava/lang/Object;
.source "ContactCellView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/ContactCellView$DynView;-><init>(Lcom/lx/launcher8/view/ContactCellView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/ContactCellView$DynView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$2;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$2;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lx/launcher8/view/ContactCellView;->isAnimationOver:Z

    .line 578
    iget-object v0, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$2;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v0}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$2;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v1}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v1

    const/16 v2, 0x9

    #calls: Lcom/lx/launcher8/view/ContactCellView;->getPosRandom(I)I
    invoke-static {v1, v2}, Lcom/lx/launcher8/view/ContactCellView;->access$6(Lcom/lx/launcher8/view/ContactCellView;I)I

    move-result v1

    iget-object v2, p0, Lcom/lx/launcher8/view/ContactCellView$DynView$2;->this$1:Lcom/lx/launcher8/view/ContactCellView$DynView;

    #getter for: Lcom/lx/launcher8/view/ContactCellView$DynView;->this$0:Lcom/lx/launcher8/view/ContactCellView;
    invoke-static {v2}, Lcom/lx/launcher8/view/ContactCellView$DynView;->access$1(Lcom/lx/launcher8/view/ContactCellView$DynView;)Lcom/lx/launcher8/view/ContactCellView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/view/ContactCellView;->DELAY:I
    invoke-static {v2}, Lcom/lx/launcher8/view/ContactCellView;->access$7(Lcom/lx/launcher8/view/ContactCellView;)I

    move-result v2

    #calls: Lcom/lx/launcher8/view/ContactCellView;->startAnimation(II)V
    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/view/ContactCellView;->access$8(Lcom/lx/launcher8/view/ContactCellView;II)V

    .line 579
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 582
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 573
    return-void
.end method

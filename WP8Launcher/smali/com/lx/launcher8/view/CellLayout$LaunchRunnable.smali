.class Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchRunnable"
.end annotation


# instance fields
.field private mNeedAnima:Z

.field private mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/lx/launcher8/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->mTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->this$0:Lcom/lx/launcher8/view/CellLayout;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/view/CellLayout;->mSelectView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/CellLayout;->access$1(Lcom/lx/launcher8/view/CellLayout;Landroid/view/View;)V

    .line 1347
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->this$0:Lcom/lx/launcher8/view/CellLayout;

    const/4 v1, 0x0

    const/16 v2, 0x200

    #calls: Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V
    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/view/CellLayout;->access$0(Lcom/lx/launcher8/view/CellLayout;II)V

    .line 1348
    iget-boolean v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->mNeedAnima:Z

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->this$0:Lcom/lx/launcher8/view/CellLayout;

    iget-object v1, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->this$0:Lcom/lx/launcher8/view/CellLayout;

    #getter for: Lcom/lx/launcher8/view/CellLayout;->mFoceGroundRestore:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lx/launcher8/view/CellLayout;->access$2(Lcom/lx/launcher8/view/CellLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1351
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->this$0:Lcom/lx/launcher8/view/CellLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellLayout;->setVisibility(I)V

    .line 1354
    :cond_1
    return-void
.end method

.method public setParams(Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter "r"
    .parameter "needAnima"

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->mTask:Ljava/lang/Runnable;

    .line 1341
    iput-boolean p2, p0, Lcom/lx/launcher8/view/CellLayout$LaunchRunnable;->mNeedAnima:Z

    .line 1342
    return-void
.end method

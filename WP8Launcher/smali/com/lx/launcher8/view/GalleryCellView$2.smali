.class Lcom/lx/launcher8/view/GalleryCellView$2;
.super Ljava/lang/Object;
.source "GalleryCellView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/GalleryCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/GalleryCellView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/GalleryCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #calls: Lcom/lx/launcher8/view/GalleryCellView;->moveToNext()V
    invoke-static {v0}, Lcom/lx/launcher8/view/GalleryCellView;->access$8(Lcom/lx/launcher8/view/GalleryCellView;)V

    .line 345
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I
    invoke-static {v0}, Lcom/lx/launcher8/view/GalleryCellView;->access$4(Lcom/lx/launcher8/view/GalleryCellView;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z
    invoke-static {v0}, Lcom/lx/launcher8/view/GalleryCellView;->access$9(Lcom/lx/launcher8/view/GalleryCellView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    iget-object v1, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mAnimaRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$10(Lcom/lx/launcher8/view/GalleryCellView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2134

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/GalleryCellView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    #getter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I
    invoke-static {v0}, Lcom/lx/launcher8/view/GalleryCellView;->access$4(Lcom/lx/launcher8/view/GalleryCellView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$11(Lcom/lx/launcher8/view/GalleryCellView;I)V

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    const/4 v1, 0x4

    #setter for: Lcom/lx/launcher8/view/GalleryCellView;->mShowCount:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$11(Lcom/lx/launcher8/view/GalleryCellView;I)V

    .line 350
    iget-object v0, p0, Lcom/lx/launcher8/view/GalleryCellView$2;->this$0:Lcom/lx/launcher8/view/GalleryCellView;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/view/GalleryCellView;->isRunning:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/view/GalleryCellView;->access$12(Lcom/lx/launcher8/view/GalleryCellView;Z)V

    goto :goto_0
.end method

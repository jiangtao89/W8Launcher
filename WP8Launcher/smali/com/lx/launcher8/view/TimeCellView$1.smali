.class Lcom/lx/launcher8/view/TimeCellView$1;
.super Ljava/lang/Object;
.source "TimeCellView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/TimeCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/TimeCellView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/TimeCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/TimeCellView$1;->this$0:Lcom/lx/launcher8/view/TimeCellView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView$1;->this$0:Lcom/lx/launcher8/view/TimeCellView;

    #calls: Lcom/lx/launcher8/view/TimeCellView;->updateTime()V
    invoke-static {v0}, Lcom/lx/launcher8/view/TimeCellView;->access$0(Lcom/lx/launcher8/view/TimeCellView;)V

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView$1;->this$0:Lcom/lx/launcher8/view/TimeCellView;

    iget-object v1, p0, Lcom/lx/launcher8/view/TimeCellView$1;->this$0:Lcom/lx/launcher8/view/TimeCellView;

    #getter for: Lcom/lx/launcher8/view/TimeCellView;->mTimeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lx/launcher8/view/TimeCellView;->access$1(Lcom/lx/launcher8/view/TimeCellView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xe290

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/TimeCellView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

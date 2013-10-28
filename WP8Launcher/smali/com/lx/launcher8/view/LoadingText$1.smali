.class Lcom/lx/launcher8/view/LoadingText$1;
.super Landroid/os/Handler;
.source "LoadingText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/LoadingText;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/LoadingText;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/LoadingText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/LoadingText$1;->this$0:Lcom/lx/launcher8/view/LoadingText;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText$1;->this$0:Lcom/lx/launcher8/view/LoadingText;

    #getter for: Lcom/lx/launcher8/view/LoadingText;->tv2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/view/LoadingText;->access$0(Lcom/lx/launcher8/view/LoadingText;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/LoadingText$1;->this$0:Lcom/lx/launcher8/view/LoadingText;

    #getter for: Lcom/lx/launcher8/view/LoadingText;->points:[Ljava/lang/String;
    invoke-static {v1}, Lcom/lx/launcher8/view/LoadingText;->access$1(Lcom/lx/launcher8/view/LoadingText;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/view/LoadingText$1;->this$0:Lcom/lx/launcher8/view/LoadingText;

    #calls: Lcom/lx/launcher8/view/LoadingText;->getNextPosition()I
    invoke-static {v2}, Lcom/lx/launcher8/view/LoadingText;->access$2(Lcom/lx/launcher8/view/LoadingText;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText$1;->this$0:Lcom/lx/launcher8/view/LoadingText;

    iget-object v0, v0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/LoadingText$1;->this$0:Lcom/lx/launcher8/view/LoadingText;

    iget-object v0, v0, Lcom/lx/launcher8/view/LoadingText;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    :cond_0
    return-void
.end method

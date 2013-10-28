.class Lcom/anall/screenlock/LockLayout$1;
.super Ljava/lang/Object;
.source "WPLockAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/LockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/LockLayout;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 809
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    #getter for: Lcom/anall/screenlock/LockLayout;->mDetal:I
    invoke-static {v1}, Lcom/anall/screenlock/LockLayout;->access$0(Lcom/anall/screenlock/LockLayout;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 810
    .local v0, step:I
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    #getter for: Lcom/anall/screenlock/LockLayout;->mDetal:I
    invoke-static {v1}, Lcom/anall/screenlock/LockLayout;->access$0(Lcom/anall/screenlock/LockLayout;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    #setter for: Lcom/anall/screenlock/LockLayout;->mDetal:I
    invoke-static {v1, v2}, Lcom/anall/screenlock/LockLayout;->access$1(Lcom/anall/screenlock/LockLayout;I)V

    .line 811
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/anall/screenlock/LockLayout;->scrollBy(II)V

    .line 812
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    #getter for: Lcom/anall/screenlock/LockLayout;->mDetal:I
    invoke-static {v1}, Lcom/anall/screenlock/LockLayout;->access$0(Lcom/anall/screenlock/LockLayout;)I

    move-result v1

    if-lez v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    iget-object v2, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    #getter for: Lcom/anall/screenlock/LockLayout;->mBackRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/anall/screenlock/LockLayout;->access$2(Lcom/anall/screenlock/LockLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anall/screenlock/LockLayout;->post(Ljava/lang/Runnable;)Z

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/anall/screenlock/LockLayout$1;->this$0:Lcom/anall/screenlock/LockLayout;

    #calls: Lcom/anall/screenlock/LockLayout;->tapScroll()V
    invoke-static {v1}, Lcom/anall/screenlock/LockLayout;->access$3(Lcom/anall/screenlock/LockLayout;)V

    goto :goto_0
.end method

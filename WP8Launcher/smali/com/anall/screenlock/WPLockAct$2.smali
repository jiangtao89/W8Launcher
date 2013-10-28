.class Lcom/anall/screenlock/WPLockAct$2;
.super Ljava/lang/Object;
.source "WPLockAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/WPLockAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/WPLockAct;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/WPLockAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct$2;->this$0:Lcom/anall/screenlock/WPLockAct;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$2;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$2;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/screenlock/LockLayout;->updateTime()V

    .line 391
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$2;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$6(Lcom/anall/screenlock/WPLockAct;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct$2;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mTimeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/anall/screenlock/WPLockAct;->access$7(Lcom/anall/screenlock/WPLockAct;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xe290

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    :cond_0
    return-void
.end method

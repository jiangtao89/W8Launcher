.class Lcom/anall/screenlock/WPLockAct$5;
.super Ljava/lang/Object;
.source "WPLockAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/screenlock/WPLockAct;->unLock()V
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
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 501
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/screenlock/LockLayout;->restScroll()V

    .line 502
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 503
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/screenlock/LockLayout;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 504
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$10(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/KeyboardControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$5;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mKC:Lcom/anall/screenlock/KeyboardControl;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$10(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/KeyboardControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/screenlock/KeyboardControl;->hideForgetFunction()V

    .line 509
    :cond_1
    return-void
.end method

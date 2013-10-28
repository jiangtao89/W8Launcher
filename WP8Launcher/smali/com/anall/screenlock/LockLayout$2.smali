.class Lcom/anall/screenlock/LockLayout$2;
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
    iput-object p1, p0, Lcom/anall/screenlock/LockLayout$2;->this$0:Lcom/anall/screenlock/LockLayout;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout$2;->this$0:Lcom/anall/screenlock/LockLayout;

    #getter for: Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;
    invoke-static {v0}, Lcom/anall/screenlock/LockLayout;->access$4(Lcom/anall/screenlock/LockLayout;)Lcom/anall/screenlock/WPLockAct;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/anall/screenlock/LockLayout$2;->this$0:Lcom/anall/screenlock/LockLayout;

    #getter for: Lcom/anall/screenlock/LockLayout;->mListenAct:Lcom/anall/screenlock/WPLockAct;
    invoke-static {v0}, Lcom/anall/screenlock/LockLayout;->access$4(Lcom/anall/screenlock/LockLayout;)Lcom/anall/screenlock/WPLockAct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/screenlock/WPLockAct;->unLock()V

    .line 849
    :cond_0
    return-void
.end method

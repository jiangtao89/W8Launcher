.class Lcom/anall/screenlock/WPLockAct$1$1;
.super Ljava/lang/Object;
.source "WPLockAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/screenlock/WPLockAct$1;->onInputOk(Lcom/anall/screenlock/KeyboardControl;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anall/screenlock/WPLockAct$1;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/WPLockAct$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct$1$1;->this$1:Lcom/anall/screenlock/WPLockAct$1;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1$1;->this$1:Lcom/anall/screenlock/WPLockAct$1;

    #getter for: Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct$1;->access$0(Lcom/anall/screenlock/WPLockAct$1;)Lcom/anall/screenlock/WPLockAct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/screenlock/WPLockAct;->unLock()V

    .line 217
    return-void
.end method

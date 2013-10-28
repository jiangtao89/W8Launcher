.class Lcom/anall/screenlock/WPLockAct$3;
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
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct$3;->this$0:Lcom/anall/screenlock/WPLockAct;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 522
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct$3;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;
    invoke-static {v1}, Lcom/anall/screenlock/WPLockAct;->access$8(Lcom/anall/screenlock/WPLockAct;)Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->getMissedCall()I

    move-result v0

    .line 523
    .local v0, missedCall:I
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct$3;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mNotifyView:Lcom/anall/screenlock/NotifyView;
    invoke-static {v1}, Lcom/anall/screenlock/WPLockAct;->access$9(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/NotifyView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/anall/screenlock/NotifyView;->updateMissCall(II)V

    .line 524
    return-void
.end method

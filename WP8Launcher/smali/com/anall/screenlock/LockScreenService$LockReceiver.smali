.class Lcom/anall/screenlock/LockScreenService$LockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/LockScreenService;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0xbb8

    const/4 v9, 0x0

    .line 188
    iget-object v7, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v7}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 191
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 192
    .local v1, curTime:J
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 193
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLastTime:J
    invoke-static {v5, v1, v2}, Lcom/anall/screenlock/LockScreenService;->access$6(Lcom/anall/screenlock/LockScreenService;J)V

    .line 194
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/anall/screenlock/LockScreenService;->access$7(Lcom/anall/screenlock/LockScreenService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    iget-object v6, v6, Lcom/anall/screenlock/LockScreenService;->mDelayLock:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockGap:J
    invoke-static {v7}, Lcom/anall/screenlock/LockScreenService;->access$8(Lcom/anall/screenlock/LockScreenService;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 195
    :cond_3
    iget-object v7, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLastTime:J
    invoke-static {v7}, Lcom/anall/screenlock/LockScreenService;->access$9(Lcom/anall/screenlock/LockScreenService;)J

    move-result-wide v7

    sub-long v7, v1, v7

    cmp-long v5, v7, v5

    if-gez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/anall/screenlock/LockScreenService;->access$7(Lcom/anall/screenlock/LockScreenService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    iget-object v6, v6, Lcom/anall/screenlock/LockScreenService;->mDelayLock:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 199
    .end local v1           #curTime:J
    :cond_4
    const-string v7, "com.anall.action.screen.unlock"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 200
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v5}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v5

    const v6, -0x40001

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 201
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v5, v9}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    goto :goto_0

    .line 203
    :cond_5
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 204
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->disAbleSysScreen(Z)V
    invoke-static {v5, v9}, Lcom/anall/screenlock/LockScreenService;->access$10(Lcom/anall/screenlock/LockScreenService;Z)V

    goto :goto_0

    .line 205
    :cond_6
    const-string v7, "com.anall.screen.LOCK_MODE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 206
    iget-object v7, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    const-string v8, "value"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_1
    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockGap:J
    invoke-static {v7, v5, v6}, Lcom/anall/screenlock/LockScreenService;->access$11(Lcom/anall/screenlock/LockScreenService;J)V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v5, 0xa

    goto :goto_1

    .line 208
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 209
    .local v3, time:J
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLastTime:J
    invoke-static {v5}, Lcom/anall/screenlock/LockScreenService;->access$9(Lcom/anall/screenlock/LockScreenService;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x12c

    cmp-long v5, v5, v7

    if-gez v5, :cond_9

    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLastAction:Ljava/lang/String;
    invoke-static {v5}, Lcom/anall/screenlock/LockScreenService;->access$12(Lcom/anall/screenlock/LockScreenService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 210
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v5, v9}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    .line 211
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->unLock()V
    invoke-static {v5}, Lcom/anall/screenlock/LockScreenService;->access$1(Lcom/anall/screenlock/LockScreenService;)V

    .line 213
    :cond_9
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLastAction:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/anall/screenlock/LockScreenService;->access$13(Lcom/anall/screenlock/LockScreenService;Ljava/lang/String;)V

    .line 214
    iget-object v5, p0, Lcom/anall/screenlock/LockScreenService$LockReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLastTime:J
    invoke-static {v5, v3, v4}, Lcom/anall/screenlock/LockScreenService;->access$6(Lcom/anall/screenlock/LockScreenService;J)V

    goto/16 :goto_0
.end method

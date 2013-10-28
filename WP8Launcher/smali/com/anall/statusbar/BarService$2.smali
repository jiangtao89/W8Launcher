.class Lcom/anall/statusbar/BarService$2;
.super Landroid/content/BroadcastReceiver;
.source "BarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/BarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/BarService;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/BarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    .line 183
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x100

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.anall.launcher.statusbar.show"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 221
    :cond_2
    :goto_0
    return-void

    .line 195
    :cond_3
    const-string v2, "com.anall.launcher.statusbar.hide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 196
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    :cond_4
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_5
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    :cond_6
    const-string v2, "act_extra"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_7

    .line 206
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v2, v7, v7}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    .line 207
    :cond_7
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 208
    :cond_8
    const-string v2, "com.anall.launcher.statusbar.adjust"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 209
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 210
    :cond_9
    const-string v2, "com.anall.launcher.settings.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 211
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 212
    :cond_a
    const-string v2, "com.anall.launcher.activity.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 213
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 214
    .local v1, msg:Landroid/os/Message;
    const-string v2, "act_extra"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 215
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 216
    .end local v1           #msg:Landroid/os/Message;
    :cond_b
    const-string v2, "com.anall.activity.launcher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/anall/statusbar/BarService$2;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 218
    .restart local v1       #msg:Landroid/os/Message;
    const-string v2, "act_extra"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 219
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

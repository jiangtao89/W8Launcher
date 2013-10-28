.class Lcom/anall/statusbar/BarService$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 98
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    invoke-virtual {v1}, Lcom/anall/statusbar/BarService;->stopSelf()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anall/statusbar/NotificationView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/anall/statusbar/NotificationView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/anall/statusbar/BarService;->access$1(Lcom/anall/statusbar/BarService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotification:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/anall/statusbar/BarService;->access$2(Lcom/anall/statusbar/BarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 105
    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anall/statusbar/NotificationView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 111
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/anall/statusbar/NotificationView;->setVisibility(I)V

    .line 112
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const/16 v4, 0x108

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 113
    .local v0, hideParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/anall/statusbar/BarService;->access$1(Lcom/anall/statusbar/BarService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 119
    .end local v0           #hideParams:Landroid/view/WindowManager$LayoutParams;
    :pswitch_3
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->adjustShowStatusbar(Z)V
    invoke-static {v1, v6}, Lcom/anall/statusbar/BarService;->access$3(Lcom/anall/statusbar/BarService;Z)V

    goto :goto_0

    .line 122
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 123
    .local v6, sysShow:Z
    :goto_1
    iget-object v4, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    if-eqz v6, :cond_3

    move v2, v3

    :goto_2
    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v4, v2, v3}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    .line 124
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v2, v2, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mFlags:I
    invoke-static {v2}, Lcom/anall/statusbar/BarService;->access$5(Lcom/anall/statusbar/BarService;)I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_4

    .line 129
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->adjustShowStatusbar(Z)V
    invoke-static {v2, v1}, Lcom/anall/statusbar/BarService;->access$3(Lcom/anall/statusbar/BarService;Z)V

    goto/16 :goto_0

    .end local v6           #sysShow:Z
    :cond_2
    move v6, v1

    .line 122
    goto :goto_1

    .restart local v6       #sysShow:Z
    :cond_3
    move v2, v1

    .line 123
    goto :goto_2

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    const/16 v3, 0x100

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v2, v1, v3}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    goto/16 :goto_0

    .line 137
    .end local v6           #sysShow:Z
    :pswitch_5
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v1}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #getter for: Lcom/anall/statusbar/BarService;->mNotificationView:Lcom/anall/statusbar/NotificationView;
    invoke-static {v1}, Lcom/anall/statusbar/BarService;->access$0(Lcom/anall/statusbar/BarService;)Lcom/anall/statusbar/NotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anall/statusbar/NotificationView;->settingsChanged()V

    goto/16 :goto_0

    .line 142
    :pswitch_6
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v2, v1, v5}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    .line 143
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_7

    .line 144
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v2, v1, v4}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    .line 148
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 145
    :cond_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_5

    .line 146
    iget-object v2, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v2, v1, v6}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    goto :goto_3

    .line 154
    :pswitch_7
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v1, v5, v5}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    .line 155
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v1, v4, v4}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    .line 157
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    :cond_9
    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    iget-object v1, v1, Lcom/anall/statusbar/BarService;->mStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 156
    :cond_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_8

    iget-object v1, p0, Lcom/anall/statusbar/BarService$1;->this$0:Lcom/anall/statusbar/BarService;

    #calls: Lcom/anall/statusbar/BarService;->setFlag(II)V
    invoke-static {v1, v6, v6}, Lcom/anall/statusbar/BarService;->access$4(Lcom/anall/statusbar/BarService;II)V

    goto :goto_4

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

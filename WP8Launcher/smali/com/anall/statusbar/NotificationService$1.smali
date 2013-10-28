.class Lcom/anall/statusbar/NotificationService$1;
.super Landroid/os/Handler;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationService;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/NotificationService$1;->this$0:Lcom/anall/statusbar/NotificationService;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/anall/statusbar/NotificationService$1;->this$0:Lcom/anall/statusbar/NotificationService;

    #calls: Lcom/anall/statusbar/NotificationService;->dissPopWindow()V
    invoke-static {v0}, Lcom/anall/statusbar/NotificationService;->access$0(Lcom/anall/statusbar/NotificationService;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/anall/statusbar/NotificationDetector$1;
.super Landroid/telephony/PhoneStateListener;
.source "NotificationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/NotificationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationDetector;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/NotificationDetector$1;->this$0:Lcom/anall/statusbar/NotificationDetector;

    .line 178
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .parameter "signalStrength"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 182
    .local v0, level:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x11

    iput v2, v1, Landroid/os/Message;->what:I

    .line 184
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 185
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector$1;->this$0:Lcom/anall/statusbar/NotificationDetector;

    #calls: Lcom/anall/statusbar/NotificationDetector;->callChanged(Landroid/os/Message;)V
    invoke-static {v2, v1}, Lcom/anall/statusbar/NotificationDetector;->access$0(Lcom/anall/statusbar/NotificationDetector;Landroid/os/Message;)V

    .line 186
    iget-object v2, p0, Lcom/anall/statusbar/NotificationDetector$1;->this$0:Lcom/anall/statusbar/NotificationDetector;

    const/4 v3, 0x0

    #calls: Lcom/anall/statusbar/NotificationDetector;->watchSignal(Z)V
    invoke-static {v2, v3}, Lcom/anall/statusbar/NotificationDetector;->access$1(Lcom/anall/statusbar/NotificationDetector;Z)V

    .line 187
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 188
    return-void
.end method

.class Lcom/anall/screenlock/LockScreenService$PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/LockScreenService;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v2}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 311
    iget-object v2, p0, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v2}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v2, v3}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    .line 312
    iget-object v2, p0, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->lockStateChange()V
    invoke-static {v2}, Lcom/anall/screenlock/LockScreenService;->access$5(Lcom/anall/screenlock/LockScreenService;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 315
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 317
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/anall/screenlock/LockScreenService$PhoneReceiver;->this$0:Lcom/anall/screenlock/LockScreenService;

    iget-object v2, v2, Lcom/anall/screenlock/LockScreenService;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.class Lcom/anall/screenlock/LockScreenService$3;
.super Landroid/telephony/PhoneStateListener;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPhoneCount:I

.field final synthetic this$0:Lcom/anall/screenlock/LockScreenService;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/LockScreenService;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    .line 272
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    .line 279
    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    .line 280
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0, v1}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    .line 282
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->lockStateChange()V
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$5(Lcom/anall/screenlock/LockScreenService;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    .line 287
    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    .line 288
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0, v1}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    .line 290
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->lockStateChange()V
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$5(Lcom/anall/screenlock/LockScreenService;)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    .line 295
    iget v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/anall/screenlock/LockScreenService$3;->mPhoneCount:I

    .line 296
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0, v1}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    .line 298
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$3;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->lockStateChange()V
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$5(Lcom/anall/screenlock/LockScreenService;)V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

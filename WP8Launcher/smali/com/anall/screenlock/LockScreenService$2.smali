.class Lcom/anall/screenlock/LockScreenService$2;
.super Ljava/lang/Object;
.source "LockScreenService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/screenlock/LockScreenService;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/LockScreenService$2;->this$0:Lcom/anall/screenlock/LockScreenService;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$2;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$2;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v1

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    #setter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0, v1}, Lcom/anall/screenlock/LockScreenService;->access$3(Lcom/anall/screenlock/LockScreenService;I)V

    .line 224
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$2;->this$0:Lcom/anall/screenlock/LockScreenService;

    const-wide/16 v1, 0x0

    #calls: Lcom/anall/screenlock/LockScreenService;->lockStateChange(J)V
    invoke-static {v0, v1, v2}, Lcom/anall/screenlock/LockScreenService;->access$4(Lcom/anall/screenlock/LockScreenService;J)V

    .line 226
    :cond_0
    return-void
.end method

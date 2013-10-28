.class Lcom/anall/screenlock/LockScreenService$1;
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
    iput-object p1, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x4

    .line 121
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->unLock()V
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$1(Lcom/anall/screenlock/LockScreenService;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    #getter for: Lcom/anall/screenlock/LockScreenService;->mLockState:I
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$0(Lcom/anall/screenlock/LockScreenService;)I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/anall/screenlock/LockScreenService$1;->this$0:Lcom/anall/screenlock/LockScreenService;

    #calls: Lcom/anall/screenlock/LockScreenService;->lock()V
    invoke-static {v0}, Lcom/anall/screenlock/LockScreenService;->access$2(Lcom/anall/screenlock/LockScreenService;)V

    goto :goto_0
.end method

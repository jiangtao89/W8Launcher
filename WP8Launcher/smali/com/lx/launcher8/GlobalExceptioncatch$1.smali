.class Lcom/lx/launcher8/GlobalExceptioncatch$1;
.super Landroid/os/Handler;
.source "GlobalExceptioncatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/GlobalExceptioncatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/GlobalExceptioncatch;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/GlobalExceptioncatch;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/GlobalExceptioncatch$1;->this$0:Lcom/lx/launcher8/GlobalExceptioncatch;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 58
    return-void
.end method

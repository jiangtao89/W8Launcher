.class Lcom/app/common/Activity$1;
.super Landroid/os/Handler;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/Activity;


# direct methods
.method constructor <init>(Lcom/app/common/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/Activity$1;->this$0:Lcom/app/common/Activity;

    .line 176
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 178
    const/4 v0, -0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/app/common/Activity$1;->this$0:Lcom/app/common/Activity;

    invoke-virtual {v0}, Lcom/app/common/Activity;->exec()V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/app/common/Activity$1;->this$0:Lcom/app/common/Activity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, p1}, Lcom/app/common/Activity;->handleMsg(ILandroid/os/Message;)V

    goto :goto_0
.end method

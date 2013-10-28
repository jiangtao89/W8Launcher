.class Lcom/lx/launcher8/image/ImageBrower$3;
.super Ljava/lang/Object;
.source "ImageBrower.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/image/ImageBrower;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/image/ImageBrower;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/image/ImageBrower;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$3;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$3;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
    invoke-static {v0}, Lcom/lx/launcher8/image/ImageBrower;->access$3(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$3;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
    invoke-static {v0}, Lcom/lx/launcher8/image/ImageBrower;->access$3(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

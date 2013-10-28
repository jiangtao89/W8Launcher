.class Lcom/lx/launcher8/view/CustomGallery$2;
.super Ljava/util/TimerTask;
.source "CustomGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/CustomGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/CustomGallery;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/CustomGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/CustomGallery$2;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    .line 39
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery$2;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    #getter for: Lcom/lx/launcher8/view/CustomGallery;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lx/launcher8/view/CustomGallery;->access$0(Lcom/lx/launcher8/view/CustomGallery;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    return-void
.end method

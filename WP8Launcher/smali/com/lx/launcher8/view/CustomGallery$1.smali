.class Lcom/lx/launcher8/view/CustomGallery$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/lx/launcher8/view/CustomGallery$1;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 23
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v1, p0, Lcom/lx/launcher8/view/CustomGallery$1;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CustomGallery;->getSelectedItemPosition()I

    move-result v0

    .line 26
    .local v0, position:I
    iget-object v1, p0, Lcom/lx/launcher8/view/CustomGallery$1;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CustomGallery;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/lx/launcher8/view/CustomGallery$1;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/CustomGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/CustomGallery$1;->this$0:Lcom/lx/launcher8/view/CustomGallery;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/CustomGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/lx/launcher8/image/ImageBrower$2;
.super Ljava/lang/Object;
.source "ImageBrower.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/image/ImageBrower;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/image/ImageBrower;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/image/ImageBrower;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$2;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/image/Image;

    .line 73
    .local v1, image:Lcom/lx/launcher8/image/Image;
    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower$2;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    invoke-virtual {v2}, Lcom/lx/launcher8/image/ImageBrower;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, data:Landroid/content/Intent;
    const-string v2, "dir"

    iget-object v3, v1, Lcom/lx/launcher8/image/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower$2;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/lx/launcher8/image/ImageBrower;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower$2;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    invoke-virtual {v2}, Lcom/lx/launcher8/image/ImageBrower;->finish()V

    goto :goto_0
.end method

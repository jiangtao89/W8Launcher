.class Lcom/lx/launcher8/setting/wp8/IconPickAct$1;
.super Ljava/lang/Object;
.source "IconPickAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/IconPickAct;
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
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/IconPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    .line 86
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
    .line 89
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, obj:Ljava/lang/Object;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "return-data"

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->finish()V

    .line 96
    return-void

    .line 93
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    const-string v2, "extral_info"

    check-cast v1, Ljava/lang/String;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.class Lcom/lx/launcher8/setting/AppPickAct$2;
.super Ljava/lang/Object;
.source "AppPickAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/AppPickAct;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/lx/launcher8/setting/AppPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AppPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    .line 58
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
    .line 61
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    #getter for: Lcom/lx/launcher8/setting/AppPickAct;->mMutiChoose:Z
    invoke-static {v2}, Lcom/lx/launcher8/setting/AppPickAct;->access$0(Lcom/lx/launcher8/setting/AppPickAct;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    #getter for: Lcom/lx/launcher8/setting/AppPickAct;->isShowShortCut:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/AppPickAct;->access$1(Lcom/lx/launcher8/setting/AppPickAct;)I

    move-result v2

    if-lez v2, :cond_1

    if-nez p3, :cond_1

    .line 63
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    #calls: Lcom/lx/launcher8/setting/AppPickAct;->pickShortcut()V
    invoke-static {v2}, Lcom/lx/launcher8/setting/AppPickAct;->access$2(Lcom/lx/launcher8/setting/AppPickAct;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 67
    .local v0, info:Lcom/anall/app/bean/AppInfo;
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extral_info"

    iget-object v3, v0, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/lx/launcher8/setting/AppPickAct;->setResult(ILandroid/content/Intent;)V

    .line 70
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct$2;->this$0:Lcom/lx/launcher8/setting/AppPickAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/AppPickAct;->finish()V

    goto :goto_0
.end method

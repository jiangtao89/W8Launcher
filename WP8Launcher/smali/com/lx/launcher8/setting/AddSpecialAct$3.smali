.class Lcom/lx/launcher8/setting/AddSpecialAct$3;
.super Ljava/lang/Object;
.source "AddSpecialAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/AddSpecialAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AddSpecialAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AddSpecialAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AddSpecialAct$3;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lx/launcher8/setting/AddSpecialAct$3;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_info"

    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct$3;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/lx/launcher8/setting/AddSpecialAct$3;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->setResult(ILandroid/content/Intent;)V

    .line 54
    iget-object v1, p0, Lcom/lx/launcher8/setting/AddSpecialAct$3;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->finish()V

    .line 55
    return-void
.end method

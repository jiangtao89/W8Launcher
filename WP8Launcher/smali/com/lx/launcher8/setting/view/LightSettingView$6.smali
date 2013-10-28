.class Lcom/lx/launcher8/setting/view/LightSettingView$6;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LightSettingView;->onBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LightSettingView;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dc

    if-ne v1, v2, :cond_1

    .line 655
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$3(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    .line 656
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 657
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/LightCell;->setIntentParam(Landroid/content/Intent;)V

    .line 658
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 659
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 664
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 665
    return-void

    .line 660
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dd

    if-ne v1, v2, :cond_0

    .line 661
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 662
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

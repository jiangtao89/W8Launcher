.class Lcom/lx/launcher8/setting/view/WidgetSettingView$7;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/WidgetSettingView;->onBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dc

    if-ne v1, v2, :cond_1

    .line 497
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$3(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->title:Ljava/lang/String;

    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/AppWidgetCell;->setIntentParam(Landroid/content/Intent;)V

    .line 500
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 501
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 506
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 507
    return-void

    .line 502
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dd

    if-ne v1, v2, :cond_0

    .line 503
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 504
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

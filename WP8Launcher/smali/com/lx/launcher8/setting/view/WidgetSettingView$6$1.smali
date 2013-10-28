.class Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/WidgetSettingView$6;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->this$1:Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dc

    if-ne v1, v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->this$1:Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView$6;)Lcom/lx/launcher8/setting/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->this$1:Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView$6;)Lcom/lx/launcher8/setting/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/AppWidgetCell;->setIntentParam(Landroid/content/Intent;)V

    .line 264
    const-string v1, "cell_delete_or_not"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->this$1:Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView$6;)Lcom/lx/launcher8/setting/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 266
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->this$1:Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView$6;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView$6;)Lcom/lx/launcher8/setting/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 268
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$6$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 269
    return-void
.end method

.class Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5$1;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;)Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;)Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/AppWidgetCell;->setIntentParam(Landroid/content/Intent;)V

    .line 249
    const-string v1, "cell_delete_or_not"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;)Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 251
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;)Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 252
    return-void
.end method

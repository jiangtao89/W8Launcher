.class Lcom/lx/launcher8/setting/view/WidgetSettingView$2;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/WidgetSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$1(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/SizePickAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_info"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->getSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

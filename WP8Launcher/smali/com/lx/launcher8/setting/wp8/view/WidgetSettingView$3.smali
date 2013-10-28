.class Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/SizePickAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_info"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->getSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    return-void
.end method

.class Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;
.super Ljava/lang/Object;
.source "AppListSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PAGE"

    const/16 v2, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v1, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "extral_value1"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v1, "extral_state"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0122

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "extral_boolean"

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

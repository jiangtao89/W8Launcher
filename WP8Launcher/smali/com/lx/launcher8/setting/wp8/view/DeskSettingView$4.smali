.class Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;
.super Ljava/lang/Object;
.source "DeskSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0118

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "extral_value1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v2, "extral_state"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0117

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "extral_boolean"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method

.class Lcom/lx/launcher8/setting/view/DeskSettingView$2;
.super Ljava/lang/Object;
.source "DeskSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/DeskSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$0(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PAGE"

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$2(Lcom/lx/launcher8/setting/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "extral_value1"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$2(Lcom/lx/launcher8/setting/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "extral_value2"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$2(Lcom/lx/launcher8/setting/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "special_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

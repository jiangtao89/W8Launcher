.class Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;
.super Ljava/lang/Object;
.source "LockSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0028

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "extral_value1"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v2, "extral_boolean"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$3(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Lcom/anall/screenlock/provider/LockSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

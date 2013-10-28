.class Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v1, "extral_title"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0176

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "extral_text"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0146

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    return-void
.end method

.class Lcom/lx/launcher8/setting/view/DeskSettingView$1;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$0(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "extral_text"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

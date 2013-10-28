.class Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 252
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/AnallApp;

    .line 254
    .local v0, app:Lcom/lx/launcher8/AnallApp;
    const-string v2, "special"

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getPickSpecial()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    return-void
.end method

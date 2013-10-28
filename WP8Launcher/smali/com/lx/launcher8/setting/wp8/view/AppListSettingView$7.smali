.class Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$7;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/AppIndexAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    return-void
.end method

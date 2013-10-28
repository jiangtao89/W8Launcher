.class Lcom/lx/launcher8/setting/view/AppListSettingView$2;
.super Ljava/lang/Object;
.source "AppListSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/AppListSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/AppListSettingView$2;)Lcom/lx/launcher8/setting/view/AppListSettingView;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$0(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/AnallApp;

    .line 108
    .local v0, app:Lcom/lx/launcher8/AnallApp;
    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/view/AppListSettingView$2$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$2$1;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/db/LauncherModel;->freshApps(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

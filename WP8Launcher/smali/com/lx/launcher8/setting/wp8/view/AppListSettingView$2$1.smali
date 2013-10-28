.class Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2$1;
.super Ljava/lang/Object;
.source "AppListSettingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;->access$0(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;)Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;->access$0(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;)Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method

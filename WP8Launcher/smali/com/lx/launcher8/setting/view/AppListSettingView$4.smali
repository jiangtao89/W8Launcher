.class Lcom/lx/launcher8/setting/view/AppListSettingView$4;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$7(Lcom/lx/launcher8/setting/view/AppListSettingView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$0(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a017b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$0(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v1, "extral_text"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a00d3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

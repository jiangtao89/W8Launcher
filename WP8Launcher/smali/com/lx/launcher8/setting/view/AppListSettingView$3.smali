.class Lcom/lx/launcher8/setting/view/AppListSettingView$3;
.super Ljava/lang/Object;
.source "AppListSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 5
    .parameter "v"
    .parameter "enable"

    .prologue
    const v2, 0x7f0a00d2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$2(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 125
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#707070"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 126
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v0

    const-string v1, "#707070"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$4(Lcom/lx/launcher8/setting/view/AppListSettingView;Z)V

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v0

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    const/4 v1, 0x1

    #setter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$4(Lcom/lx/launcher8/setting/view/AppListSettingView;Z)V

    .line 134
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$5(Lcom/lx/launcher8/setting/view/AppListSettingView;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 135
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$2(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$5(Lcom/lx/launcher8/setting/view/AppListSettingView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$2(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$2(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/AppListSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/AppListSettingView;->themeColor:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/AppListSettingView;->access$6(Lcom/lx/launcher8/setting/view/AppListSettingView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    goto :goto_1
.end method

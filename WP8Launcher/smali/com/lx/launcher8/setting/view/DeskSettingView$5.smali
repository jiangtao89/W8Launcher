.class Lcom/lx/launcher8/setting/view/DeskSettingView$5;
.super Ljava/lang/Object;
.source "DeskSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 1
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/DeskSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/DeskSettingView;->access$2(Lcom/lx/launcher8/setting/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setLockLauncherEnable(Z)V

    .line 161
    return-void
.end method

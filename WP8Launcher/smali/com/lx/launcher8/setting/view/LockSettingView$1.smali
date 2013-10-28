.class Lcom/lx/launcher8/setting/view/LockSettingView$1;
.super Ljava/lang/Object;
.source "LockSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LockSettingView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockSettingView;->access$0(Lcom/lx/launcher8/setting/view/LockSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView$1;->this$0:Lcom/lx/launcher8/setting/view/LockSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockSettingView;->access$0(Lcom/lx/launcher8/setting/view/LockSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    goto :goto_0
.end method

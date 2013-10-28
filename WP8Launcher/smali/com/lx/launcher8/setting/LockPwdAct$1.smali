.class Lcom/lx/launcher8/setting/LockPwdAct$1;
.super Ljava/lang/Object;
.source "LockPwdAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/LockPwdAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/LockPwdAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockPwdAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    return-object v0
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 7
    .parameter "v"
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 36
    if-eqz p2, :cond_0

    .line 37
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const-class v3, Lcom/lx/launcher8/setting/PwdSetAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    invoke-virtual {v2, v1, v4}, Lcom/lx/launcher8/setting/LockPwdAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct;->access$0(Lcom/lx/launcher8/setting/LockPwdAct;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 41
    new-instance v0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const v3, 0x7f0e0005

    invoke-direct {v0, v2, v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 42
    .local v0, dialog:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v2, Lcom/lx/launcher8/setting/LockPwdAct$1$1;

    invoke-direct {v2, p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct$1$1;-><init>(Lcom/lx/launcher8/setting/LockPwdAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const v3, 0x7f0a01c4

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const v4, 0x7f0a021e

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;

    const v5, 0x7f0a0077

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->showHitInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    goto :goto_0
.end method

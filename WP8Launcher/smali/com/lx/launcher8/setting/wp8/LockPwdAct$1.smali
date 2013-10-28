.class Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;
.super Ljava/lang/Object;
.source "LockPwdAct.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockPwdAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    return-object v0
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 5
    .parameter "seekButton"
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    const-class v3, Lcom/lx/launcher8/setting/wp8/PwdSetAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    invoke-virtual {v2, v1, v4}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 54
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    invoke-direct {v0, v2}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, dialog:Lcom/lx/launcher8/view/PopupDialog;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    const v3, 0x7f0a021e

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/PopupDialog;->setEditTextVisible(Z)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    const v4, 0x7f0a0077

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;

    invoke-direct {v4, p0, v0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;Lcom/lx/launcher8/view/PopupDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    .line 70
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    goto :goto_0
.end method

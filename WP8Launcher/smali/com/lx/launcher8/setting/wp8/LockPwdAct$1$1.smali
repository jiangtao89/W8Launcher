.class Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;
.super Ljava/lang/Object;
.source "LockPwdAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

.field private final synthetic val$dialog:Lcom/lx/launcher8/view/PopupDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;Lcom/lx/launcher8/view/PopupDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->val$dialog:Lcom/lx/launcher8/view/PopupDialog;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->val$dialog:Lcom/lx/launcher8/view/PopupDialog;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PopupDialog;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->access$1(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)Lcom/anall/screenlock/provider/LockSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    new-instance v1, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v2

    const v3, 0x7f0a0236

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v2

    const v3, 0x7f0a0228

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->access$1(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)Lcom/anall/screenlock/provider/LockSetting;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/anall/screenlock/provider/LockSetting;->setPwd(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 67
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockPwdAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;)Lcom/lx/launcher8/setting/wp8/LockPwdAct;

    move-result-object v1

    #calls: Lcom/lx/launcher8/setting/wp8/LockPwdAct;->setPwdState(Z)V
    invoke-static {v1, v3}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->access$2(Lcom/lx/launcher8/setting/wp8/LockPwdAct;Z)V

    goto :goto_0
.end method

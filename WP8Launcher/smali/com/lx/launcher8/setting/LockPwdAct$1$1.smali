.class Lcom/lx/launcher8/setting/LockPwdAct$1$1;
.super Ljava/lang/Object;
.source "LockPwdAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/LockPwdAct$1;->onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

.field private final synthetic val$dialog:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockPwdAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->val$dialog:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 45
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->val$dialog:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0900dc

    if-ne v2, v3, :cond_1

    .line 47
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->val$dialog:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->getEditTextValue()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct;->access$1(Lcom/lx/launcher8/setting/LockPwdAct;)Lcom/anall/screenlock/provider/LockSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v2

    const v3, 0x7f0e0005

    invoke-direct {v0, v2, v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 50
    .local v0, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v2, Lcom/lx/launcher8/setting/LockPwdAct$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct$1$1$1;-><init>(Lcom/lx/launcher8/setting/LockPwdAct$1$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v2

    const v3, 0x7f0a01c4

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v3

    const v4, 0x7f0a0236

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v4

    const v5, 0x7f0a0228

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 57
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 64
    .end local v0           #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct;->access$1(Lcom/lx/launcher8/setting/LockPwdAct;)Lcom/anall/screenlock/provider/LockSetting;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/anall/screenlock/provider/LockSetting;->setPwd(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct;->access$0(Lcom/lx/launcher8/setting/LockPwdAct;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 62
    iget-object v2, p0, Lcom/lx/launcher8/setting/LockPwdAct$1$1;->this$1:Lcom/lx/launcher8/setting/LockPwdAct$1;

    #getter for: Lcom/lx/launcher8/setting/LockPwdAct$1;->this$0:Lcom/lx/launcher8/setting/LockPwdAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/LockPwdAct$1;->access$0(Lcom/lx/launcher8/setting/LockPwdAct$1;)Lcom/lx/launcher8/setting/LockPwdAct;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/LockPwdAct;->setPwdState(Z)V

    goto :goto_0
.end method

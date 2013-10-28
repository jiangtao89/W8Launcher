.class Lcom/lx/launcher8/setting/FolderSettingAct$6;
.super Ljava/lang/Object;
.source "FolderSettingAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/FolderSettingAct;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/FolderSettingAct;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dc

    if-ne v1, v2, :cond_1

    .line 555
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$4(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 558
    const-string v1, "extral_page"

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->whichWay:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$5(Lcom/lx/launcher8/setting/FolderSettingAct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/FolderSettingAct;->setResult(ILandroid/content/Intent;)V

    .line 560
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->finish()V

    .line 565
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 566
    return-void

    .line 561
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dd

    if-ne v1, v2, :cond_0

    .line 562
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->setResult(I)V

    .line 563
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$6;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->finish()V

    goto :goto_0
.end method

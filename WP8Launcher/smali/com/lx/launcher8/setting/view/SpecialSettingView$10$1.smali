.class Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dc

    if-ne v1, v2, :cond_0

    .line 360
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$3(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 362
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/ItemCell;->setIntentParam(Landroid/content/Intent;)V

    .line 363
    const-string v1, "cell_delete_or_not"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 365
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->this$1:Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 367
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 368
    return-void
.end method

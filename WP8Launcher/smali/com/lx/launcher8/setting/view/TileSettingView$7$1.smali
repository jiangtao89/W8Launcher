.class Lcom/lx/launcher8/setting/view/TileSettingView$7$1;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/TileSettingView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/TileSettingView$7;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    iput-object p2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900dc

    if-ne v1, v2, :cond_0

    .line 305
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView$7;)Lcom/lx/launcher8/setting/view/TileSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView$7;)Lcom/lx/launcher8/setting/view/TileSettingView;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$3(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView$7;)Lcom/lx/launcher8/setting/view/TileSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView$7;)Lcom/lx/launcher8/setting/view/TileSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/AppCell;->setIntentParam(Landroid/content/Intent;)V

    .line 308
    const-string v1, "cell_delete_or_not"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView$7;)Lcom/lx/launcher8/setting/view/TileSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 310
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView$7;)Lcom/lx/launcher8/setting/view/TileSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 312
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$7$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 313
    return-void
.end method

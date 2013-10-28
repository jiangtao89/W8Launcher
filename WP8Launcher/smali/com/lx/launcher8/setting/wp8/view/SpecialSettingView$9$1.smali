.class Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9$1;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;)Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 341
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;)Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/ItemCell;->setIntentParam(Landroid/content/Intent;)V

    .line 342
    const-string v1, "cell_delete_or_not"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;)Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 344
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;)Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 345
    return-void
.end method

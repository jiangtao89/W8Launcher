.class Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7$1;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;)Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    move-result-object v1

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;)Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    move-result-object v1

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/AppCell;->setIntentParam(Landroid/content/Intent;)V

    .line 300
    const-string v1, "cell_delete_or_not"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;)Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    move-result-object v1

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 302
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;->access$0(Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;)Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    move-result-object v1

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 303
    return-void
.end method

.class Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->onBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/AppCell;->setIntentParam(Landroid/content/Intent;)V

    .line 664
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 665
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 666
    return-void
.end method

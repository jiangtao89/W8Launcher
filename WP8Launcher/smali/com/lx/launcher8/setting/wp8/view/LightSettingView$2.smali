.class Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->onBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/LightCell;->setIntentParam(Landroid/content/Intent;)V

    .line 329
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 330
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 331
    return-void
.end method

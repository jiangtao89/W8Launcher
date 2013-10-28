.class Lcom/lx/launcher8/setting/wp8/view/LightSettingView$3;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 337
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 338
    return-void
.end method

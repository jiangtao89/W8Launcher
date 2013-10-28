.class Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->initData()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text_color"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v2, v2, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v1, "text_gravity"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/LightCell;->getTextGravity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v1, "text_name"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/LightCell;->getFunction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 453
    const-string v1, "special_fun_text_type"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/LightCell;->getTextDisplayType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 456
    return-void
.end method

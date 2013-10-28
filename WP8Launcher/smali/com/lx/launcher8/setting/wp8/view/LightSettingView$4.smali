.class Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

.field private final synthetic val$cancelBtnText:Landroid/widget/TextView;

.field private final synthetic val$confirmBtnText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$confirmBtnText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$cancelBtnText:Landroid/widget/TextView;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 378
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 383
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cell_delete_or_not"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :goto_2
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 390
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

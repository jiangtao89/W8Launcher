.class Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

.field private final synthetic val$cancelBtnText:Landroid/widget/TextView;

.field private final synthetic val$confirmBtnText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$confirmBtnText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$cancelBtnText:Landroid/widget/TextView;

    .line 149
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

    .line 153
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cell_delete_or_not"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$3(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_2
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$3(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$3(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$3(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

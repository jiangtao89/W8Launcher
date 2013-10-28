.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

.field private final synthetic val$cancelBtnText:Landroid/widget/TextView;

.field private final synthetic val$confirmBtnText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$confirmBtnText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$cancelBtnText:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 143
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_1
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$confirmBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;->val$cancelBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

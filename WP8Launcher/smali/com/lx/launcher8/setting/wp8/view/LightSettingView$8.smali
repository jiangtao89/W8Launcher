.class Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;)Lcom/lx/launcher8/setting/wp8/view/LightSettingView;
    .locals 1
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 514
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0133

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 533
    return-void
.end method

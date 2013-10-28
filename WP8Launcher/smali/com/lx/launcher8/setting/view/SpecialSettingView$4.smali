.class Lcom/lx/launcher8/setting/view/SpecialSettingView$4;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/SpecialSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 253
    .local v0, alpha:I
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 254
    const-string v2, "extral_value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 256
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 257
    const-string v2, "extral_value1"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v0

    .line 259
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 260
    const-string v2, "extral_value2"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    return-void
.end method

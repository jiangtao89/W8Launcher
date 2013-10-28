.class Lcom/lx/launcher8/setting/view/TileSettingView$4;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/TileSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/TileSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 249
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaBg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 252
    .local v0, alpha:I
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 253
    const-string v2, "extral_value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaFg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 255
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 256
    const-string v2, "extral_value1"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getTextAlpha()I

    move-result v0

    .line 258
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 259
    const-string v2, "extral_value2"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$4;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    return-void
.end method

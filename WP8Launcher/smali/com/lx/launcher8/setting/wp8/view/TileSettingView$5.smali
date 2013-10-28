.class Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->initData()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 251
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaBg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 254
    .local v0, alpha:I
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 255
    const-string v2, "extral_value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaFg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 257
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 258
    const-string v2, "extral_value1"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getTextAlpha()I

    move-result v0

    .line 260
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 261
    const-string v2, "extral_value2"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

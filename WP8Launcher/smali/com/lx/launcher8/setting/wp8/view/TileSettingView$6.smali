.class Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PAGE"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v1, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getFunction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v1, "extral_value1"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getTextDisplayType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;->this$0:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    return-void
.end method

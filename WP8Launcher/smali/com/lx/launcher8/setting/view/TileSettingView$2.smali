.class Lcom/lx/launcher8/setting/view/TileSettingView$2;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/TextStylePickAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text_color"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v1, "text_gravity"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getTextGravity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/AppCell;->getFunction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 205
    const-string v1, "special_fun_text_type"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppCell;->getTextDisplayType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/TileSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

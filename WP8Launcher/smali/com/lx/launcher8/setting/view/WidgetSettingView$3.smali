.class Lcom/lx/launcher8/setting/view/WidgetSettingView$3;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/WidgetSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 216
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$1(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->getCellAlphaBg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 219
    .local v0, alpha:I
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 220
    const-string v2, "extral_value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->getCellAlphaFg()I

    move-result v2

    rsub-int v0, v2, 0xff

    .line 222
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 223
    const-string v2, "extral_value1"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->getTextAlpha()I

    move-result v0

    .line 225
    mul-int/lit8 v2, v0, 0x64

    div-int/lit16 v0, v2, 0xff

    .line 226
    const-string v2, "extral_value2"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;->this$0:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method

.class Lcom/lx/launcher8/setting/view/SpecialSettingView$2;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

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

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/TextStylePickAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text_color"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v1, "text_gravity"

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method

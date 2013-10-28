.class Lcom/lx/launcher8/setting/TextStylePickAct$3;
.super Ljava/lang/Object;
.source "TextStylePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/TextStylePickAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/TextStylePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/TextStylePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const-class v2, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "extral_text"

    iget-object v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const v3, 0x7f0a012a

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    return-void
.end method

.class Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;
.super Ljava/lang/Object;
.source "TextStylePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    const-class v2, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "extral_text"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    const v3, 0x7f0a012a

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "extral_title"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    const v3, 0x7f0a0050

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method

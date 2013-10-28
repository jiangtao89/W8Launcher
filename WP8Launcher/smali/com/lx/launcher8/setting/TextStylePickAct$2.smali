.class Lcom/lx/launcher8/setting/TextStylePickAct$2;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const-class v2, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PAGE"

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v1, "extral_value"

    iget-object v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    #getter for: Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->access$1(Lcom/lx/launcher8/setting/TextStylePickAct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$2;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    return-void
.end method

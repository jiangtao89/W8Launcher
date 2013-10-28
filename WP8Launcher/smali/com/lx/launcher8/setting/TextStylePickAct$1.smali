.class Lcom/lx/launcher8/setting/TextStylePickAct$1;
.super Ljava/lang/Object;
.source "TextStylePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/TextStylePickAct;->initView()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$1;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$1;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, data:Landroid/content/Intent;
    const-string v1, "text_color"

    iget-object v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct$1;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    #getter for: Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->access$0(Lcom/lx/launcher8/setting/TextStylePickAct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "text_gravity"

    iget-object v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct$1;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    #getter for: Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->access$1(Lcom/lx/launcher8/setting/TextStylePickAct;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$1;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->setResult(ILandroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$1;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->finish()V

    .line 77
    return-void
.end method

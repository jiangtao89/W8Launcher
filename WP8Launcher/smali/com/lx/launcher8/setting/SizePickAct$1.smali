.class Lcom/lx/launcher8/setting/SizePickAct$1;
.super Ljava/lang/Object;
.source "SizePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/SizePickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SizePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SizePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SizePickAct$1;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    .local v0, index:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/SizePickAct$1;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/SizePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 59
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extral_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    iget-object v2, p0, Lcom/lx/launcher8/setting/SizePickAct$1;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/lx/launcher8/setting/SizePickAct;->setResult(ILandroid/content/Intent;)V

    .line 61
    iget-object v2, p0, Lcom/lx/launcher8/setting/SizePickAct$1;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/SizePickAct;->finish()V

    .line 62
    return-void
.end method

.class Lcom/lx/launcher8/setting/SizePickAct$2;
.super Ljava/lang/Object;
.source "SizePickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SizePickAct;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/SizePickAct$2;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/SizePickAct$2;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/SizePickAct;->setResult(I)V

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/SizePickAct$2;->this$0:Lcom/lx/launcher8/setting/SizePickAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/SizePickAct;->finish()V

    .line 34
    return-void
.end method

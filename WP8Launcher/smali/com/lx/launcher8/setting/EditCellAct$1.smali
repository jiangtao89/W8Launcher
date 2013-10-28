.class Lcom/lx/launcher8/setting/EditCellAct$1;
.super Ljava/lang/Object;
.source "EditCellAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/EditCellAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/EditCellAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/EditCellAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/EditCellAct$1;->this$0:Lcom/lx/launcher8/setting/EditCellAct;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct$1;->this$0:Lcom/lx/launcher8/setting/EditCellAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/EditCellAct;->setResult(I)V

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct$1;->this$0:Lcom/lx/launcher8/setting/EditCellAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/EditCellAct;->finish()V

    .line 48
    return-void
.end method

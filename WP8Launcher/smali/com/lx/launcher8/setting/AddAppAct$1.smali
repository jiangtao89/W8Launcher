.class Lcom/lx/launcher8/setting/AddAppAct$1;
.super Ljava/lang/Object;
.source "AddAppAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/AddAppAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AddAppAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AddAppAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AddAppAct$1;->this$0:Lcom/lx/launcher8/setting/AddAppAct;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct$1;->this$0:Lcom/lx/launcher8/setting/AddAppAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/AddAppAct;->setResult(I)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct$1;->this$0:Lcom/lx/launcher8/setting/AddAppAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/AddAppAct;->finish()V

    .line 42
    return-void
.end method

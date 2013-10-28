.class Lcom/lx/launcher8/setting/AddWidgetAct$1;
.super Ljava/lang/Object;
.source "AddWidgetAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/AddWidgetAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AddWidgetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AddWidgetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AddWidgetAct$1;->this$0:Lcom/lx/launcher8/setting/AddWidgetAct;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct$1;->this$0:Lcom/lx/launcher8/setting/AddWidgetAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/AddWidgetAct;->setResult(I)V

    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct$1;->this$0:Lcom/lx/launcher8/setting/AddWidgetAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/AddWidgetAct;->finish()V

    .line 39
    return-void
.end method
